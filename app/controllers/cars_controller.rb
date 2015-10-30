class CarsController < ApplicationController
	before_action :set_car, only: [:show]

	def index
		@cars = Car.all
	end

	def show
	end

	def new
		@car = Car.new
		@client = Client.new
	end

	def create
		@car = Car.new(car_params)
			if @car.save
				redirect_to "/", notice: "En breve le enviaremos enviando su cotizacion. Gracias por preferirnos."
			else
				@car.errors
				redirect_to 'cars/new'
			end
	end


	private
	# Use callbacks to share common setup or constraints between actions.
	def set_car
	  @car = Car.find(params[:id])
	end

	# Never trust parameters from the scary internet, only allow the white list through.
	def car_params
	  params.require(:car).permit(:brand, :price, :model, :year, :use, :coverage, :comments)
	end

end
