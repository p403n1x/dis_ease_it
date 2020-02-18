class DiseasesController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @diseases = Disease.all
  end

  def show
    @disease = Disease.find(params[:id])
  end

  def new
  end

  def create
  end

  def destroy
  end



end
