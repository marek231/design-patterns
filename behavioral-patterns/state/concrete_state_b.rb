# frozen_string_literal: true

require_relative 'state'
require_relative 'concrete_state_a'

class ConcreteStateB < State
  def handle1
    puts 'ConcreteStateB handles request1.'
  end

  def handle2
    puts 'ConcreteStateB handles request2.'
    puts 'ConcreteStateB wants to change the state of the context.'
    @context.transition_to(ConcreteStateA.new)
  end
end
