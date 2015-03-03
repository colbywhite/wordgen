module Randnik
  module Complexity
    OBSCURE = 95
    VERY_UNCOMMON = 70
    UNCOMMON = 60
    SOMEWHAT_UNCOMMON = 50
    AVERAGE = 35
    COMMON = 20
    VERY_COMMON = 10
    
    def self.complexities
      [VERY_COMMON, COMMON, AVERAGE, SOMEWHAT_UNCOMMON, UNCOMMON, VERY_UNCOMMON, OBSCURE]
    end

    def self.valid_complexity_documentation
      <<-EOS.gsub(/^ {6}/, '')
      Valid complexities include:
        0 for very common
        1 for common
        2 for average [default]
        3 for somewhat uncommon
        4 for uncommon
        5 for very uncommon
        6 for obscure
      EOS
    end
  end
  
  module Type
    NOUN = :n
    TRANSITIVE_VERB = :t
    INTRANSITIVE_VERB = :i
    ADJECTIVE = :a
    ADVERB = :e
    INTERJECTION = :z
    PREPOSITION = :s
    
    def self.valid_type_documentation
      <<-EOS.gsub(/^ {6}/, '')
      Valid types include:
        #{NOUN} for nouns [default]
        #{TRANSITIVE_VERB} for transitive verbs
        #{INTRANSITIVE_VERB} for intransitive verbs
        #{ADJECTIVE} for adjective
        #{ADVERB} for adverb
        #{INTERJECTION} for interjection
        #{PREPOSITION} for preposition
      EOS
    end
  end
end