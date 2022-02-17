def input_students
  puts "Enter the name of the student"
  puts "To finish, enter empty results for cohort and name"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp
  name = "Unknown" if name.empty?
  puts "Please enter the name of the cohort"
  # while the name is not empty, repeat this code

  months = ["january", "february", "march", "april", "may", "june", "july", "august", "september", "october", "november", "december"]

  while true
    cohort = gets.chomp.downcase
    if cohort.empty?
      cohort = "Unknown"
      break
    elsif months.include?(cohort)
      cohort
      break
    end
  end
  
  until name == "Unknown" && cohort == "Unknown" do
    #add the student hash to the array
    students << {name: name, cohort: cohort.to_sym}
    puts "Now we have #{students.count/2} students"
    # get another name from the user
    puts "Enter the name of the student"
    name = gets.chomp
    name = "Unknown" if name.empty?
    puts "Enter the name of the cohort"
    while true
      cohort = gets.chomp.downcase
      if cohort.empty?
        cohort = "Unknown"
        break
      elsif months.include?(cohort)
        cohort
        break
      end
    end
  end
  students
end

def which_cohort(students)
  cohort = students.map { |student| student[:cohort] }.uniq
  cohort.each do |cohort|
    puts cohort.capitalize
    current_cohort = students.select { |student| student[:cohort] == cohort}
    current_cohort.each { |student| puts "#{student[:name]}"}
  end
end

def print_header
  puts "The students of Villains Academy"
  puts "----------"
end

def print(names)
  names.each do |name|
    puts "#{name[:name]} (#{name[:cohort].capitalize} cohort)"
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count/2} great students"
end

students = input_students
which_cohort(students)
print_header
print(students)
print_footer(students)
