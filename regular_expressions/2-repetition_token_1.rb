#!/usr/bin/env ruby
# 2-repetition_token_1.rb
# This script accepts one argument and prints all occurrences of a specific pattern:
# 'h' followed by 0, 1, 3, or 4 'b's, followed by 'tn'.

input_string = ARGV[0] || ""

# The regular expression to match:
# 'h'
# (?:...) is a non-capturing group for alternatives:
#   'b{0}' for 0 'b's (explicitly zero 'b's)
#   'b' for 1 'b'
#   'b{3}' for 3 'b's
#   'b{4}' for 4 'b's
# 'tn'
regex = /h(?:b{0}|b|b{3}|b{4})tn/ # <-- THIS LINE IS CHANGED

# Find all non-overlapping matches in the input string
matches = input_string.scan(regex)

# Concatenate all found matches and print to standard output
puts matches.join
