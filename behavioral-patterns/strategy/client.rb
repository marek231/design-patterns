# frozen_string_literal: true

require_relative 'context'
require_relative 'concrete_strategy_a'
require_relative 'concrete_strategy_b'

context = Context.new(ConcreteStrategyA.new)
puts 'Client: Strategy is set to normal sorting.'
context.do_some_business_logic
puts "\n\n"

puts 'Client: Strategy is set to reverse sorting.'
context.strategy = ConcreteStrategyB.new
context.do_some_business_logic
