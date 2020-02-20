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
    #@disease.image = "sample.jpg"
    @disease.user_id = current_user.id

    if @disease.save
      redirect_to profil_path
    else
      render :new
    end
  end

  def edit
    @disease = Disease.find(params[:id])
  end

  def update
    @disease = Disease.find(params[:id])
    @disease.user_id = current_user.id
    @restaurant.update(params[:disease])

  end

  def destroy
  end

private

  def disease_params

    params.require(:disease).permit(:name, :description, :user_id, :image)



  end

end
