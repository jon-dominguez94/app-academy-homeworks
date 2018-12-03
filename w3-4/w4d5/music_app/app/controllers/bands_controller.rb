class BandsController < ApplicationController

  def index
  end

  def new
  end

  def create
    @band = Band.new(band_params)
    if @band.save
      flash[:notice] = "#{@band.name} registered"
      redirect_to bands_url
    else
      flash.now[:errors] = @band.errors.full_messages
      render :new
    end
  end

  def edit
    @band = Band.find_by(id: params[:id])
  end

  def show
  end

  def update
    @band = Band.find_by(id: params[:id])
    if @band.update_attributes(band_params)
      flash[:notice] = "#{@band.name} updated"
      redirect_to bands_url
    else
      flash[:errors] = @band.errors.full_messages
      redirect_to edit_band_url(@band)
    end
  end

  def destroy
    band = Band.find_by(id: params[:id])
    flash[:notice] = "#{band.name} deleted"
    band.delete if band
    redirect_to bands_url
  end

  def band_params
    params.require(:band).permit(:name)
  end
end
