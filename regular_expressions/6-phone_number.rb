#!/usr/bin/env ruby
# File: 6-phone_number.rb

# Requirement: Match a 10 digit phone number, optionally separated by space or hyphen.
# Pattern: ^(3 digits)(optional separator)(3 digits)(optional separator)(4 digits)$
regex = /^\d{3}[- ]?\d{3}[- ]?\d{4}$/

input_string = ARGV[0]

if input_string
  # Use scan to return the full matched string
  matches = input_string.scan(regex)
  puts matches.join
end
