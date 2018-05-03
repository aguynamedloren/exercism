class Prime
  def self.nth(n)
    raise ArgumentError if n == 0

    primes = []
    current_count = 2

    while primes.count < n
      if is_prime?(current_count, primes)
        primes.push(current_count)
      end

      current_count += 1
    end

    return primes.last
  end

  def self.is_prime?(number, primes)
    primes.all? do |preceding|
      number % preceding != 0
    end
  end
end

module BookKeeping
  VERSION = 1
end
