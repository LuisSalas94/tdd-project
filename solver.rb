class Solver
  def factorial(num)
    raise ArgumentError, 'Wrong type of argument' if !num.is_a?(Integer) || num.negative?
    return 1 if num.zero?

    num * factorial(num - 1)
  end

  def reverse(str)
    raise ArgumentError, 'Wrong type of argument' unless str.is_a?(String)

    str.reverse
  end

  def fizzbuzz(num)
    raise ArgumentError, 'Wrong type of argument' if !num.is_a?(Integer) || num.negative?

    if (num % 15).zero?
      'fizzbuzz'
    elsif (num % 5).zero?
      'buzz'
    elsif (num % 3).zero?
      'fizz'
    else
      num.to_s
    end
  end
end
