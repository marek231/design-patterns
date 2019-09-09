# frozen_string_literal: true

class AbstractClass
  def template_method
    base_operation1
    required_operations1
    base_operation2
    hook1
    required_operations2
    base_operation3
    hook2
  end

  def base_operation1
    puts 'AbstractClass says: I am doing the bulk of the work.'
  end

  def base_operation2
    puts 'AbstractClass says: But I let subclasses override some operations.'
  end

  def base_operation3
    puts 'AbstractClass says: But I am doing the bulk of the work anyway.'
  end

  def required_operations1
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  def required_operations2
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  def hook1; end

  def hook2; end
end
