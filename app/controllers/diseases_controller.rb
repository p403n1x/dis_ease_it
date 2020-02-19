class DiseasesController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @diseases = Disease.all
  end

  def show
    @disease = Disease.find(params[:id])
  end

  def new
    @disease = Disease.new
  end

  def create
    @disease = Disease.new(disease_params)
    @disease.image = "sample.jpg"

    if @disease.save
      redirect_to disease_path(@disease)
    else
      render :new
    end
  end

  def destroy
  end

private

  def disease_params
    params.require(:disease).permit(:name, :description)
  end

end
