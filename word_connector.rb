class WordConnector
  
  def initialize
    @colors = ["Blue", "Red", "Green"]
  end

  def connector # Must run this method first to get correct results.
    puts "#{@colors.slice(0)}, #{@colors.slice(1)}, and #{@colors.slice(2)}."
  end
  
  def connect_two
    @colors.slice!(2)
    puts "#{@colors.slice(0)} and #{@colors.slice(1)}."
  end
  
end

