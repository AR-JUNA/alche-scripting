#!/usr/bin/env ruby
# 3-repetition_token_2.rb
# This script accepts one argument and prints all occurrences of a specific pattern:
# 'h' followed by 'b', then 't' repeated 0 to 5 times, then 'n'.

input_string = ARGV[0] || ""

# The regular expression to match:
# 'hb'
# 't{0,5}' for 't' repeated 0, 1, 2, 3, 4, or 5 times.
# 'n'
regex = /hbt{0,5}n/ # <== THIS LINE IS THE FIX

# Find all non-overlapping matches in the input string
matches = input_string.scan(regex)

# Concatenate all found matches and print to standard output
puts matches.join
