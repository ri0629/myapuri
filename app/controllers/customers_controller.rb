class CustomersController < ApplicationController
  def index
    @customers = Customer.all
end

def new
 @customer = Customer.new
end

def create
  Customer.create(customer_params)
  redirect_to '/'
end

def edit
  @customer = Customer.find(params[:id])
end

def update
  customer = Customer.find(params[:id])
  customer.update(customer_params)
  redirect_to root_path
end


private
  def customer_params
    params.require(:customer).permit(:name, :phone)
  end







end
