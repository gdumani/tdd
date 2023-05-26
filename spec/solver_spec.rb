require_relative '../solver'
require 'rspec'

describe Solver do
  before(:each) do
    @solver = Solver.new
  end

  describe '#factorial' do
    it 'should return the factorial of a number' do
      expect(@solver.factorial(5)).to eq(120)
    end

    it 'should accept positive integers' do
      expect { @solver.factorial(1) }.not_to raise_error
    end

    it 'should accept 0' do
      expect(@solver.factorial(0)).to eq(1)
    end

    it 'should raise an exception when the number is negative' do
      expect { @solver.factorial(-1) }.to raise_error(ArgumentError)
    end
  end

  describe '#reverse' do
    it 'should return the reversed string' do
      expect(@solver.reverse('hello')).to eq('olleh')
    end
  end

  describe '#fizzbuzz' do
    it 'should take an integer and return a string' do
      expect(@solver.fizzbuzz(1)).to be_a(String)
    end

    it 'should return "fizz" when int is divisible by 3' do
      expect(@solver.fizzbuzz(9)).to eq('fizz')
    end

    it 'should return "buzz" when int is divisible by 5' do
      expect(@solver.fizzbuzz(10)).to eq('buzz')
    end

    it 'should return "fizzbuzz" when int is divisble by 3 and 5' do
      expect(@solver.fizzbuzz(30)).to eq('fizzbuzz')
    end

    it 'should return the integer as a string when not divisible by 3 or 5' do
      expect(@solver.fizzbuzz(7)).to eq('7')
    end
  end
end
