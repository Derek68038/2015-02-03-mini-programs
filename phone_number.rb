
class Number
  
  def convert_to_phone(digits)
    digits = digits.byteslice(0, 3) + "-" + digits.byteslice(3, 3) + "-" + digits.byteslice(6, 4)
  end

end

num = Number.new
puts num.convert_to_phone("1234567890")

