class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]

  def index
    @orders = Order.all
  end

  def new
    @order = Order.new
    @tariff = Tariff.find(params[:tariff_id])
  end

  def show
  end

  def create
    @tariff = Tariff.find(params[:tariff_id])
    @order = Order.new(order_params)
    @order.tariff = @tariff
    if @order.save
      redirect_to order_path(@order)
    else
      render 'new', status: :unprocessable_entity
    end
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
    params.require(:order).permit(:number, :tariff_id)
  end

  def set_order
    @order = Order.find(params[:id])
  end
end
