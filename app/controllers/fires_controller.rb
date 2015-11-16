class FiresController < ApplicationController
	before_action :set_fire, only: [:show]

	def index
		@fires = Fire.all
	end

	def show
	end

	def new
		@client = Client.new
		@fire = Fire.new
	end

	def create
		@client = Client.new(client_params)
		@fire = Fire.new(fire_params)
			if @fire.save && @client.save
				redirect_to "/", notice: "En breve le enviaremos enviando su cotizacion. Gracias por preferirnos."
			else
				@fire.errors || @client.errors
				redirect_to '/', notice: "Porfavor intente nuevamente."
			end
	end

	private
	# Use callbacks to share common setup or constraints between actions.
	def set_fire
	  @fire = Fire.find(params[:id])
	end

	def client_params
	  params.require(:client).permit(:fullname, :email, :phone, :cellphone, :fax, :birthdate, :gender, :age)
	end
	# Never trust parameters from the scary internet, only allow the white list through.
	def fire_params
	  params.require(:fire).permit(:address, :value_of_goods, :comments)
	end
end
