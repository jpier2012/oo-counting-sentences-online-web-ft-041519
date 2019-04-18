require 'pry'

class String
  def initialize(name)
    @name = name
  end

  attr_reader :name

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
    self.split(/[\!\.\?]+/)
  end
end

string = String.new("test!!!! test2.!.? test3..?.!..")