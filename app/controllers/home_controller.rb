class HomeController < ApplicationController
	def index
	end

	def recommend
		@apartment = Apartment.find(params[:id])
		@recommended_clients = ClientRecommender.get_qualifying_clients(@apartment)
	end
end
