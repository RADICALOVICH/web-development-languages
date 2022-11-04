# frozen_string_literal: true

# calculate definitive integral
module DefinitiveIntegralUsingFormula
  def self.intprg(first_limit, second_limit, number_of_slices, lyambda = '')
    sum = 0.0
    delta_x = ((second_limit - first_limit).to_f / number_of_slices)
    number_of_slices.times do |n|
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

p DefinitiveIntegralUsingFormula.intprg(0, 1, 10_000) { |x| Math.exp(x) / (x + 1) }
function = ->(x) { Math.exp(x) / (x + 1) }
p DefinitiveIntegralUsingFormula.intprg(0, 1, 10_000, function)
