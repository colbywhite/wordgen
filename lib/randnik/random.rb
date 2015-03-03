require_relative 'utils'
require 'restclient'

module Randnik
  module Random
    # opts = {:type => Randnik::Type, :complexity => Randnik::Complexity, :last => string}
    def self.word(opts = {})
      RestClient.post url, get_payload(opts), {:content_type => 'application/x-www-form-urlencoded'}
    end

    def self.get_payload(opts = {})
      defaults = {
          :type => Randnik::Type::NOUN,
          :complexity => Randnik::Complexity::AVERAGE,
          :last => '',
      }
      _opts = defaults.merge opts
      "Pos=#{_opts[:type]}&Level=#{_opts[:complexity]}&LastWord=#{_opts[:last]}"
    end
    
    def self.url
      'http://watchout4snakes.com/wo4snakes/Random/RandomWordPlus'
    end
  end
end

# randword 
# randword -t n -c