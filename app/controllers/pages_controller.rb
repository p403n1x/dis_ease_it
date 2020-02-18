class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    @diseases = Disease.all
    @selection = @diseases.sample(3)
  end





end
