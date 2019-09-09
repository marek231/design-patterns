# frozen_string_literal: true

require_relative 'strategy'

class ConcreteStrategyB < Strategy
  def do_algorithm(data)
    data.sort.reverse
  end
end
