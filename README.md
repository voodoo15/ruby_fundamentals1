#Ruby Fundamentals 1

Submitting

Create a git repository on GitHub, called "ruby_fundamentals1" or something similar. Clone it onto your own computer. This assignment will walk you through creating several Ruby programs which you should add to your git repository. Don't forget to commit after each exercise! Refer to the submission guide or yesterday's assignment if you get stuck on git commands.

When you're done the exercises and have pushed your work to Github, click on the "Submissions" tab at the top of this page and paste in the link to your Github repository.

Have fun and don't forget to work alongside a partner!

What You Will Learn

This assignment will teach you the fundamental building blocks of Ruby.

Disclaimer

This assignment is about walking you through the fundamental features of the Ruby language using short, simplified code examples. If you find yourself wondering "why would I ever write this code?" or "ok, but what is this thing for?", try not to panic! Today's assignment is about discovering what is possible in Ruby, not why those features are useful. However, if you can start to envision how you might use these features in more complicated programming scenarios, that's great!

Assignment
Introduction
Exercise 1
Basic Data Types
Exercise 2
Variables and Assignment
Exercise 3
Control Structures
Exercise 4
Additional resources
Prerequisites

Be comfortable using your command-line interface
Be comfortable using git and GitHub
Have Ruby installed on your computer: in your command-line interface (aka shell or terminal), if typing ruby -v returns an error, Ruby is not installed. Otherwise, you're good to go!
Have a text editor
Introduction
Programming Languages

Ruby is a programming language, and like every other programming language, you can use it to command your computer. A very wide range of programming languages exists and many are tailored to work best in specific domains.

Perhaps you've heard of some other popular programming languages, such as Java, C++, Python, Objective-C, or JavaScript?

Every programming language has its own unique syntax, rules, pros, and cons.

Yukihiro Matsumoto aka Matz released Ruby in 1995 and says "I hope to see Ruby help every programmer in the world to be productive, and to enjoy programming, and to be happy. That is the primary purpose of Ruby language."

Over the last decade Ruby has grown in popularity for building web applications, largely due to Ruby on Rails (aka Rails). Rails is a web framework and not a programming language. It's a collection of Ruby "libraries" (packages of code) that make building web applications substantially easier.

However, Ruby can be (and is) used for other things outside of Rails and web development.

Running Ruby Programs

When writing Ruby programs, programmers work text editors and save their code in files. The file extension used to indicate that a file is a Ruby program is .rb

To "run" (or "execute") the program in a file called first.rb, run this in your terminal:

ruby first.rb

This will run the program, output any results and return to the command prompt when it's done.



If there are any errors, the output will look something like this



#Exercise 1

Create a file called exercise1.rb and open it in a text editor like Atom. Write this code:

2 + 3
and save the file. Now, let's run the file by typing in your terminal:

ruby exercise1.rb

Nothing happened, right?

Ruby won't output anything unless we explicitly tell it to. Let's edit our file and change it to:

puts 2 + 3
and run ruby exercise1.rb again.

Did your first program output 5?

puts is a Ruby method for outputting messages. We'll revisit the concept of methods in greater detail later on. Lets add some more lines at the beginning of our program so it looks like the following, and then go ahead and run it:

puts 2
puts 3
puts 2 + 3
We have just created and run our first multi-line Ruby program. As you can see, we have written each Ruby statement on its own line. Try writing everything on the same line and running it again, like so:

puts 2 puts 3 puts 2 + 3
Oh no!

exercise1.rb:1: syntax error, unexpected tIDENTIFIER, expecting $end
puts(2) puts(3) puts(2 + 3)
            ^
We got an error, but there's no need to panic. Error messages are Ruby's way of telling us what's wrong. In this case Ruby couldn't understand our program with every statement on the same line. We can simply reopen the file and put it back the way it was. Run it once again to confirm that it's fixed.

Now that you have written a working program in Ruby, make sure to commit it to git. Remember to check the output of git status after every git command to verify that everything is as it should be. Feel free to review the Github cheat sheet at any time.

irb

Irb (which stands for "interactive Ruby") is a program that allows you to run Ruby statements within the terminal instead of writing them in a file.

Run the command irb to start it within your terminal:

!irb from the terminal

Now you can type in some code and irb will automatically output the result. As a simple example, type in 1 + 1 and press enter. irb will respond by printing 2.

