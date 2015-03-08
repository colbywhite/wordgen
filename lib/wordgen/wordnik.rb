require 'wordnik'

Wordnik.configure do |config|
  config.api_key = '145d6d3032362906ecd5203d3330fdd4a171f977c9b41612c'               # required
  config.response_format = 'json'             # defaults to json, but xml is also supported
  config.logger = Logger.new '/dev/null'
end

module Wordgen
  module WordnikActions
    def self.print_definitions(word)
      response = Wordnik.word.get_definitions word
      puts "  - Wordnik has no extra info for '#{word}'" if response.length < 1
      response.each do |definition|
        puts "  - #{definition['text']} (#{definition['partOfSpeech']})"
        examples = definition['exampleUses']
        examples.each do |example|
          puts "    - Example: #{example}"
        end
      end
    end
  end
end


def isUS(code)
  'c'.to_i
end