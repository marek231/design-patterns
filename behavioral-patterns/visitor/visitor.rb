# frozen_string_literal: true

class Visitor
  def visit_concrete_component_a(_element)
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  def visit_concrete_component_b(_element)
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end
