class ParagraphTruncate

  def truncate(x=40)
    string = "This is a paragraph I'm going to truncate. Here's what I'll do: I'll choose a point, or stick with a default value,                  where all of a sudden this paragraph will end."
    string[0..x] + "..."
  end

end

para = ParagraphTruncate.new
puts para.truncate(74)