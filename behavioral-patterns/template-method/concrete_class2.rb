# frozen_string_literal: true

require_relative 'abstract_class'

class ConcreteClass2 < AbstractClass
  def required_operations1
    puts 'ConcreteClass2 says: Implemented Operations1.'
  end

  def required_operations2
    puts 'ConcreteClass2 says: Implemented Operations2.'
  end

  def hook1
    puts 'ConcreteClass2 says: Overridden Hook1.'
  end
end
