class EmployeesController < ApplicationController
  def employees
    @employees= Employee.all
  end
end
