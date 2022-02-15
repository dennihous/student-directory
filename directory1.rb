def input_students
  puts "Please enter the name of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp
  puts "Where were they born?"
  country = gets.chomp
  # while the name is nt empty, repeat this code
  while !name.empty? do
    #add the student hash to the array
    students << {name: name, cohort: :november, born_in: country}
    puts "Now we have #{students.count} students"
    # get another name from the user
    puts "Type another student"
    name = gets.chomp
    puts "Where were they born?"
    country = gets.chomp
  end
  # return the array of students
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "----------"
end

def print(names)
  i = 0
  while i < names.count do
    puts "#{names[i][:name]} (#{names[i][:cohort]} cohort, born in #{names[i][:born_in]})"
    i += 1
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

students = input_students
print_header
print(students)
print_footer(students)