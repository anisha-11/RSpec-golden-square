class GrammarStats
  def initialize
      @success = 0 
      @fail = 0 
  end
  
  def check(text) 
    if text[0] == text[0].capitalize && (text[-1] == "." || text[-1] == "!" || text[-1] == "?")
        @success += 1
        return true
    elsif text[0] == text[0].capitalize
        @fail += 1
        return false
    elsif text[0] != text[0].capitalize 
        @fail += 1
        return false
    end
  end
      # Returns true or false depending on whether the text begins with a capital
      # letter and ends with a sentence-ending punctuation mark
  
  def percentage_good
    return @success * 100 / (@success + @fail)

      # Returns as an integer the percentage of texts checked so far that passed
      # the check defined in the `check` method. The number 55 represents 55%.
  end
end
