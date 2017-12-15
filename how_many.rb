die1 = [1,2,3,4,5,6]
die2 = [1,2,3,4,5,6]

total_permutations = 0

die1.each do |d1|
  die2.each do |d2|
    puts "Dice Roll: #{d1}, #{d2}  Total:#{d1 + d2}"
    total_permutations += 1
  end
end

puts "There are #{total_permutations} possible permutations"
