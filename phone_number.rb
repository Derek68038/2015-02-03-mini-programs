
require 'active_support'
require 'active_support/all'

# Class: Number
#
# Takes in a string of digits as argument and outputs it in the format of a phone number.
#
# Attributes:
# None
#
# Public Methods:
# #driver

class Number
  
  include ActiveSupport::NumberHelper
  
  # This is my original code:
  # def convert_to_phone(digits)
  #   if digits.length == 10
  #     digits = digits.byteslice(0, 3) + "-" + digits.byteslice(3, 3) + "-" + digits.byteslice(6, 4)
  #   elsif digits.length == 11
  #     digits = digits.byteslice(0, 1) + "-" + digits.byteslice(1, 3) + "-" + digits.byteslice(3, 3) + "-" + digits.byteslice(7, 4)
  #   else
  #     puts "Your number was entered incorrectly."
  #   end
  # end
  
  def number_to_phone(number, options = {})
    NumberToPhoneConverter.convert(number, options)
  end

end

  # Public: #driver
  # Creates a class object then calls the number_to_phone method with a string of digits as argument.
  #
  # Parameters:
  # None
  #
  # Returns:
  # The argument in a phone number format.
  #
  # State Changes:
  # None
  
  def driver
    num = Number.new
    puts num.number_to_phone("1234567890")
  end

 driver

