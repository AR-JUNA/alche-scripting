#!/usr/bin/ruby

input = ARGV[0]
regex = /\A\s*(\d{3}[-.\s]?\d{3}[-.\s]?\d{4}|\d{10})\s*\z/
match = regex.match(input)

if match
  puts match[1]  # Print the captured group (the 10-digit phone number)
else
  puts "No match"
end
