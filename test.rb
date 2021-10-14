require "ffaker"

puts FFaker::Movie.title
puts rand(1900...2020)
puts FFaker::Lorem.paragraph