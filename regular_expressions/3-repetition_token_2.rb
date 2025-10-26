#!/usr/bin/env ruby
# 3-repetition_token_2.rb
# This script accepts one argument and prints all occurrences of a specific pattern:
# 'h' followed by 'b', then 't' repeated 0 to 3 times OR exactly 5 times, then 'n'.

input_string = ARGV[0] || ""

# The regular expression to match:
# 'hb'
# (?:...) is a non-capturing group for alternatives:
#   't{0,3}' for 't' repeated 0, 1, 2, or 3 times
#   't{5}' for 't' repeated exactly 5 times
# 'n'
regex = /hb(?:t{0,3}|t{5})n/

# Find all non-overlapping matches in the input string
matches = input_string.scan(regex)

# Concatenate all found matches and print to standard output
puts matches.join
