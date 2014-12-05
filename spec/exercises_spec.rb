require 'spec_helper'
require './exercises.rb'

def capture_stdout(&block)
    original_stdout = $stdout
    $stdout = fake = StringIO.new
    begin
      yield
    ensure
      $stdout = original_stdout
    end
    fake.string
  end


describe 'Exercise 0' do
  it "triples the length of a string" do
    result = Exercises.ex0("ha")
    expect(result).to eq("hahaha")
  end

  it "returns 'nope' if the string is 'wishes'" do
    result = Exercises.ex0("wishes")
    expect(result).to eq("nope")
  end
end

describe 'Exercise 1' do
  it "returns array length" do
    result = Exercises.ex1([1,2,3])
    expect(result).to eq(3)
  end
end

describe 'Exercise 2' do
  it "returns the second element in the array" do
    result = Exercises.ex2([1,2,3])
    expect(result).to eq(2)
  end
end

describe 'Exercise 3' do
  it "Returns the sum of the given array of numbers" do
    result = Exercises.ex3([1,2,3])
    expect(result).to eq(6)
  end
end

describe 'Exerciese 4' do
  it "Returns the max number of the given array" do
    result = Exercises.ex4([1,2,3])
    expect(result).to eq(3)
  end
end

describe 'Exercises 5' do
  it "Iterates through an array and `puts` each element" do
    result = capture_stdout{ Exercises.ex5([1,2,3,4,5,6,7,8,9,10])}
    result.should == "1\n2\n3\n4\n5\n6\n7\n8\n9\n10\n"
  end
end

describe 'Exercise 6' do
  it "Updates the last item in the array to 'panda'" do
    result = Exercises.ex6(["dog", "cat", "fish"])
    test_element = result[2]
    test_element.should == "panda"
  end

  it "Changes the last element to 'GODZILLA' if already = to 'panda'" do
    result = Exercises.ex6(["dog", "cat", "panda"])
    test_element = result[2]
    test_element.should == "GODZILLA"
  end
end

describe 'Exercise 7' do
  it "If the string `str` exists in the array, add `str` to the end of the array" do
    result = Exercises.ex7(["dog", "cat", "fish", "str"], "cat")
    result.should == "cat"
  end
end

describe 'Exercise 8' do
  it "Iterates through `people` and prints out their name and occupation" do
    result = capture_stdout{ Exercises.ex8([{name: 'bob', occupation: 'builder'}])}
    result.should == "name: bob occupation: builder\n"
  end
end

describe 'Exercise 9' do
  it "Returns `true` if the given time is in a leap year" do
    result = Exercises.ex9(2000)
    result.should == true
  end
end

# describe 'Exercise 10' do
#   xit "Returns 'happy hour' if it is between 4 and 6pm" do
#     result = Exercises.ex10(Time.now())
#     result.should == 

describe 'Exercise 11' do
  it "Returns the sum if both arguments are integers" do
    result = Exercises.ex11(2,3) 
    result.should == 5
  end
  # it "Gives an error if both are not integers" do
  #   result = Exercises.ex11(2.34, 3.35)
  #   result.should == "RuntimeError: Both of these is not an integer"
  # end
  # it "Returns an error if one of these is not an integer." do
  #   result = Exercises.ex11(2.34,3)
  #   result.should == "One of these is not an integer"
  # end
end

describe 'Exercise 12' do
  it 'Prints all the letters in order between two given letters' do
    result = Exercises.ex12('x','r')
    result.should == ["r", "s", "t", "u", "v", "w", "x"]
  end
end
