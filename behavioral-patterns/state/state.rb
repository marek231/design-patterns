# frozen_string_literal: true

class State
  attr_accessor :context

  def handle1
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  def handle2
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end
