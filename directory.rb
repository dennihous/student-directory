#array of students

students = [
    "Dr. Hannibal Lecter",
    "Darth Vader",
    "Nurse Ratched",
    "Michael Corleone",
    "Alex DeLarge",
    "The Wicked Witch of the West",
    "Terminator",
    "Freddy Krueger",
    "Joffrey Baratheon",
    "Norman Bates"
]

puts "The students of Villains Academy"
puts "----------"

students.each do |student|
  puts student
end

# Print the total number of students

puts "Overall, we have #{students.count} great students"