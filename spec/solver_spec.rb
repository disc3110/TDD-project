require_relative '../solver'

describe Solver do
  it 'returns returns the correct factorial of n' do
    expect(Solver.new.factorial(5)).to eq 120
  end
  it 'The factorial of 0 should return 1' do
    expect(Solver.new.factorial(0)).to eq 1
  end
  it 'raises an error if a negative number is passed to a factorial' do
    expect {Solver.new.factorial(-5)}.to raise_error(ArgumentError, 'number must not be negative')
  end
end