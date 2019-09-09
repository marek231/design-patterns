# frozen_string_literal: true

require_relative 'simple_command'
require_relative 'complex_command'

class Invoker
  attr_accessor :on_start, :on_finish

  def do_something_important
    puts 'Invoker: Does anybody want something done before I begin?'
    @on_start.execute if @on_start.is_a? Command

    puts 'Invoker: ...doing something really important...'

    puts 'Invoker: Does anybody want something done after I finish?'
    @on_finish.execute if @on_finish.is_a? Command
  end
end
