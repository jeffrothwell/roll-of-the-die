rolls = []

5.times do
  rolls << (Random.rand(6) + 1)
end

rolls.sort!.each do |roll|
  puts "The result of your roll is #{roll}"
end

puts "The lowest number is #{rolls.sort.first}"
puts "The highest number is #{rolls.sort.last}"
