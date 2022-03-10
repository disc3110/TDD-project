require_relative '../solver'

describe Solver do
  before :each do
    @solver = Solver.new
  end
  it 'returns returns the correct factorial of n' do
    expect(@solver.factorial(5)).to eq 120
  end
  it 'The factorial of 0 should return 1' do
    expect(@solver.factorial(0)).to eq 1
  end
  it 'raises an error if a negative number is passed to a factorial' do
    expect(@solver.factorial(-5)).to raise_exception
  end
end