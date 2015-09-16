#!/usr/bin/env ruby

fib_array = [1,1]

begin
  fib = fib_array[-2] + fib_array[-1]
  if fib.to_s.length == 1000
    puts fib_array.length + 1
    exit
  else
    fib_array.push(fib)
  end
end while true
