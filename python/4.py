#!/usr/bin/python


def is_palindromic(number):
  if str(number) == str(number)[::-1]:
    return 1
  else:
    return 0

max = 0
p = 0

for a in range(100,999):
  for b in range(100,999):
    p = a*b
    if (p > max) and (is_palindromic(p) == 1):
      max = p


print max
