# frozen_string_literal:true

# all stuff
class Employers
  def self.find_2_max(name, salary)
    array_of_2_max = salary.each_with_index.max(2)
    [name[array_of_2_max[0][1]], name[array_of_2_max[1][1]]]
  end

  def self.almost_average(name, salary)
    average_salary = salary.sum / salary.size
    res_index = salary.index(salary.min_by { |n| (n - average_salary).abs })
    name[res_index]
  end

  def self.delete_min!(name, salary)
    delete_index = salary.index(salary.min)
    salary.delete_at(delete_index)
    name.delete_at(delete_index)
  end
end
