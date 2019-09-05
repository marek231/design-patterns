# frozen_string_literal: true

require_relative 'concrete_class1'
require_relative 'concrete_class2'

def client_code(abstract_class)
  abstract_class.template_method
end

puts 'Same client code can work with different subclasses:'
client_code(ConcreteClass1.new)

puts "\n\n"

puts 'Same client code can work with different subclasses:'
client_code(ConcreteClass2.new)
