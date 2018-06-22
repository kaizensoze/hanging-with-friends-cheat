#!/usr/bin/env ruby

wrong_letters = ARGV[1]

word_to_match_arg = ARGV[0]
word_to_match = word_to_match_arg.gsub('_', '.')
word_to_match = word_to_match.gsub('?', '.')
word_to_match = word_to_match.gsub('.', "[^#{wrong_letters}]") if wrong_letters

blah = File.readlines('words.txt').grep(/^#{word_to_match}$/i)
blah.each do |w|
  if (w.length - 1) == word_to_match_arg.length
    puts w
  end
end
