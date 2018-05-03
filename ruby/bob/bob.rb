class Bob
  def self.hey(remark)
    last_char = remark.strip[-1]

    case
    when last_char == nil
      "Fine. Be that way!"
    when remark.match(/[a-z]/i) && remark == remark.upcase
      "Whoa, chill out!"
    when last_char == "?"
      "Sure."
    else
      "Whatever."
    end
  end
end

module BookKeeping
  VERSION = 1
end
