class TariffsController < ApplicationController
  before_action :set_tariff, only: [:show]

  def index
    @tariffs = Tariff.all
  end

  def new
    @tariff = Tariff.new
  end

  def show
  end

  def create
    @tariff = Tariff.new(tariff_params)
    if @tariff.save
      redirect_to tariff_path(@tariff)
    else
      render 'new', status: :unprocessable_entity
    end
  end

  private

  def tariff_params
    params.require(:tariff).permit(:tariff_code, :tariff_name)
  end

  def set_tariff
    @tariff = Tariff.find(params[:id])
  end
end
