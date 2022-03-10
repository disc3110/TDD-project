class Solver
  def factorial(n)
    return 1 if n == 0
    raise ArgumentError, 'number must not be negative' if n.negative?

    result = 1
    until n < 1
      result *= n
      n -= 1
    end
    p(result)
    result
  end

  def reverse(string)
    string.reverse
  end
end

solver = Solver.new
p(solver.factorial(5))