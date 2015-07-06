class ReservationsController < ApplicationController
before_filter :load_product
before_filter :ensure_logged_in, only: [:create, :destroy]

  def show
    @reservation = Reservation.find(params[:id])
  end

  def create
    @reservation = @restaurant.reservations.build(reservation_params)
    @reservation.user = current_user

    if @reservation.save
        redirect_to reservations_path, notice: 'Review created successfully'
    else
        render 'reservations/show'
    end
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
  end

  private
  def reservation_params
    params.require(:reservation).permit(:comment, :restaurant_id)
end

def load_product
    @restaurant = Restaurant.find(params[:restaurant_id])
end

end