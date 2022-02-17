def input_students
  puts "Enter the name of the student"
  puts "To finish, enter empty results for cohort and name"
  # create an empty array
  @students = []
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
   @students << {name: name, cohort: cohort.to_sym}
    if (@students.count) == 1
      puts "Now we have #{@students.count} student"
    else
      puts "Now we have #{@students.count} students"
    end
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
end

def print_header
  puts "The students of Villains Academy"
  puts "----------"
end

def print_students
  @students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer
  if (@students.count) == 1
    puts "Overall, we have #{@students.count} great student"
  else
    puts "Overall, we have #{@students.count} great students"
  end
end

def show_students
  print_header
  print_students
  print_footer
end

def process(selection)
  case selection
  when "1"
    input_students
  when "2"
    show_students
  when "9"
    exit
  else
    puts "I don't know what you mean, try again"
  end
end

def print_menu
  # print the menu and ask the user what to do
  puts "1. Input the students"
  puts "2. Show the students"
  puts "9. Exit"
end

def interactive_menu
  loop do
    print_menu
    process(gets.chomp)
  end
end

interactive_menu