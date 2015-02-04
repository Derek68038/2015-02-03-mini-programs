require 'pry'
require 'marvel_api'

class MarvelComics
  
  def initialize
    @client = Marvel::Client.new

      @client.configure do |config|
        config.api_key = 'd80e102e3e2b663e78827850a18811f9'
        config.private_key = 'f3fa2e055f0af0927a2b58231227b1aea62b4dcf'
      end
  end

  def search_marvel(character)
    @client.characters(name: character)
  end

  def driver
    marvel = MarvelComics.new
    puts "Let's search for a Marvel Comics character!" + "\n\n" + "Who would you like to look-up?: "
    name = gets.chomp
    marvel.search_marvel(name)
  end  
    
end
    
  
binding.pry