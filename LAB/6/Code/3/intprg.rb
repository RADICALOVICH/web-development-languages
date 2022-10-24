# frozen_string_literal: true

# calculate definitive integral
module DefinitiveIntegralUsingFormula
  def self.intprg(first_limit, second_limit, number_of_slices, lyambda = '')
    sum = 0.0
    number_of_slices.times do |n|
      delta_x = ((second_limit - first_limit).to_f / number_of_slices)
      x = first_limit + (delta_x * n) + (delta_x / 2)
      block_given? ? (y = yield x) : (y = lyambda.call(x))
      sum += y
    end
    ((second_limit - first_limit).to_f / number_of_slices) * sum
  end
end

p DefinitiveIntegralUsingFormula.intprg(0, 2, 10_000) { |x| x * (x - 1) }
function = ->(x) { x * (x - 1) }
p DefinitiveIntegralUsingFormula.intprg(0, 2, 10_000, function)