You can type exit at any time to return back to your original terminal.

Try out irb

Start irb and try running each of these commands, one at a time. Make sure you type them out yourself rather than copying and pasting. You'll learn much more that way.

5 + 1

5+1

5+ 1

1

5

As you can see, Ruby can do math. Also, Ruby (generally) doesn't care that much about spaces. Whitespace refers to spaces, tabs, and blank lines, and in most cases they don't make a difference to Ruby. Try out some more commands:

3 + 7 + 1

5 * 3 # multiplication uses the asterisk (*) operator, not the letter x

What just happened? If you write a pound/number sign (#) Ruby ignores everything that comes after it until the end of the line. So you can (and should) use it to write useful comments throughout your code. Comments make it easier for you to understand your code when you come back to it in future and no longer remember how it works. They also serve the same purpose for other people who might be trying to read your code.

Using irb to experiment with bits of Ruby code as you work on future assignments and projects is an excellent habit to get into!

Basic Data Types
Data types allow us to represent different kinds of information. Let's look at some basic Ruby data types.

Numbers

Numbers without decimal points (eg. 1, 250, 99999) are called integers, and numbers with decimal points (eg. 1.5, 150.3985, 50.0) are usually called floating-point numbers or, more simply, floats.

Doing operations with numbers is simple. Fire up irb in your terminal and try out the following:

5 > 3

5 < 3

5 > 5

5 >= 5

2 == 2 # note: two equals symbols, not one

2 == 3

2 != 3

Ruby has arithmetic operators such as +, -, *, /, %, and comparison operators such as >, <, >=, <=, == and != (not equal). You must always use two equals signs when doing a comparison. The list of Ruby operators is extensive. Feel free to try some other ones out in irb.

Strings

Strings are sequences of characters between quotation marks. This is the data type that allows you to incorporate words and sentences in your programs.

Remember puts from exercise 1? "Puts" is short for "put string".

To create a string, type some characters between single or double quotes. Below is an example of how to print strings using either single or double quotes and the puts method:

puts 'Hello world'
puts "Hello world"
So what difference is there between single quotes and double quotes in Ruby? In the above example, there's no difference. However, consider the following code:

puts "Betty's pie shop"
puts 'Betty\'s pie shop'
Because the word "Betty's" contains an apostrophe, which is the same character as the single quote, in the second line we need to use a backslash to escape the apostrophe so that Ruby understands that the apostrophe is part of the string and not marking the end of the string. The combination of the backslash followed by the single quote is called an escape sequence.

Using double quotes for this string allows us to avoid having to use an escape sequence.

Single Quotes

Single quotes only support two escape sequences.

\' single quote

\\ single backslash

Except for these two escape sequences, all other characters between single quotes are treated literally.

Double Quotes

Double quotes allow for many more escape sequences than single quotes. They also allow you to embed Ruby code inside of a string – this is commonly referred to as interpolation.

String Interpolation

String interpolation is a means of embedding Ruby code into a string by wrapping it in special characters like so: #{code goes here}. Try out the example below:

puts "Ada Lovelace lived for #{1852 - 1815} years."

# Ada Lovelace lived for 37 years.
Escape Sequences

Below are some of the more common escape sequences that can appear inside of double quotes:

\" double quote

\\ single backslash

\a bell/alert

\b backspace

\r carriage return

\n newline

\s space

\t tab

Try out this example code to better understand escape sequences:

puts "Hello\t\tworld"
puts "Hello\b\b\b\b\bGoodbye world"
puts "Hello\rStart over world"
puts "1. Hello\n2. World"
Strings can also work with some arithmetic operators (+, -, *, etc) and comparison operators (>, <=, ==, etc). Try a few in irb to see what works and what doesn't.

Symbols

Symbols are similar to strings, but come with more limited behaviour in exchange for performance benefits. They are represented by a word with a colon in front it, such as:

:bitmaker

If you're interested there are many articles online that go further into the topic. For now it's not important that you understand all the nuances of the difference between symbols and strings in Ruby, but you need to be aware of both data types.

Booleans

In Ruby, boolean data types allow us to represent the concepts of true and false. Boolean expressions are very common in programming and allow computers to evaluate statements as being either true or false.

Boolean expressions work with logical operators:

&& and

|| or

! not

Try these examples for yourself in irb:



You can also try combining conditional and logical operators like so:

(1 < 3) && (3 < 5)
# true

(1 > 1) && (2 > 2)
# false

(1 == 2) || (2 < 3)
# true

(1 != 2) || (2 < 3)
# true

(1 == 2) || (2 == 3)
#false

The purpose of boolean logic will become clearer later on when we talk about control structures.

#Exercise 2

Create a file called exercise2.rb and in it enter the solution for the four problems below, then check it into github. Try annotating your code by leaving comments (using the # symbol) in the file before each of your answers to the following questions:

How would you calculate a good tip for a 55 dollar meal? Use puts to print the answer.
Try adding a string and an integer with the + operator. What happens? Find a way to convert the integer into a string first and use puts to print the result.
Try outputting the result of 45628 multiplied by 7839 in a sentence by using string interpolation.
What's the value of the expression (10 < 20 && 30 < 20) || !(10 == 11)? Try figuring it out on your own before typing it in.
Variables and Assignment
To store a number or a string in your computer's memory for use later in your program, you need to give it a name. Programmers often refer to this process as assignment and they call the names variables. To create a new variable such as my_variable, simply assign a value to it, like so:

my_variable = 'my_variable is now this string'
It's best to think of variable assignment in Ruby as a pointer. The my_variable variable is pointing to the string "my_variable is now this string". We have to point it at something else for it to be reassigned (ie. for its value to be changed). Try out the following example in irb to understand how Ruby deals with assignment:

amount = 20
new_amount = amount
new_amount # 20
amount = "twenty"
amount # "twenty"
new_amount # 20
You can also assign multiple variables in a single line:

first_amount, second_amount, third_amount = 10, 20, 30
first_amount # 10
second_amount # 20
third_amount # 30
Operator and Assignment Shorthand

Programmers are lazy appreciate efficiency, even when it comes to typing. If we can get away with typing less we are happy to do so. Combining operators and variable reassignment is a commonly used shortcut. For example:

counter += 1
is the same as

counter = counter + 1
but takes nine fewer characters(!!!) to type.

+= and -=

+= is the combination of the addition and assignment operator. It adds the value on the right-hand side (also called the "right operand") to the current value of the variable on the left-hand side (also called the "left operand") and assigns the result to that variable. For example:

amount = 1
amount += 10
amount # 11
-= is the combination of the subtraction and assignment operator. It subtracts the value on the right-hand side (right operand) from the current value of the variable on the left-hand side (left operand) and assigns the result to that variable. For example:

amount = 30
amount -= 5
amount # 25

||=

The ||= operator assigns a value to a variable only if that variable doesn't already point to a value. This can be written as:

my_variable # undefined local variable or method 'my_variable for main:Object'
my_variable ||= "default value"
my_variable # "default value"
this is the same as writing:

my_variable # undefined local variable or method 'my_variable for main:Object'
my_variable = my_variable || "default value"
my_variable # "default value"
If the variable already points to a value, using the ||= operator won't have any effect:

my_variable = 10
my_variable ||= 3
my_variable # 10
my_variable didn't get reassigned to the value 3 because it already pointed to the value 10.

The utility of this operator will become more clear in the future as you write increasingly complicated programs.

Exercise 3

Let's make a Ruby program that greets someone by name. Let's call it exercise3.rb.

Start with displaying a question:

puts "What is your name?"
Run your program to verify that it works so far. If it works, commit what you've got to git with a meaningful commit message.

The next step is to get input from your hypothetical user (which for now is just you). We can do that with the gets method (which stands for "get string"). This method will pause the execution of your program and give your user the chance to type something into their terminal. When the user finishes typing and hits "enter", the value that they typed in is returned by the gets method (tomorrow's assignment will spend more time on the concept of "return values") and your program resumes normal execution. Try assigning gets to a variable in order to save your user's input. Having that string in a variable will allow us to display it back to the user later on in the program.

You may have also seen gets.chomp in other Ruby tutorials. chomp removes unwanted whitespace from the end of your user's input. Try using both gets on its own as well as gets.chomp and look for the difference between the values that they return.

Once you've assigned the user's input to a variable you should to display it back to them in the form of a greeting, using string interpolation.

puts "Hi #{name}!"
Don't forget to commit your work again!

For the last step try asking your user how old they are and have your program output what year they were born in.

PROTIP: Keep an eye out to ensure you have the proper data type. You might need to convert the string returned by gets to ensure you have a number you can perform math operations on by using to_i.

Control Structures
Control structures allows you to selectively execute blocks of code based on a given condition. They also allow you to run loops so that you can repeat blocks of code multiple times.

if

Ruby includes an if statement that can be used to manage a program's "control flow". The statement takes a boolean expression and either executes or skips a block of code depending on whether that expression evaluates to true or false. The syntax looks like this:

if 2 > 1
  puts "I get printed!"
end
The string "I get printed" will displayed because the condition 2 > 1 is true (ie. it is true that 2 is greater than 1).

if 0 > 1
  puts "I will not get printed!"
end
The string "I will not get printed" will not be displayed because 0 is not greater than 1. That is to say the condition given to the if statement is false, so the given block of code will not be executed.

else

If you want to provide two different blocks of code for your if statement to choose between — ie. "do this thing or else do this other thing" — you can tack an an else statement on to the end of your if statement, like so:

number = 3

if number > 0
  puts "#{number} is positive" # this line of code will be executed
else
  puts "#{number} is negative"
end

number = -4

if number > 0
  puts "#{number} is positive"
else
  puts "#{number} is negative" # this line of code will be executed
end

elsif

You can add additional options to your if/else statement using elsif:

x = 3
y = 4

if x > y
  puts "x is greater than y!"
elsif x < y
  puts "x is less than y!" # this line will be executed
else
  puts "x equals y!"
end

unless

You may find yourself expecting a boolean expression to be false rather than true. Instead of writing:

if x != 10
  puts "I get printed!"
end
You can instead use unless, which is equivalent to "if not":

unless x == 10
  puts "I get printed!"
end
Loops
Ruby includes a while loop that will execute a block of code over and over until its condition is no longer true.

while

counter = 1

while counter < 4
  puts "counter currently at #{counter}."
  counter += 1 # increase the value of counter by 1
end

#counter currently at 1.
#counter currently at 2.
#counter currently at 3.
while true
  puts "I'm an infinite loop!"
end

# this program will never finish running because the condition given to the while loop will never stop being true
until

You may also want to have a loop execute as long as the given condition is false. In this case you can use an until loop, which is equivalent to "while not":

counter = 3

until counter == 0
  puts "counter currently at #{counter}."
  counter -= 1
end

#counter currently at 3.
#counter currently at 2.
#counter currently at 1.

until false
  puts "I'm an infinite loop!"
end

# this program will never finish running because the condition given to the while loop will never stop being false
.times and .each

The .times and .each methods are Ruby iterators, which means they perform a piece of code a specified number of times. .each is one of the most commonly used methods in Ruby, so it's particularly important for you to get comfortable with it.

Example using .times

3.times do
  puts "Chunky bacon!"
end
# => Chunky bacon!
# => Chunky bacon!
# => Chunky bacon!
Or we can write this code on a single line like so:

3.times { puts "Chunky bacon!" }
# => Chunky bacon!
# => Chunky bacon!
# => Chunky bacon!
In this example the string "Chunky bacon!" will be printed 3 times because the .times method was called on the integer 3, and the block of code passed to the .times method was puts "Chunky bacon!".

Example using .each

In this example, we're using something called a range to describe a series of numbers from 1 to 5 ((1..5)). You can read more about ranges here. Try out the following code in irb:

one_to_five = (1..5)

one_to_five.each do |num|
  puts num
end

# 1
# 2
# 3
# 4
# 5
num is a special kind of variable - referred to as a block argument - which exists only for the duration of the each loop in the preceding example. The value of num changes each time the line inside the loop (ie. puts num) is executed.

In this example, the line puts num was executed five times. The first time around, num was assigned to the number 1. The second time around, num pointed to the number 2, and so on up to the number 5, because (1..5) was the range we called .each on.

In programming jargon we describe this process as iterating or looping over the range (1..5).

Try the following example in irb in order to reinforce your understanding of the .each method:

one_to_five = (1..5)

one_to_five.each do |num|
  puts (num**2).to_s
end

# 1
# 4
# 9
# 16
# 25

#Exercise 4

Let's do our own Bitmaker Labs version of FizzBuzz, which is the name of a classic job interview coding problem.

Write a program in a file called exercise4.rb that loops over the numbers from 1 to 100. If the number is a multiple of three, output the string "Bit". For multiples of five, output "Maker". For numbers which are multiples of both three and five, output "BitMaker". Otherwise output the number itself.


