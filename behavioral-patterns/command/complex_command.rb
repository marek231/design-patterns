# frozen_string_literal: true

require_relative 'command'

class ComplexCommand < Command
  def initialize(receiver, task_a, task_b)
    @receiver = receiver
    @task_a = task_a
    @task_b = task_b
  end

  def execute
    puts 'ComplexCommand: Complex stuff should be done by a receiver object'
    @receiver.do_something(@task_a)
    @receiver.do_something_else(@task_b)
  end
end
