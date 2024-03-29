#USER INPUT
#___________________________________________________________________________
puts "Enter your name: "
name = gets.chomp()

puts "Enter your age: "
age = gets.chomp()

puts "Hey #{name}, you are #{age} years old!"

puts "Enter a number: "
num1 = gets.chomp().to_f

puts "Enter another number: "
num2 = gets.chomp().to_f

puts "#{num1} plus #{num2} eqauls #{num1 + num2}"

#MADLIBS
#___________________________________________________________________________
puts "Give a color: "
color = gets.chomp()
puts "Give a plural noun: "
plural_noun = gets.chomp()
puts "Give a Celebrity: "
celebrity = gets.chomp()

puts "Roses are #{color.downcase}"
puts "#{plural_noun.capitalize} are blue"
puts "I love #{celebrity.capitalize}"

#ARRAYS
#___________________________________________________________________________
my_array = Array["Alex", "Jacobe", "Derek", "Tyler"]
puts my_array[0, 2]
puts my_array[1]

my_array = Array.new
my_array[0] = "Zolson"
puts my_array

my_array = Array["Tyler", "Derek", "Jacobe", "Alex"]
puts "Original Array: #{my_array}"
puts "Length of array: #{my_array.length}"
puts "Includes Zolson?: #{my_array.include? "Zolson"}"
puts "Sorted: #{my_array.sort()}"

#HASHES
#___________________________________________________________________________
states = {
  :Connecticut => "CT",
  :Massachussets => "MA",
  :New_York => "NY",
  :Oregon => "OR",
}

puts states
puts states[:Oregon]

#METHODS
#___________________________________________________________________________
def say_hi(name = "No Name", age = -1)
  puts "Hello #{name} you are #{age.to_s}"
end

say_hi

#RETURN STATEMENTS
#___________________________________________________________________________
def cube_number(num)
   return num * num * num, "hello"
end

puts cube_number(2)

#IF STATEMENTS
#___________________________________________________________________________
is_male = true
is_tall = false

if is_male and is_tall
  puts "you are tall"
else
  puts "you are not tall"
end

if is_male or is_tall
  puts "i greg"
else
  puts "nah man"
end

if is_male and is_tall
  puts "Weather"
elsif is_male and !is_tall
  puts "wow"
else
  puts "geez"
end

def find_max(num1, num2, num3)
  if num1 >= num2 and num1 >= num3
    return num1
  elsif num2 >= num1 and num2 >= num3
    return num2
  else
    return num3
  end
end

puts find_max(1, 29, 3)

#CASE EXPRESSION
#___________________________________________________________________________
def get_day_name(day)
  day_name = ""
  case day
    when "mon"
      day_name = "Monday"
    when "tue"
      day_name = "Tuesday"
    when "wed"
      day_name = "Wednesday"
    when "thu"
      day_name = "Thursday"
    when "fri"
      day_name = "Friday"
    when "sat"
      day_name = "Satuday"
    when "sun"
      day_name = "Sunday"
    else
      day_name = "Invalid Abbrevation"
  end

  return day_name
end

puts get_day_name("sat")

#WHILE LOOPS
#___________________________________________________________________________
index = 1
while index <= 5
  puts index
  index += 1
end

#GUESSING GAME
#___________________________________________________________________________
word_list = ["Cheesecake", "Lasagna", "Stromboli", "Brownie"]
secret_word = word_list.sample.to_s.chomp().downcase
guess = ""
guess_count = 0
guess_limit = secret_word.length - 1
out_of_guesses = false

puts "The category is food"
puts "The number of letters in my word: #{secret_word.length}"

while guess != secret_word and !out_of_guesses
  if guess_count < guess_limit
    if guess_count > 0
      puts "Hint: #{secret_word[0, guess_count]}"
    end
    puts "Enter your guess: "
    guess = gets.chomp().downcase
    guess_count += 1
  else
    out_of_guesses = true
  end
end

if out_of_guesses
  puts "You Lose nerd"
else
  puts "You Win!"
end

#FOR LOOPS
#___________________________________________________________________________
friends = ["Kevin", "Karen", "Oscar", "Angela", "Andy"]

for element in friends
  puts element
end
friends.each do |element|
  puts element
end

# go through a specific number of times
for index in 0..5
  puts index
end

6.times do |index|
  puts index
end

