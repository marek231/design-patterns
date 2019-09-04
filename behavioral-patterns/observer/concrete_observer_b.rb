# frozen_string_literal: true

require_relative 'observer'

class ConcreteObserverB < Observer
  def update(subject)
    return unless subject.state.zero? || subject.state >= 2

    puts 'ConcreteObserverB: Reacted to the event'
  end
end
