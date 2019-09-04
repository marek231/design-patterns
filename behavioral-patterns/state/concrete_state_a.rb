# frozen_string_literal: true

require_relative 'state'
require_relative 'concrete_state_b'

class ConcreteStateA < State
  def handle1
    puts 'ConcreteStateA handles request1.'
    puts 'ConcreteStateA wants to change the state of the context.'
    @context.transition_to(ConcreteStateB.new)
  end

  def handle2
    puts 'ConcreteStateA handles request2.'
  end
end
