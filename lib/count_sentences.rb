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
    counter = 0
      self.split.map {|x|
        if x.squeeze.sentence? || x.squeeze.question? || x.squeeze.exclamation?
          counter += 1
        end
      }
      counter
  end
end