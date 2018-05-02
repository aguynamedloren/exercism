class Raindrops
  FACTORS = {
    3 => "Pling",
    5 => "Plang",
    7 => "Plong"
  }

  def self.convert(integer)
    sound = []

    FACTORS.each do |factor, output|
      if integer_is_factor?(integer, factor)
        sound.push(output)
      end
    end

    if sound.empty?
      sound.push(integer)
    end

    return sound.join
  end

  def self.integer_is_factor?(integer, factor)
    integer/factor == integer.to_f/factor
  end
end

module BookKeeping
  VERSION = 3
end
