class ReservationsController < ApplicationController
	def index
		@latest_reservations = Reservation.all
	end
	def create
		@reservation = Reservation.new
		@reservation.first_name = params[:reservation][:first_name]
		@reservation.last_name = params[:reservation][:last_name]
		@reservation.contact_number = params[:reservation][:contact_number]
		@reservation.email = params[:reservation][:email]
		@reservation.room_number = params[:reservation][:room_number]
		@reservation.number_of_people = params[:reservation][:number_of_people]
		@reservation.start_date = params[:reservation][:start_date]
		@reservation.end_date = params[:reservation][:end_date]
		@reservation.save
		redirect_to :action => :index
 	end
	def new
		@reservation = Reservation.new
	end
	def show
		@reservation = Reservation.find(params[:id])
	end
end
