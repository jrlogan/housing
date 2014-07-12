require 'pry'

class ApartmentsController < ApplicationController

	def index
		@apartments= Apartment.all
	end

	def new
		@apartment = Apartment.new
	end

	def create
		ActiveRecord::Base.transaction do
  params[:apartments][:number].to_i.times { Apartment.create(apartment_params) }
end
		@apartments= Apartment.all
		render index
		end

	def show
		@apartment =Apartment.find(params[:id])
		@tenants = @apartment.clients
	end

	def edit
		@apartment=Apartment.find(params[:id])
	end

	def update
		@apartment=Apartment.find(params[:id])

		if @apartment.update(apartment_params)
			redirect_to @apartment
		else
			render 'edit'
		end
	end

	private
	def apartment_params
		params.require(:apartments).permit(:rent, :floor, :max_capacity, :pets_allowed, :wheelchair_accessible, :smoking, :information)
	end
end
