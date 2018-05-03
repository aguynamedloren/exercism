class Phrase
  attr_reader :phrase

  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    counts = {}

    phrase.
      downcase.
      gsub(/(?<=\s)'|'(?=\s)|[^\w\d\s,']*/m, "").
      split(/\s|,\s*|\n/).
      group_by{ |word| word }.map{ |k,v| counts[k] = v.size }

    return counts
  end
end

module BookKeeping
  VERSION = 1
end
