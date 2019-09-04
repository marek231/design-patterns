# frozen_string_literal: true

require_relative 'subject'

# The Subject owns some important state and will notify observers whenever the
# state changes.
class ConcreteSubject < Subject
  attr_accessor :state

  def initialize
    @observers = []
  end

  def attach(observer)
    puts 'Subject: Attached an observer'
    @observers << observer
  end

  def detach(observer)
    @observers.delete(observer)
  end

  def notify
    puts 'Notifying observers...'
    @observers.each { |observer| observer.update(self) }
  end

  def some_business_logic
    puts "\nSubject: I'm doing something important."
    @state = rand(0..10)

    puts "Subject: My state has just changed to: #{@state}"
    notify
  end
end
