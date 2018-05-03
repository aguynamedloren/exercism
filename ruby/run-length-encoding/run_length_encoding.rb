class RunLengthEncoding
  def self.encode(input)
    count = 0
    output = ""

    input.each_char do |char|
      last_encoded_char = output[-1]

      if char == last_encoded_char
        count += 1
      else
        if count > 1
          output.insert(-2, count.to_s)
        end

        output.concat(char)
        count = 1
      end
    end

    if count > 1
      output.insert(-2, count.to_s)
    end

    return output
  end

  def self.decode(input)
    output = ""
    sets = input.scan(/\d*[a-zA-Z\s]/)

    sets.each do |set|
      char = set[-1]
      number = set.match(/\d+/) ? set.match(/\d+/).to_s.to_i : 1

      number.times do
        output.concat(char)
      end
    end

    output
  end
end

module BookKeeping
  VERSION = 3
end
