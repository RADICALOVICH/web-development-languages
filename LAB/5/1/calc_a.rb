# frozen_string_literal: true

# calc the equation
module Equation
  def calc_a(first_input, second_input)
    mod = (second_input - first_input)
    1 + mod.abs + ((mod.abs**2) / 2) + ((mod.abs**3) / 3)
  end
end
