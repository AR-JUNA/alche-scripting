#!/usr/bin/env ruby
# 0-simply_match_school.rb
# Accepts one argument and prints every occurrence of "School"

input = ARGV[0] || ""
matches = input.scan(/School/)
# join all matches back-to-back (if there are multiple)
puts matches.join
