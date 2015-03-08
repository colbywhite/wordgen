require_relative 'utils'

module Wordgen
  module CliOptions
    def self.parse(args)
      options = {
          :interactive => false, 
          :verbose => false,
          :type => Wordgen::Type::NOUN,
          :complexity => Wordgen::Complexity::AVERAGE,
      }

      optparse = OptionParser.new do |opts|
        opts.banner = "Usage: wordgen [-t type] [-c complexity] [-i] [-v]"
        opts.on('-t', '--type <char>', 'define type of word to show') do |type|
          options[:type] = type
        end
        opts.on('-c', '--complexity <int>', Integer, 'define complexity of word to show') do |complex|
          complexities = Wordgen::Complexity.complexities
          complex = [complexities.length-1, complex].min
          complex = [0, complex].max
          options[:complexity] = Wordgen::Complexity.complexities[complex]
        end
        opts.on('-i', '--interactive', 'show multiple words in interactive mode') do
          options[:interactive] = true
        end
        opts.on('-v', '--verbose', 'grab extra info from wordnik on the resulting word') do
          options[:verbose] = true
        end
        opts.on('-h', '--help', 'Display quick help') do
          puts opts
          exit
        end
        opts.on('--extended-help', 'Display extended help') do
          puts opts
          puts Wordgen::Type.valid_type_documentation
          puts Wordgen::Complexity.valid_complexity_documentation
          exit
        end
      end
      optparse.parse!
      options
    end
    
  end
end