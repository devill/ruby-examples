require 'rspec'

describe 'Ruby' do

  it 'should define arrays' do
    array = [1,2,3,4]
    p array
  end

  it 'should sum arrays' do
    array = [1,2,3,4]

    sum = 0
    array.each do |value|
      sum += value
    end

    p sum
  end

  it 'should pass block' do
    def block_pass
      yield
      yield
      yield
    end

    block_pass do
      p "Hello"
    end
  end

  it 'should sum indexes' do
    array = [3,4,5,7]

    sum_index = 0
    sum_value = 0
    array.each_with_index do |value, index|
      p value
      p index
      sum_index += index
      sum_value += value
    end

    p "--"

    p sum_index
    p sum_value
  end

end