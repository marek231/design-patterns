# frozen_string_literal: true

class AlphabeticalOrderIterator
  include Enumerable

  def initialize(collection, reverse = false)
    @collection = collection
    @reverse = reverse
  end

  def each(&block)
    return @collection.reverse.each(&block) if reverse

    @collection.each(&block)
  end

  private

  attr_accessor :reverse
  attr_accessor :collection
end
