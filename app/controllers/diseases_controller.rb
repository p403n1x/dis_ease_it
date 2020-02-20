require "open-uri"

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
    @disease.image.attach(io: URI.open(params[:disease][:image]), filename: "photo.jpg", content_type: "image/jpg")
    if @disease.save
      redirect_to profil_path
    else
      render :new
    end
  end


#def create
    #@flat =Flat.new(flat_params)
    #@flat.photo.attach(io: params[:flat][:photo], filename: “photo.jpg”, content_type: “image/jpg”)
    #@flat.user = current_user
    #if @flat.save
      #redirect_to flat_path(@flat)
    #else
      #render :new
    #end
  #end









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

    params.require(:disease).permit(:name, :description, :user_id)



  end

end
