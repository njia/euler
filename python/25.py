#!/usr/bin/env python

fib_array = [1,1]

while (1):
  next = fib_array[-1] + fib_array[-2]
  if len(str(next)) == 1000:
    print len(fib_array) + 1
    break
  else:
    fib_array.append(next)


