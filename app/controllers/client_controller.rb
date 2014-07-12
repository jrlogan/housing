class ClientController < ApplicationController
	def profile
		@client = Client.find(params[:id])
	end
end
