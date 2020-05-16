class FlatsController < ApplicationController
  before_action :find_flat, only: [:show]
  def index
    @flats = Flat.all
  end

  def
    raise
  end

  def new
    @flat = Flat.new
  end

  def create
    flat = Flat.new(flat_params)
    flat.save
    redirect_to flat_path(flat)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def find_flat
    @flat = Flat.find(params[:id])
  end

  def flat_params
    params.require(:flat).permit(:name, :address, :number_of_guests, :price_per_night)
  end
end
