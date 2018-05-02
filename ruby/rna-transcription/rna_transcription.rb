class Complement
  TRANSCRIPTION = {
    "G" => "C",
    "C" => "G",
    "T" => "A",
    "A" => "U"
  }

  def self.of_dna(dna_string)
    dna_nucleotides = dna_string.chars

    if (dna_nucleotides.uniq - TRANSCRIPTION.keys).any?
      return ""
    end

    dna_nucleotides.map do |dna_nucleotide|
      TRANSCRIPTION[dna_nucleotide]
    end.join("")
  end
end


module BookKeeping
  VERSION = 4
end
