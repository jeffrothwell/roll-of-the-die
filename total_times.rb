# ok so I'll admit I couldn't think of how to do this on so this is very much taken from the solution
# but I will add comments to show I at least know what's going on and am now writing this
# without looking at the solution directly.

# solution used ranges to do most of this, I will keep my little dice arrays from the
# last exercise, since they're here and serve the same purpose.
die1 = [1,2,3,4,5,6]
die2 = [1,2,3,4,5,6]

# need an empty hash
total_times = {}

# now populate this hash's keys with all possible dice totals, and the values at zero
# I will use a range for this .each method

(2..12).each { |sum| total_times[sum] = 0 }

# time to make a couple of nested .each methods on my die arrays from above
# and at each iteration, add 1 to the value associated with the key represented
# by the total of both dice

die1.each do |d1|
  die2.each do |d2|
    total_times[d1 + d2] += 1
  end
end

total_times.each { |sum, freq| puts "#{sum} occurs #{freq} times"}
#
# puts "There are #{total_permutations} possible permutations"
