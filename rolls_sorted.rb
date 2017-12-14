rolls = []

10.times do
  rolls << (Random.rand(6) + 1)
end

rolls.sort!.each do |roll|
  puts "The result of your roll is #{roll}"
end
