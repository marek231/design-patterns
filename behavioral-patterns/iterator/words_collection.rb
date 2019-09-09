# frozen_string_literal: true

require_relative 'alphabetical_order_iterator'

class WordsCollection
  def initialize(collection = [])
    @collection = collection
  end

  def iterator
    AlphabeticalOrderIterator.new(@collection)
  end

  def reverse_iterator
    AlphabeticalOrderIterator.new(@collection, true)
  end

  def add_item(item)
    @collection << item
  end

  private

  attr_accessor :collection
end
