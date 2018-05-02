class Hamming
  def self.compute(first, second)
    raise ArgumentError if first.length != second.length

    first_array = first.chars
    second_array = second.chars

    distance = 0

    first_array.each_with_index do |char, index|
      if char != second_array[index]
        distance += 1
      end
    end

    return distance
  end
end

module BookKeeping
  VERSION = 3
end
