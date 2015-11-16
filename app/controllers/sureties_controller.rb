class SuretiesController < ApplicationController
	before_action :set_surety, only: [:show]

	def index
		@suretys = Surety.all
	end

	def show
	end

	def new
		@client = Client.new
		@surety = Surety.new
	end

	def create
		@client = Client.new(client_params)
		@surety = Surety.new(surety_params)
			if @surety.save && @client.save
				redirect_to "/", notice: "En breve le enviaremos enviando su cotizacion. Gracias por preferirnos."
			else
				@surety.errors || @client.errors
				redirect_to '/', notice: "Porfavor intente nuevamente."
			end
	end


	private
	# Use callbacks to share common setup or constraints between actions.
	def set_surety
	  @surety = Surety.find(params[:id])
	end

	def client_params
	  params.require(:client).permit(:fullname, :email, :phone, :cellphone, :fax, :birthdate, :gender, :age)
	end

	# Never trust parameters from the scary internet, only allow the white list through.
	def surety_params
	  params.require(:surety).permit(:surety_type, :value, :percentage, :comments)
	end
end
