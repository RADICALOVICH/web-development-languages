# frozen_string_literal: true

require_relative 'functions'
strings = []
def input(string_array)
  loop do
    print "\nВведите строку, оканчивающуюся точкой или нажмите Enter для остановки ввода:\n"
    user_input = gets.chomp
    break unless /[.]/.match?(user_input)

    string_array << user_input
  end
end

def result_output(string_array)
  print "Результат ввода:\n"
  string_array.each { |n| print "#{n}\n" }
  print "Результат вывода:\n"
  string_array.each { |n| puts ChangePositionsOfWords.change_words(n) }
end

input(strings)
result_output(strings)
