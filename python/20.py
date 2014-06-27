#!/usr/bin/python

def jiecheng(number):
  if number == 2:
    return 2
  else:
    return (number * jiecheng(number-1))

print sum(map(int, str(jiecheng(100))))
