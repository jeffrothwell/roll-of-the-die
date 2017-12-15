die1 = [1,2,3,4,5,6]
die2 = [1,2,3,4,5,6]

die1.each do |d1|
  die2.each do |d2|
    puts "Dice Roll: #{d1}, #{d2}  Total:#{d1 + d2}"
  end
end
