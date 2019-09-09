# frozen_string_literal: true

require_relative 'component'

class ConcreteComponentA < Component
  def accept(visitor)
    visitor.visit_concrete_component_a(self)
  end

  def exclusive_method_of_a
    'A'
  end
end
