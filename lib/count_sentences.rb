require 'pry'

class String

  def sentence?
    return self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def arrSplit (array, char)
    new_arr =[]
    array.each do |string|
      new_arr << string.split(char)
    end
    new_arr.flatten
  end

  def count_sentences
    str_arr = self.split(".")
    str_arr = arrSplit(str_arr, "!")
    str_arr = arrSplit(str_arr, "?")
    str_arr.size
  end
end