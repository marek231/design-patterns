# frozen_string_literal: true

require_relative 'concrete_component_a'
require_relative 'concrete_component_b'
require_relative 'concrete_visitor1'
require_relative 'concrete_visitor2'

def client_code(components, visitor)
  # ...
  components.each do |component|
    component.accept(visitor)
  end
  # ...
end

components = [ConcreteComponentA.new, ConcreteComponentB.new]

puts 'THe client code works with all visitors via the base Visitor interface:'
visitor1 = ConcreteVisitor1.new
client_code(components, visitor1)

puts 'It allows the same client code to work with different types of visitors:'
visitor2 = ConcreteVisitor2.new
client_code(components, visitor2)
