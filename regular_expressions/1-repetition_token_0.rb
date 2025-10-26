#!/usr/bin/env ruby
# 1-repetition_token_0.rb
# This script accepts one argument and prints all occurrences of a specific pattern:
# 'hb' followed by zero to seven 't's, followed by 'n'.

input_string = ARGV[0] || ""

# The regular expression to match: h, b, zero to seven t's, n
# 't{0,7}' means zero to seven 't' characters.
regex = /hbt{0,7}n/

# Find all non-overlapping matches in the input string
matches = input_string.scan(regex)

# Concatenate all found matches and print to standard output
puts matches.join
