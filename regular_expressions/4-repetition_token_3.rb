#!/usr/bin/env ruby
# 1-repetition_token_0.rb
# This script accepts one argument and prints all occurrences of a specific pattern:
# 'hb' followed by zero or more 't's, followed by 'n'.

input_string = ARGV[0] || ""

# The regular expression to match: h, b, zero or more t's, n
# 't*' means zero or more 't' characters.
regex = /hbt*n/ # <== THIS LINE IS THE FIX

# Find all non-overlapping matches in the input string
matches = input_string.scan(regex)

# Concatenate all found matches and print to standard output
puts matches.join
