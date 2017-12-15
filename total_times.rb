# ok so I'll admit I couldn't think of how to do this so this is very much taken from the solution
# but I will add comments to show I at least know what's going on and am now writing this
# without looking at the solution directly.

# solution used ranges to do most of this, I will keep my little dice arrays from the
# last exercise, since they're here and serve the same purpose.
die1 = [1,2,3,4,5,6]
die2 = [1,2,3,4,5,6]

# need an empty hash
total_times = {}

# now populate the keys with all possible dice totals, and the values at zero
# I will use a range for this .each method's argument

(2..12).each { |sum| total_times[sum] = 0 }

puts total_times

# die1.each do |d1|
#   die2.each do |d2|
#     puts "Dice Roll: #{d1}, #{d2}  Total:#{d1 + d2}"
#   end
# end
#
# puts "There are #{total_permutations} possible permutations"
