#!/usr/bin/env ruby
# File: 3-repetition_token_2.rb

# Fixing based on the constraint that 't' repetition must be limited (since t^5 failed in Task 2)
# and the token must not be {}. This forces the use of ? (zero or one).
# We use b+ to accommodate hbbn from Task 2, and t? for repetition limit.
regex = /^hb+t?n$/

input_string = ARGV[0]

if input_string
  matches = input_string.scan(regex)
  puts matches.join
end
