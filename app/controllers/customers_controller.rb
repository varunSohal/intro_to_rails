class CustomersController < ApplicationController
  def customers
    @customers = Customer.all
  end
end
