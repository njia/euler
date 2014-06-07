#!/usr/bin/python

numbers = [1, 2]
max_value = 4000000
total = 2

while True:
  a = numbers[-1] + numbers[-2]
  if (a >= max_value):
    break

  numbers.append(a)
  if a % 2 == 0:
    total += a

print total
