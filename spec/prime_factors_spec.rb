require 'rspec'
require_relative '../lib/prime_factors'

describe "PrimeFactors" do
  it "should return empty array for 1" do
    prime_factors(1).should == []
  end

  it "should return 2 for 2" do
    prime_factors(2).should == [2]
  end

  it "should return 3 for 3" do
    prime_factors(3).should == [3]
  end

  it "should return 2,2 for 4" do
    prime_factors(4).should == [2,2]
  end

  it "should return 5 for 5" do
    prime_factors(5).should == [5]
  end

  it "should return 2,3 for 6" do
    prime_factors(6).should == [2,3]
  end

  it "should return 7 for 7" do
    prime_factors(7).should == [7]
  end

  it "should return 2,2,2 for 8" do
    prime_factors(8).should == [2,2,2]
  end

  it "should return 3,3 for 9" do
    prime_factors(9).should == [3,3]
  end
end