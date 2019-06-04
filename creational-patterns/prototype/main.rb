class Prototype
  attr_accessor :primitive, :component, :circular_reference

  def initialize
    @primitive = nil
    @component = nil
    @circular_reference = nil
  end

  # @return [Prototype]
  def clone
    @component = deep_copy(@component)
    @circular_reference = deep_copy(@circular_reference)
    @circular_reference.prototype = self
    deep_copy(self)
  end

  private

  def deep_copy(object)
    Marshal.load(Marshal.dump(object))
  end
end

class ComponentWithBackReference
  attr_accessor :prototype

  # @param [Prototype] prototype
  def initialize(prototype)
    @prototype = prototype
  end
end

def client_code
  p1 = Prototype.new
  p1.primitive = 245
  p1.component = Time.now
  p1.circular_reference = ComponentWithBackReference.new(p1)

  p2 = p1.clone

  if p1.primitive == p2.primitive
    puts 'Primitive field values have been carried over to a clone...'
  else
    puts 'Primitive field values have not been copied...'
  end

  if p1.component.equal? p2.component
    puts 'Simple component has not been cloned...'
  else
    puts 'Simple component has been cloned...'
  end

  if p1.circular_reference.equal? p2.circular_reference
    puts 'Component with back reference has not been cloned...'
  else
    puts 'Component with back reference has been cloned...'
  end

  if p1.circular_reference.prototype.equal? p2.circular_reference.prototype
    puts 'Component with back reference is linked to original object...'
  else
    puts 'Component with back reference is linked to the clone...'
  end
end

def main
  client_code
end

main if $PROGRAM_NAME == __FILE__