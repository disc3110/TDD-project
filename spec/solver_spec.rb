require_relative '../solver'

describe Solver do
  before :each do
    @solver = Solver.new
  end

  describe '#factorial' do
    it 'returns returns the correct factorial of n' do
      expect(@solver.factorial(5)).to eq 120
    end
    it 'The factorial of 0 should return 1' do
      expect(@solver.factorial(0)).to eq 1
    end
    it 'raises an error if a negative number is passed to a factorial' do
      expect { @solver.factorial(-5) }.to raise_error(ArgumentError, 'number must not be negative')
    end
  end

  describe '#reverse' do
    it 'takes a string as an argument and reverses its order' do
      expect(@solver.reverse('hello')).to eql 'olleh'
    end
  end

  describe '#fizzbuzz' do
    it 'returns fizz when n is divisible by 3' do
      expect(@solver.fizzbuzz(9)).to eq 'fizz'
    end
    it 'returns buzz when n is divisible by 5' do
      expect(@solver.fizzbuzz(10)).to eq 'buzz'
    end
    it 'returns fizzbuzz when n is divisible by 3 and 5' do
      expect(@solver.fizzbuzz(15)).to eq 'fizzbuzz'
    end
    it 'otherwise return n as a string' do
      expect(@solver.fizzbuzz(7)).to eq '7'
    end
  end
end
