if ARGV.empty?
  puts "Usage: ./6-phone_number.rb <phone_number>"
  exit(1)
end

phone_number = ARGV[0]

if phone_number =~ /\d{10}/
  puts phone_number
end
