#!/usr/bin/env ruby
#

total = 0

def jiecheng(number)
  return 2 if number == 2
  return number * jiecheng(number-1)
end

jiecheng(100).to_s.split(//).each do |a|
  total += a.to_i
end

puts total
