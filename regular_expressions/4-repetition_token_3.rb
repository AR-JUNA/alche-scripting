#!/usr/bin/env ruby
# 4-repetition_token_3.rb
# This script accepts one argument and prints all occurrences of a specific pattern:
# 'h' followed by 'b', then 't' or 'o' repeated 0 to 4 times, then 'n'.
# Does not use square brackets.

input_string = ARGV[0] || ""

# The regular expression to match:
# 'hb'
# (?:t|o){0,4} means 't' or 'o' repeated 0, 1, 2, 3, or 4 times.
# (?:...) is a non-capturing group.
# 'n'
regex = /hb(?:t|o){0,4}n/ # <== THIS LINE IS THE FIX

# Find all non-overlapping matches in the input string
matches = input_string.scan(regex)

# Concatenate all found matches and print to standard output
puts matches.join
