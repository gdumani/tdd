class Solver
  def factorial(arg)
    raise ArgumentError if arg.negative?

    fac = 1
    arg.times { |i| fac *= i + 1 } if arg.positive?
    fac
  end

  def reverse(arg)
    arg.chars.reverse.join
  end

  def fizzbuzz(arg)
    str = ''
    str += 'fizz' if (arg % 3).zero?
    str += 'buzz' if (arg % 5).zero?
    str.empty? ? arg.to_s : str
  end
end
