require 'rspec'

def fizzbuzz(n)
  if n % 15 == 0
    "FizzBuzz"
  elsif n % 3 == 0
    "Fizz"
  elsif n % 5 == 0
    "Buzz"
  else
    n
  end
end

#def fizzbuzz_array(n)
#  result = []
#  (1..n).each do |i|
#    result[i - 1] = fizzbuzz(i)
#  end
#  result
#end

def fizzbuzz_array(n)
  (1..n).map do |i|
    fizzbuzz(i)
  end
end

describe "FizzBuzz" do
  it "should return 1 for 1" do
    fizzbuzz(1).should == 1
  end

  it "should return 2 for 2" do
    fizzbuzz(2).should == 2
  end

  it "should return Fizz for 3" do
    fizzbuzz(3).should == "Fizz"
  end

  it "should return Buzz for 5" do
    fizzbuzz(5).should == "Buzz"
  end

  it "should return Fizz for 6" do
    fizzbuzz(6).should == "Fizz"
  end

  it "should return Buzz for 10" do
    fizzbuzz(10).should == "Buzz"
  end

  it "should return FizzBuzz for 15" do
    fizzbuzz(15).should == "FizzBuzz"
  end

  it "should return all results up to n" do
    fizzbuzz_array(10).should == [1,2,"Fizz",4,"Buzz","Fizz",7,8,"Fizz","Buzz"]
  end
end