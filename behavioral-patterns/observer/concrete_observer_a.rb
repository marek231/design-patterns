# frozen_string_literal: true

require_relative 'observer'

class ConcreteObserverA < Observer
  def update(subject)
    puts 'ConcreteObserverA: Reacted to the event' if subject.state < 3
  end
end
