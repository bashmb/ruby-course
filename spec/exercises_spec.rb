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
