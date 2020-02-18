class BookingsController < ApplicationController
  before_action :set_disease, except: [:index, :show]

  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @disease = Disease.find(params[:disease_id])
    @booking = Booking.new
  end

  def create
    @booking = @disease.bookings.new(disease_params)
    @booking.user_id = current_user.id

    if @booking.save
      redirect_to diseases_path
    else
      render :new
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to diseases_path
  end

  private

  def set_disease
    @disease = Disease.find(params[:disease_id])
  end

  def disease_params
    params.require(:booking).permit(:start_date, :end_date)
  end

end
