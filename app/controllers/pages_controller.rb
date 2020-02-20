class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    @diseases = Disease.all
    @selection = @diseases.sample(2)

  end


  def profil
  end

  def index
    @diseases = Disease.where(user_id: current_user)
  end

 def destroy
    @disease = Disease.find(params[:format])
    @disease.destroy
    redirect_to profil_index_path
  end

end
