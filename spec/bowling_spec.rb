require 'rspec'
require_relative '../lib/bowling'

describe Bowling do
  before :each do
    @game = Bowling.new
  end

  def roll_many(times, pins)
    (1..times).each do |_|
      @game.roll pins
    end
  end

  it "should return zero for gutter game" do
    roll_many 20, 0

    @game.score.should == 0
  end

  it "should return 20 for all ones game" do
    roll_many 20, 1

    @game.score.should == 20
  end

  it "should add the next ball after spare" do
    @game.roll 5
    @game.roll 5
    @game.roll 3

    roll_many 17, 0

    @game.score.should == 16
  end

  it "should add the next two balls after stire" do
    @game.roll 10
    @game.roll 5
    @game.roll 3

    roll_many 16, 0

    @game.score.should == 26
  end

  it "should score 300 for perfect game" do
    roll_many 12, 10

    @game.score.should == 300
  end
end