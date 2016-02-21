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
		@client = Client.create(client_params)
		@fire = Fire.new(fire_params)
		@fire.client_id = @client.id
			if @fire.save && @client.save
				UserMailer.fire_policy_email(@client, @fire).deliver_now
				redirect_to "/", notice: "En breve recibira un email de confirmacion. Gracias por preferirnos"
			else
				@fire.errors || @client.errors
				redirect_to '/fires/new', notice: "Ingrese un email valido e intentelo nuevamente."
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
