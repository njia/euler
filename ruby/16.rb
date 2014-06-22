#!/usr/bin/env ruby
#

total = 0

(2**1000).to_s.split(//).each do |a|
  total += a.to_i
end

puts total
