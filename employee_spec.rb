require 'rspec'
require_relative 'employee'

describe Employee do
#---------------expected input-----------------#

it 'takes five parameters and returns an instance of Employee' do
  (Employee.new('Ryan', 'Buchholtz', 100000, 30000, 28)).should be_an_instance_of Employee
end

it 'takes less than five parameters and returns an instance of Employee' do
  (Employee.new('Ryan', 100000, 30000, 28)).should be_an_instance_of Employee
end

it 'takes less than five parameters and returns an instance of Employee' do
  (Employee.new('Ryan', 'Buchholtz', 30000, 28)).should be_an_instance_of Employee
end

it 'takes less than five parameters and returns an instance of Employee' do
  (Employee.new('Ryan', 'Buchholtz', 28)).should be_an_instance_of Employee
end

it 'takes less than five parameters and returns an instance of Employee' do
  (Employee.new('Ryan', 'Buchholtz')).should be_an_instance_of Employee
end


#--------------edge case input------------------#
end



describe TaxCalculator do
#---------------expected input-----------------#

it 'takes an instance of Employee and calculates taxes due or refund owed' do
  (TaxCalculator.new).should be_an_instance_of TaxCalculator
end




#--------------edge case input------------------#
end
