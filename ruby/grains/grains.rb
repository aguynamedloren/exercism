class Grains
  def self.square(target_square)
    raise ArgumentError if target_square < 1 || target_square > 64

    2 ** (target_square - 1)
  end

  def self.total
    (1..64).map{ |n| square(n) }.sum
  end
end

module BookKeeping
  VERSION = 1
end
