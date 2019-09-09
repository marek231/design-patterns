# frozen_string_literal: true

require_relative 'context'
require_relative 'concrete_state_a'

context = Context.new(ConcreteStateA.new)
context.request1
context.request2
