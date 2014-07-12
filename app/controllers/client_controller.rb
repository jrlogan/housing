class ClientController < ApplicationController
	def list
		@client = Client.all
	end

	def profile
		@client = Client.find
	end
end
