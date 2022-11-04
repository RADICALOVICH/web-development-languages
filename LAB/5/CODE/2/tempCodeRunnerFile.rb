# frozen_string_literal:true

require_relative 'functions'
name = []
salary = []
def input(name, salary)
  print "\nДля остановки ввода вместо ввода фамилии сотрудника нажмите Enter"
  loop do
    print "\nВведите фамилию сотрудника: "
    name_input = gets.chomp
    break if name_input == ''

    name << name_input
    print "\nВведите зарплату этого сотрудника: "
    salary_input = gets.chomp.to_i
    salary << salary_input
  end
end

def result_output(name, salary)
  print "\n Фамилия сотрудника, зарплата которого наименее отклоняется от средней:
   #{Employers.almost_average(name, salary)}"
  print "\n Фамилии двух работников с наибольшей зарплатой: "
  Employers.find_2_max(name, salary).each { |n| print "#{n}, " }
  Employers.delete_min!(name, salary)
  print "\nФамилии сотрудников, после удаления: "
  name.each { |n| print "#{n} " }
  print "\nЗарплаты сотрудников, после удаления: "
  salary.each { |n| print "#{n} " }
end

input(name, salary)
print "\nФамилии сотрудников: "
name.each { |n| print "#{n} " }
print "\nЗарплаты сотрудников: "
salary.each { |n| print "#{n} " }
result_output(name, salary)
