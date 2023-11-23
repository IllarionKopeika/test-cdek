class OrdersController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  def index
    @orders = Order.all
  end

  def new
    @order = Order.new
  end

  def show
  end

  def create
    @order = Order.new(params[:order])
    @order.save

    redirect_to order_path(@order)
  end

  def edit
  end

  def update
    @order.update(order_params)

    redirect_to order_path(@order)
  end

  def destroy
    @order.destroy

    redirect_to orders_path, status: :see_other
  end

  private

  def order_params
    params.require(:order).permit(:number)
  end

  def set_order
    @order = Order.find(params[:id])
  end
end
