# frozen_string_literal: true

class Receiver
  def do_something(task_a)
    puts "Receiver: Working on (#{task_a})"
  end

  def do_something_else(task_b)
    puts "Receiver: Also working on (#{task_b})"
  end
end
