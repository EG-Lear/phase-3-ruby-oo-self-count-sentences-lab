require 'pry'

class String

  def sentence?
    self.end_with?('.')
  end

  def question?
    self.end_with?('?')
  end

  def exclamation?
    self.end_with?('!')
  end

  def count_sentences
    # binding.pry
    countable = []
    split_string = self.split(/[.!?]/)
    split_string.each do |string|
      if string != ''
        countable << string
      end
    end
    countable.length
  end
end