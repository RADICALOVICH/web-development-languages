# frozen_string_literal: true

# calculate definitive integral
module DefinitiveIntegral
  def self.calculate_definitive_integral(accuracy)
    number_of_slices = 0
    area = 0.0
    while (area - 0.3862943611199).abs >= accuracy
      number_of_slices += 1
      area = current_area(number_of_slices)
    end
    area
  end

  def self.current_area(number_of_slices)
    x = 1
    current_area = 0.0
    number_of_slices.times do
      x += ((2.0 - 1.0) / number_of_slices)
      y = Math.log(x)
      slice_area = y * ((2.0 - 1.0) / number_of_slices)
      current_area += slice_area
    end
    current_area
  end
end

print "When accuracy is 10^-3 result is #{DefinitiveIntegral.calculate_definitive_integral(10**-3)}\n"
print "When accuracy is 10^-4 result is #{DefinitiveIntegral.calculate_definitive_integral(10**-4)}\n"
