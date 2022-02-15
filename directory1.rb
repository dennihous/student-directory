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

def print_first_letter
  puts "Which students would you like to see?"
  letter = gets.chomp.downcase
end

def print_header
  puts "The students of Villains Academy"
  puts "----------"
end

def print(names, letter)
  names.each_with_index do |name, index|
    if name[:name].start_with?(letter.downcase)
      puts "#{index + 1}. #{name[:name]} (#{name[:cohort]} cohort)"
    end
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

students = input_students
letter = print_first_letter
print_header
print(students, letter)
print_footer(students)