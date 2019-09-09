# frozen_string_literal: true

require_relative 'component'

class ConcreteComponentB < Component
  def accept(visitor)
    visitor.visit_concrete_component_b(self)
  end

  def special_method_of_b
    'B'
  end
end
