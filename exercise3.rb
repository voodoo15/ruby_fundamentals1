#Exercise 3
#Name:  Arnold Redoblado
#Date:  2016-03-22

#I commented this out so I could just see the results for the
#other portions of the assignment
# puts "What is your name?"
# name = gets.chomp
# puts "Hi #{name.to_s}!  You\'re awesome!"

if 2 > 1
  puts "I get printed!"
end

if 0 > 1
  puts "I will not get printed!"
end

number = 3

if number > 0
      puts "#{number} is positive"
    else
      puts "#{number} is negative"
end

number = -4

if number > 0
    puts "#{number} is positive"
  else
    puts "#{number} is negative"
end

x = 3
y = 4

if x > y
    puts "x is greater than y!"
  elsif x < y
    puts "x is less than y!"
  else
    puts "x equals y!"
end

if x != 10
  puts "I get printed!"
end

unless x == 10
  puts "I get printed!"
end

counter = 1

while counter < 4
  puts "counter currently at #{counter}."
  counter += 1
end

#Commented below so I don't have to keep watching that infinite loop.  Like watching grass grow!
# while true
#   puts "I'm an infinite loop!"
# end

counter = 3

until counter == 0
  puts "counter currently at #{counter}."
  counter -= 1
end

#Commented below so I don't have to keep watching that infinite loop.  Like watching grass grow!
# until false
#   puts "I'm an infinite loop!"
# end

3.times do
  puts "Chunky bacon!"
end

3.times { puts "Chunky bacon!" }

one_to_five = (1..5)

one_to_five.each do |num|
  puts num
end

one_to_five.each do |num|
  puts (num**2).to_s
end
