class Gigasecond
  GIGASECOND = 1000000000

  def self.from(start_time)
    Time.at(start_time.to_i + GIGASECOND)
  end
end

module BookKeeping
  VERSION = 6
end