#EXPONENT METHOD
#___________________________________________________________________________

def pow(base, power)
  result = 1
  power.times do
    result = result * base
  end
  return result
end

puts pow(-5, 4)

#COMMENTS
#___________________________________________________________________________
=begin
this also works for
multiline
comments
=end

#READING FILES
#___________________________________________________________________________
File.open("employees.txt", "r") do |file|
  # puts file.readline()
  # puts file.readline()
  # puts file.readchar()
  for line in file.readlines()
    puts line.upcase
  end
end

file = File.open("employees.txt", "r")

puts file.read

file.close()

#WRITING FILES
#___________________________________________________________________________
append
File.open("employees.txt", "a") do |file|
  file.write("\nOscar, Accounting")
end

writing -- creates a file
File.open("ruby.html", "w") do |file|
    file.write("<h1>Hello</h1>")
  end

read and write
File.open("employees.txt", "r+") do |file|
  file.readline()
  file.write("Hi")
end

#HANDLING ERRORS
#___________________________________________________________________________
lucky_nums = [4, 8, 15 ,16, 23, 42]

begin
  # num = 10 / 0
  lucky_nums["dog"]
rescue ZeroDivisionError => error_value
  puts error_value
rescue TypeError => error_value
  puts error_value
end

#CLASSES AND OBJECTS
#___________________________________________________________________________
#create our own class
class Book
  attr_accessor :title, :author, :year
end

#create an object of that data type
book1 = Book.new()
book1.title = "Harry Potter"
book1.author = "JK Rowling"
book1.year = 1999

puts book1.year

book2 = Book.new()
book2.title = "Lord of the Rings"
book2.author = "Tolkein"
book2.year = 1937

puts book2.author

#INITIALIZE METHOD
#___________________________________________________________________________
class Book
    attr_accessor :title, :author, :year
    def initialize(title, author, year)
      @title = title
      @author = author
      @year = year
    end
end


book1 = Book.new("Harry Potter", "JK Rowling", 1999)
book2 = Book.new("Lord of the Rings", "Tolkein", 1937)

puts book1.title

#OBJECT METHOD
#___________________________________________________________________________
class Student
  attr_accessor :name, :major, :gpa
  def initialize(name, major, gpa)
    @name = name
    @major = major
    @gpa = gpa
  end

  def has_honors
    if @gpa >= 3.5
      return true
    end
    return false
  end
end

student1 = Student.new("Cole", "CSE", 3.6)
student2 = Student.new("Alex", "Finance", 3.4)
student3 = Student.new("Jacob", "History", 3.8)
student4 = Student.new("Dave", "Arts", 2.1)

puts student1.has_honors
puts student2.has_honors
puts student3.has_honors
puts student4.has_honors

#CREATING A QUIZ
#___________________________________________________________________________
class Question
  attr_accessor :prompt, :answer
  def initialize(prompt, answer)
    @prompt = prompt
    @answer = answer
  end
end

p1 = "What color are apples?\n(a)red\n(b)purple\n(c)blue"
p2 = "What color are bananas?\n(a)pink\n(b)red\n(c)yellow"
p3 = "What color are pears?\n(a)red\n(b)green\n(c)blue"

questions = [
  Question.new(p1, "a"),
  Question.new(p2, "c"),
  Question.new(p3, "b")
]

def run_test(questions)
  answer = ""
  score = 0
  for question in questions
    puts question.prompt
    answer = gets.chomp()
    if answer == question.answer
      score += 1
    end
  end
  puts "You got #{score} out of #{questions.length} right."
end

run_test(questions)

#INHERITENCE
#___________________________________________________________________________
class Chef
  def make_chicken
    puts "The chef makes chicken"
  end
  def make_salad
    puts "The chef makes salad"
  end
  def make_special
    puts "The chef makes bbq ribs"
  end
end

class ItalianChef < Chef              #Inherits methods from "Chef" class
  def make_special                    #Changes method from the inherited one
    puts "The chef makes Lasagna"
  end
  def make_pasta                      #Creates its own method
    puts "The chef makes Pasta"
  end
end

chef1 = Chef.new()
chef = ItalianChef.new()
chef1.make_special
chef.make_pasta

#MODULES
# #___________________________________________________________________________
#module is in the modules.rb file
require_relative "modules.rb"      #recognizes the other file
include Tools

Tools.sayhi("Cole")
