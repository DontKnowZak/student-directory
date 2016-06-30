
def input_students
    puts "Please enter the names of students"
    puts "To finish, just hit return twice"
    # create an empty array
    students = []
    #get the first name
    name = gets.chomp
    # while the name is not empty, repeat this code
    while !name.empty? do
        #add the student hash to the array
        students << {name: name, cohort: :november}
        puts "Now we have #{students.count} students"
        #get another name from the user
        name = gets.chomp
    end
    # return students array
    students
end

def print_header
    puts "The students of Villains Academy"
    puts "----------------"
end

def print(students)
    puts "Enter the starting letter of students you wish to display:"
    puts "Hit enter twice to display all students"
    letter = gets.chomp

    students.each_with_index do |student, index|
        if student[:name][0].downcase == letter.downcase
            puts "#{student[:name]} (#{student[:cohort]} cohort)"
        elsif letter == ""
            puts "#{index + 1}. #{student[:name]} (#{student[:cohort]} cohort)"
        end
    end
end

def print_footer(students)
    puts "Overall, we have #{students.count} great students"
end

students = input_students
print_header
print(students)
print_footer(students)
