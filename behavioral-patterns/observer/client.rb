# frozen_string_literal: true

require_relative 'concrete_subject'
require_relative 'concrete_observer_a'
require_relative 'concrete_observer_b'

subject = ConcreteSubject.new

observer_a = ConcreteObserverA.new
subject.attach(observer_a)

observer_b = ConcreteObserverB.new
subject.attach(observer_b)

subject.some_business_logic
subject.some_business_logic

subject.detach(observer_a)

subject.some_business_logic
