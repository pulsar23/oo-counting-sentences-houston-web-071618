require 'pry'

class String

  def sentence?
    if self[length-1] == "."
      return true
    else
      return false
    end
  end #sentence?

  def question?
    if self[length-1] == "?"
      return true
    else
      return false
    end
  end #question?

  def exclamation?
    if self[length-1] == "!"
      return true
    else
      return false
    end
  end #exclamation

  def count_sentences
    count = 0
    array = self.split(/[.?!]/)
    #binding.pry
    array.delete_if { |element| element.length == 0}
    count = array.length
  end #count_sentences
end
