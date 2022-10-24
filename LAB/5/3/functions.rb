# frozen_string_literal: true

# change position
class ChangePositionsOfWords
  def self.change_words(string)
    result_string = ''
    temp = ''
    string.gsub(/\w+/).with_index(1) do |n, i|
      temp = n
      if i.even?
        result_string += "#{temp} #{temp} "
        temp = ''
      end
    end
    (result_string + temp).strip
  end
end
