# frozen_string_literal: true

require_relative 'base_component'

class ComponentFoo < BaseComponent
  def do_a
    puts 'Component Foo does A.'
    @mediator&.notify(self, 'A')
  end

  def do_b
    puts 'Component Foo does B.'
    @mediator&.notify(self, 'B')
  end
end
