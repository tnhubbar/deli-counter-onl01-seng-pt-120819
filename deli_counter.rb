# # Write your code here.
# Build the line method that shows everyone their current place in the line. If there is nobody in line, it should say
# "The line is currently empty.".

# Build a method that a new customer will use when entering the deli. The take_a_number method should accept two arguments
n 
#,the array for the current line of people (katz_deli), and a string containing the name of the person joining the end of 
#the line. The method should call out (puts) the person's name along with their position in line. Top-Tip: 
#Remember that #people like to count from 1, not from 0 ("zero") like computers.

# Build the now_serving method which should call out (i.e. puts) the next person in line and then remove them from the #front. If there is nobody in line, it should call out (puts) that "There is nobody waiting to be served!".


def line (array)
 if array.count == 0 
   puts "The line is currently empty."
  else
    line_message =  "The line is currently:"
      array.each_with_index do |person, i|
      line_message << " #{i + 1}. #{person}"
    end 
      puts line_message
  end 
end 

def take_a_number(array, name)
  array << name 
    puts "Welcome, #{name}. You are number #{array.length} in line."
  
end 

def now_serving(array)
  if array.count == 0 
    puts "There is nobody waiting to be served!"
  else 
    puts "Currently serving #{array.first}."
    array.shift
end 
end 