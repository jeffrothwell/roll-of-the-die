die1 = [1,2,3,4,5,6]
die2 = [1,2,3,4,5,6]

# need an empty hash, and a counter at zero for total possible permutations
total_times = {}
total_permutations = 0

# now populate this hash's keys with all possible dice totals, and the values at zero
# I will use a range for this .each method

(2..12).each { |sum| total_times[sum] = 0 }

# time to make a couple of nested .each methods on my die arrays from above
# and at each iteration, add 1 to the value associated with the key represented
# by the total of both dice

die1.each do |d1|
  die2.each do |d2|
    total_times[d1 + d2] += 1
    total_permutations += 1
  end
end

p total_permutations
p total_times

totals_as_probability = total_times.transform_values { |sum|
  (sum.to_f / total_permutations * 100).round
}

p totals_as_probability

totals_as_probability.each { |sum, freq| puts "The probability of #{sum} coming up is #{freq}%"}
