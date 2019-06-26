require 'pry'

class String


  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")

  end

  def exclamation?
    self.end_with?("!")

  end

  def count_sentences
    array = []
    array = self.split(/[!.?] /)
    array.reject(&:empty?).length
  end
end