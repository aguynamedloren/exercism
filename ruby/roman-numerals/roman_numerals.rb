class Integer
  ROMAN_NUMERALS = {
    1 => "I",
    5 => "V",
    10 => "X",
    50 => "L",
    100 => "C",
    500 => "D",
    1000 => "M"
  }

  attr_reader :roman_remainder

  def to_roman
    numerals = []
    remainder = self

    [1000, 100, 10, 1].each do |multiple|
      numerals, remainder = append_roman_numeral(numerals, remainder, multiple)
    end

    numerals.join
  end

  private

  def append_roman_numeral(numerals, remainder, multiple)
    values = remainder / multiple
    base_numeral = ROMAN_NUMERALS[multiple]
    five_numeral = ROMAN_NUMERALS[multiple*5]
    ten_numeral = ROMAN_NUMERALS[multiple*10]

    if values == 4
      numerals.push(base_numeral)
      numerals.push(five_numeral)
    elsif values == 9
      numerals.push(base_numeral)
      numerals.push(ten_numeral)
    elsif values / 5 == 1
      numerals.push(five_numeral)
      (values % 5).times { |x| numerals.push(base_numeral) }
    else
      values.times { |x| numerals.push(base_numeral) }
    end

    new_remainder = remainder % multiple

    return numerals, new_remainder
  end
end
