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
		binding.pry
		@client = Client.create(client_params)
		@car = Car.new(car_params)
		binding.pry
		@car.client_id = @client.id
			if @car.save && @client.save
				#send email to the user when the form is submited
				UserMailer.car_policy_email(@client, @car).deliver_now
				redirect_to "/", notice: "En breve recibira un email de confirmacion. Gracias por preferirnos"
			else
				@car.errors || @client.errors
				redirect_to '/cars/new', notice: "Ingrese un email valido e intentelo nuevamente."
			end
	end

	private
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