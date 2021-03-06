class HealthsController < ApplicationController
	before_action :set_health, only: [:show]

	def index
		@healths = Health.all
	end

	def show
	end

	def new
		@client = Client.new
		@health = Health.new
	end

	def create
		@client = Client.create(client_params)
		@health = Health.new(health_params)
		@health.client_id = @client.id
			if @health.save && @client.save
				UserMailer.health_policy_email(@client, @health).deliver_now
				redirect_to "/", notice: "En breve recibira un email de confirmacion. Gracias por preferirnos"
			else
				@health.errors || @client.errors
				redirect_to '/healths/new', notice: "Ingrese un email valido e intentelo nuevamente."
			end
	end

	private
	# Use callbacks to share common setup or constraints between actions.
	def set_health
	  @health = Health.find(params[:id])
	end

	def client_params
	  params.require(:client).permit(:fullname, :email, :phone, :cellphone, :fax, :birthdate, :gender, :age)
	end
	# Never trust parameters from the scary internet, only allow the white list through.
	def health_params
	  params.require(:health).permit(:comments)
	end
end
