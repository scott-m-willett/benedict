require 'json'
require './lib/benedict_lib.rb'

if ARGV[0]

# Dictionary words are placed into this array
words = []

# Generated passwords are pushed into this array, and eventually written to disk
passwords = []

# For interacting with the dictionary file
dictionary = File.open("./dictionaries/#{ARGV[0]}.json")

# Parse the dictionary into ruby hashes and arrays
words = JSON.parse(dictionary.read)
words = words.keys

words = Benedict.generate words
Benedict.save words

else
  puts 'Please specify a dictionary name (webster)'
end
