# frozen_string_literal: true

require_relative 'monkey_handler'
require_relative 'squirrel_handler'
require_relative 'dog_handler'

def client_code(handler)
  ['Nut', 'Banana', 'Cup of coffee'].each do |food|
    puts "Client: Who wants a #{food}?"
    result = handler.handle(food)
    if result
      puts " #{result}"
    else
      puts " #{food} was left untouched."
    end
  end
end

monkey = MonkeyHandler.new
squirrel = SquirrelHandler.new
dog = DogHandler.new

monkey.next_handler(squirrel).next_handler(dog)

puts 'Chain: Monkey > Squirrel > Dog'
client_code(monkey)
puts "\n\n"

puts 'Subchain: Squirrel > Dog'
client_code(squirrel)
