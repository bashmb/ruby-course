
module Exercises
  # Exercise 0
  #  - Triples a given string `str`
  #  - Returns "nope" if `str` is "wishes"
  def self.ex0(str)
    if(str == "wishes") 
      return "nope"
    else
      result = "#{str}#{str}#{str}"
      return result
    end
  end

  # Exercise 1
  #  - Returns the number of elements in the array
  def self.ex1(array)
    array.count
  end

  # Exercise 2
  #  - Returns the second element of an array
  def self.ex2(array)
    array[1]
  end

  # Exercise 3
  #  - Returns the sum of the given array of numbers
  def self.ex3(array)
    array.reduce(:+)
  end

  # Exercise 4
  #  - Returns the max number of the given array
  def self.ex4(array)
    array.max()
  end

  # Exercise 5
  #  - Iterates through an array and `puts` each element
  def self.ex5(array)
    array.each {|x| puts x}
  end

  # Exercise 6
  #  - Updates the last item in the array to 'panda'
  #  - If the last item is already 'panda', update
  #    it to 'GODZILLA' instead
  def self.ex6(array)
    if (array.last != 'panda')
      array.pop(array.length-2)
      array << 'panda'
    else
      array.pop(array.length-2)
      array << 'GODZILLA'
    end
  end

  # Exercise 7
  #  - If the string `str` exists in the array,
  #    add `str` to the end of the array
  def self.ex7(array, str)
    if(array.index(str) != nil)
      array << str
      str
    end
  end

  # Exercise 8
  #  - `people` is an array of hashes. Each hash is like the following:
  #    { :name => 'Bob', :occupation => 'Builder' }
  #    Iterate through `people` and print out their name and occupation.
  def self.ex8(people)
    people.each { |x| puts "name: " + x[:name] + " occupation: " + x[:occupation]}
  end

  # Exercise 9
  #  - Returns `true` if the given time is in a leap year
  #    Otherwise, returns `false`
  # Hint: Google for the wikipedia article on leap years
  def self.ex9(time)
    if time % 4 == 0
      return true
    else
      return false
    end

  end

  # Exercise 10
  #  - Returns "happy hour" if it is between 4 and 6pm
  #    Otherwise, returns "normal prices"
  # Hint: Read the "Stubbing" documentation on the Learn app.
  # def self.ex10
  #   my_time = Time.now
  #   allow(Time).to receive(Time.now).and_return(my_time)
  #   if my_time [16:00..18:00]
  #     return "Happy Hour"
  #   else
  #     return "Normal Prices"
  #   end
  # end
  
  # Exercise 11
  #  - Returns the sum of two numbers if they are both integers
  #  - Raises an error if both numbers are not integers
  def self.ex11(num1, num2)
    if ((num1.is_a? Integer) && (num2.is_a? Integer))
      sum = num1 + num2
      return sum   
    elsif ((!num1.is_a? Integer) && (!num2.is_a? Integer))
      raise("Both of these is not an integer")
    else
      raise("One of these is not an integer")
    end
  end
  
  # Exercise 12
  #  - Write a method that takes two characters and returns an
  #    ordered array with all characters need to fill the range
  #    Eg.
  #       Exercises.ex12('c', 'g') => ['c', 'd', 'e', 'f', 'g']
  def self.ex12
    # TODO
  end
end

module Extensions
  # Extension Exercise
  #  - Takes an `array` of strings. Returns a hash with two keys:
  #    :most => the string(s) that occures the most # of times as its value.
  #    :least => the string(s) that occures the least # of times as its value.
  #  - If any tie for most or least, return an array of the tying strings.
  #
  # Example:
  #   result = Extensions.extremes(['x', 'x', 'y', 'z'])
  #   expect(result).to eq({ :most => 'x', :least => ['y', 'z'] })
  #
  def self.extremes(array)
    # TODO
  end
end
