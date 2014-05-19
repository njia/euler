#!/usr/bin/env ruby

nums=Array.new()
1.upto(999) {|n| nums << n if n%3==0 || n%5==0}
puts nums.inject(:+)
