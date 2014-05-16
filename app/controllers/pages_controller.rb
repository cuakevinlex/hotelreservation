class PagesController < ApplicationController
	def index
		@latest_reservations = Reservation.last(5)
	end
end
