# frozen_string_literal: true

require_relative 'abstract_class'

class ConcreteClass1 < AbstractClass
  def required_operations1
    puts 'ConcreteClass1 says: Implemented Operation1.'
  end

  def required_operations2
    puts 'ConcreteClass1 says: Implemented Operation2.'
  end
end
