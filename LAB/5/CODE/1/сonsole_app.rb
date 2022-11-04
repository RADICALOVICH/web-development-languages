# frozen_string_literal: true

require_relative 'calc_a'
include Equation
puts 'Input x'
x = gets.chomp.to_f
puts 'Input y'
y = gets.chomp.to_f
p "The result is #{calc_a(x, y)}"
