def input_students
  puts "Please enter the name of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp
  # while the name is nt empty, repeat this code
  while !name.empty? do
    #add the student hash to the array
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    # get another name from the user
    name = gets.chomp
  end
  # return the array of students
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "----------"
end

def print(names)
  names.each do |name|
    if name[:name].length < 12
      puts "#{name[:name]} (#{name[:cohort]} cohort)"
    end
  end
end

def print_footer(num_students)
  puts "Overall, we have #{num_students.count} great students"
end

students = input_students
print_header
print(students)
num_students = print(students)
print_footer(students)