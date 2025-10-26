#!/usr/bin/env ruby
# 2-repetition_token_1.rb
# This script accepts one argument and prints all occurrences of a specific pattern:
# 'h' followed by 0, 1, 2, or more 'b's (specifically matching htn and hbtn).

input_string = ARGV[0] || ""

# Correct regex to match:
# h followed by 0 or 1 'b', then 'tn'
regex = /hb?tn/

# Find all matches
matches = input_string.scan(regex)

# Print concatenated result
puts matches.join
