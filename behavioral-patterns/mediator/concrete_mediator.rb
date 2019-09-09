# frozen_string_literal: true

require_relative 'mediator'

class ConcreteMediator < Mediator
  def initialize(component_foo, component_bar)
    @component_foo = component_foo
    @component_foo.mediator = self
    @component_bar = component_bar
    @component_bar.mediator = self
  end

  def notify(_sender, event)
    if event == 'A'
      puts 'Mediator reacts on A and triggers following operations:'
      @component_bar.do_c
    elsif event == 'D'
      puts 'Mediator reacts on D and triggers following operations:'
      @component_foo.do_b
      @component_bar.do_c
    end
  end
end
