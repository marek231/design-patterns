# frozen_string_literal: true

class Context
  def initialize(state)
    transition_to(state)
  end

  def transition_to(state)
    puts "Context: Transition to #{state.class}"
    @state = state
    @state.context = self
  end

  def request1
    @state.handle1
  end

  def request2
    @state.handle2
  end

  private

  attr_accessor :state
end
