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
    first_split = self.split(".").map {|sentence| sentence.split("?")}.flatten
    second_split = first_split.map {|sentence| sentence.split("!")}
    final_split = second_split.flatten
    final_split.select {|string| string.length != 0}.length
  end
end