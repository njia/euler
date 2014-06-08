#!/usr/bin/env ruby

$numbers = [1, 2]
$max_value = 4000000
$sum_value = 2

while ($numbers[-1] < $max_value) do
  $numbers.push($numbers[-1] + $numbers[-2])
  if $numbers[-1] %2 == 0
    $sum_value += $numbers[-1]
  end
end

puts $sum_value
