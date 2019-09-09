# frozen_string_literal: true

require_relative 'visitor'

class ConcreteVisitor2 < Visitor
  def visit_concrete_component_a(element)
    puts "#{element.exclusive_method_of_a} + #{self.class}"
  end

  def visit_concrete_component_b(element)
    puts "#{element.special_method_of_b} + #{self.class}"
  end
end
