class CarsController < ApplicationController
	before_action :set_car, only: [:show]

	def index
		@cars = Car.all
	end

	def show
	end

	def new
		@client = Client.new
		@car = Car.new
	end

	def create
		@client = Client.create(client_params)
		@car = Car.new(car_params)
		@car.client_id = @client.id
			if @car.save && @client.save
				redirect_to "/", notice: "En breve le enviaremos enviando su cotizacion. Gracias por preferirnos."
			else
				@car.errors || @client.errors
				redirect_to '/cars/new', notice: "Porfavor intente nuevamente."
			end
	end

	private
	# Use callbacks to share common setup or constraints between actions.
	def set_car
	  @car = Car.find(params[:id])
	end

	def client_params
	  params.require(:client).permit(:fullname, :email, :phone, :cellphone, :fax, :birthdate, :gender, :age)
	end
	# Never trust parameters from the scary internet, only allow the white list through.
	def car_params
	  params.require(:car).permit(:brand, :price, :model, :year, :use, :coverage, :comments)
	end
end
