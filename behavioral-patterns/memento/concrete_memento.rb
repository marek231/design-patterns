# frozen_string_literal: true

require_relative 'memento'

class ConcreteMemento < Memento
  attr_reader :state, :date

  def initialize(state)
    @state = state
    @date = Time.now.strftime('%F %T')
  end

  def name
    "#{@date} / (#{@state[0, 9]}..."
  end
end
