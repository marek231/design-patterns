# frozen_string_literal: true

require_relative 'component_foo'
require_relative 'component_bar'
require_relative 'concrete_mediator'

foo = ComponentFoo.new
bar = ComponentBar.new
ConcreteMediator.new(foo, bar)

puts 'Client triggers operation A.'
foo.do_a

puts 'Client triggers operation D.'
bar.do_d
