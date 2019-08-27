# frozen_string_literal: true

require_relative 'base_component'

class ComponentBar < BaseComponent
  def do_c
    puts 'Component Bar does C.'
    @mediator&.notify(self, 'C')
  end

  def do_d
    puts 'Component Bar does D.'
    @mediator&.notify(self, 'D')
  end
end
