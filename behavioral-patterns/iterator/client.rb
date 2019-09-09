# frozen_string_literal: true

require_relative 'words_collection'

collection = WordsCollection.new
collection.add_item('First')
collection.add_item('Second')
collection.add_item('Third')

puts 'Straight traversal:'
collection.iterator.each { |item| puts item }

puts 'Reverse traversal:'
collection.reverse_iterator.each { |item| puts item }
