
require 'active_support'
require 'active_support/all'

# Class: WordConnector
#
# Takes an array of elements and outputs the elements in a sentence format separated by commas.
#
# Attributes:
# None
#
# Public Methods:
# #driver

class WordConnector
  
  # This is my original code:
  # def initialize
  #   @colors = ["Blue", "Red", "Green"]
  # end

  # def connector # Must run this method first to get correct results.
  #   puts "#{@colors.slice(0)}, #{@colors.slice(1)}, and #{@colors.slice(2)}."
  # end
  #
  # def connect_two
  #   puts "#{@colors.slice(0)} and #{@colors.slice(1)}."
  # end
  
  def to_sentence(options = {})
    options.assert_valid_keys(:words_connector, :two_words_connector, :last_word_connector, :locale)

    default_connectors = {
      :words_connector     => ', ',
      :two_words_connector => ' and ',
      :last_word_connector => ', and '
    }
    if defined?(I18n)
      i18n_connectors = I18n.translate(:'support.array', locale: options[:locale], default: {})
      default_connectors.merge!(i18n_connectors)
    end
    options = default_connectors.merge!(options)

    case length
    when 0
      ''
    when 1
      self[0].to_s.dup
    when 2
      "#{self[0]}#{options[:two_words_connector]}#{self[1]}"
    else
      "#{self[0...-1].join(options[:words_connector])}#{options[:last_word_connector]}#{self[-1]}"
    end
  end

end
  
  # Public: #driver
  # Creates an object and prints the elements in an array in a sentence by calling on the to_sentence method.
  #
  # Parameters:
  # None
  #
  # Returns:
  # The elements are in the array.
  #
  # State Changes:
  # None

  def driver
    word = WordConnector.new
    puts ["Blue", "Red", "Green"].to_sentence, ["Blue", "Red"].to_sentence
  end

driver

    
