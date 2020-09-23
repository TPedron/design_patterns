require_relative "book.rb"
require_relative "book_proxy.rb"

book = BookProxy.new

puts "Book contents loaded on BookProxy instantiation? #{!book.book.nil?}"
puts book.contents
puts "Book contents loaded? #{!book.book.nil?}"
puts book.word_count
puts book.character_count

# OUTPUT
# Book contents loaded on BookProxy instantiation? false
# The Expanse 9 - Leviathan Falls 
# Chapter 1 
# Jim Holden ate the Protomolecule...
# Book contents loaded? true
# 12
# 79