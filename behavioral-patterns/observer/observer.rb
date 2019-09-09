# frozen_string_literal: true

# This declares the update method, used by subjects.
class Observer
  def update(_subject)
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end