# Write your code here.

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