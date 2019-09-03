# frozen_string_literal: true

require_relative 'concrete_memento'

class Originator
  def initialize(state)
    @state = state
    puts "Originator: My initial state is: #{@state}"
  end

  def do_something
    puts "Originator: I'm doing something important"
    @state = generate_random_string(30)
    puts "Originator: and my state has changed to #{@state}"
  end

  def save
    ConcreteMemento.new(@state)
  end

  def restore(memento)
    @state = memento.state
    puts "Originator: My state has changed to: #{@state}"
  end

  private

  attr_accessor :state

  def generate_random_string(length = 10)
    ascii_letters = [*'a'..'z', *'A'..'Z']
    (0...length).map { ascii_letters.sample }.join
  end
end
