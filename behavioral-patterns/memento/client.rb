# frozen_string_literal: true

require_relative 'originator'
require_relative 'caretaker'

originator = Originator.new('Super-duper-super-puper-super.')
caretaker = Caretaker.new(originator)

caretaker.backup
originator.do_something

caretaker.backup
originator.do_something

caretaker.backup
originator.do_something

caretaker.show_history

puts "\nClient: Now, let's rollback!"
caretaker.undo

puts "\nClient: Once more!"
caretaker.undo
