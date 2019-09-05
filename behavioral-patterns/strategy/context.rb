# frozen_string_literal: true

class Context
  attr_accessor :strategy

  def initialize(strategy)
    @strategy = strategy
  end

  def do_some_business_logic
    puts "Sorting data using the strategy (not sure how it'll do it)"
    result = @strategy.do_algorithm(%w[a b c d e])
    puts result.join(',')
  end
end
