class ApartmentsController < ApplicationController

	def index
		@apartments= Apartment.all
	end 

	def new
		@apartment = Apartment.new
	end

	def create 
		@apartment = Apartment.new(apartment_params)

		if @article.save
			redirect_to @apartment
		else 
			render 'new'
		end
	end

	def show
		@apartment =Apartment.find(params[:id])
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
	def article_params
		params.require(:article).permit(:rent, :floor, :max_capacity, :pets_allowed, :wheelchair_accessible, :smoking, :information)
	end 
end
