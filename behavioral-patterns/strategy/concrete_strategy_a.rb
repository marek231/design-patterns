# frozen_string_literal: true

require_relative 'strategy'

class ConcreteStrategyA < Strategy
  def do_algorithm(data)
    data.sort
  end
end
