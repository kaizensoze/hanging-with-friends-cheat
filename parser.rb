
require 'rubygems'
require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open("http://www.becomeawordgameexpert.com/dictionary.htm"))
words = doc.css("font")[1].text.strip

File.open('words.txt', 'w') do |f|
  words.split.each do |word|
    f.puts(word)
  end
end
