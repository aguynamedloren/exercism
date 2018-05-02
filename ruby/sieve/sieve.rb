class Sieve
  attr_reader :range

  def initialize(target_number)
    @range = (2..target_number).to_a
  end

  def primes
    (0...range.size).each do |index|
      break if range[index].nil?
      reject_multiples_for(index)
    end

    return range
  end

  def reject_multiples_for(index)
    target_prime = range[index]

    range.reject! do |number|
      next if number == target_prime
      number % target_prime == 0
    end
  end
end

module BookKeeping
  VERSION = 1
end
