class Solver
  def factorial arg
    raise ArgumentError if arg < 0
    fac = 1
    arg.times { |i| fac*=i+1 } if arg > 0
    fac 
  end

  def reverse arg
    arg.split('').reverse.join
  end

  def fizzbuzz arg
    str = ''
    str += 'fizz' if arg % 3 == 0 
    str += 'buzz' if arg % 5 == 0  
    str.empty? ? arg.to_s : str
  end
end