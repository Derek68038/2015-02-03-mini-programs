
require 'active_support'
require 'active_support/all'

# Class: ParagraphTruncate
#
# Truncates a string at any point less than the string length.
#
# Attributes:
# None
#
# Public Methods:
# #driver

class ParagraphTruncate
  
  # This is my original code:
  # def truncate(x=40, y="(Read More)")
  #   string = "This is a paragraph I'm going to truncate. Here's what I'll do: I'll choose a point, or stick with a default value, where all of a sudden this paragraph will end."
  #   string[0..x] + " " + "#{y}"
  # end
  
  def truncate(truncate_at, options = {})
    return dup unless length > truncate_at

    omission = options[:omission] || '...'
    length_with_room_for_omission = truncate_at - omission.length
    stop = \
      if options[:separator]
        rindex(options[:separator], length_with_room_for_omission) || length_with_room_for_omission
      else
        length_with_room_for_omission
      end

    "#{self[0, stop]}#{omission}"
  end

end

  # Public: #driver
  # Creates a class object then calls on the truncate method.
  #
  # Parameters:
  # None
  #
  # Returns:
  # The truncated string.
  #
  # State Changes:
  # None
  
  def driver
    paragraph = ParagraphTruncate.new
    puts "This is going to be the sentence that I'll truncate.".truncate(40, omission: "... (continued)")
  end

driver
