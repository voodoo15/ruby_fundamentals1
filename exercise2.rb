#Exercise 2
#Name:  Arnold Redoblado
#Date:  2016-03-22

meal_price = 55
puts "The cost of the meal is:  $#{(meal_price).round(2)}\nThe tip is: $#{(meal_price * 0.15).round(2)}\nThe Total bill is:  $#{((meal_price * 1.13) + (meal_price * 0.15)).round(2)}"

puts "I love " + " beer!"

puts "I love $" + 100.to_s + " bills y'all!  Who got Benjamins?"

puts "#{45628 * 7839}"

puts (10 < 20 && 30 < 20) || !(10 == 11)
#My guess is true
#I guessed right!  I'm awesome!

amount = 20
new_amount = amount
puts new_amount
new_amount = "twenty"
puts amount
puts new_amount

first_amount, second_amount, third_amount = 10, 20, 30
puts first_amount
puts second_amount
puts third_amount

amount = 1
amount += 10
puts amount

amount = 30
amount -= 5
puts amount

my_variable ||= "default value"
puts my_variable

my_variable2 = 10
my_variable2 ||= 3
puts my_variable2
