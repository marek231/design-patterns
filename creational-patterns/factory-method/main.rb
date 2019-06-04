class Creator
  def factory_method
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  def some_operation
    product = factory_method
    result = "Creator: The same creator's code has just worked with #{product.operation}"
    result
  end
end

class ConcreteCreator1 < Creator
  def factory_method
    ConcreteProduct1.new
  end
end

class ConcreteCreator2 < Creator
  def factory_method
    ConcreteProduct2.new
  end
end

class Product
  # @return [String]
  def operation
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end

class ConcreteProduct1 < Product
  # @return [String]
  def operation
    '{Result of ConcreteProduct1}'
  end
end

class ConcreteProduct2 < Product
  # @return [String]
  def operation
    '{Result of ConcreteProduct2}'
  end
end

def client_code(creator)
  puts "Client: I'm not aware of the creator's class, but it still works.\n"\
"#{creator.some_operation}"
end

def main
  puts "App: Launched with the ConcreteCreator1..."
  client_code(ConcreteCreator1.new)

  puts '-' * 32

  puts 'App: Launched with the ConcreteCreator2...'
  client_code(ConcreteCreator2.new)
end

main if $PROGRAM_NAME == __FILE__