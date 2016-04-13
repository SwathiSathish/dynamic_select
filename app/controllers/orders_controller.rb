class OrdersController < ApplicationController

	def index
		@orders = Order.all
	end

  def new
    @order = Order.new
  end

  def subregion_options
    render partial: 'subregion_select'
  end

  def create
  	@order = Order.new(order_params)
  	if @order.save
  		redirect_to orders_path
  	else
  		render action: "new"
  	end
  end

  private

  def order_params
  	params.require(:order).permit(:country_code, :subregion_code)
  end
end
