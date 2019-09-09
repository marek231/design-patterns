# frozen_string_liteal: true

class Strategy
  def do_algorithm(_data)
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end
