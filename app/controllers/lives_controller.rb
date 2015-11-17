class LivesController < ApplicationController
	before_action :set_life, only: [:show]

	def index
		@lives = Life.all
	end

	def show
	end

	def new
		@client = Client.new
		@life = Life.new
	end

	def create
		@client = Client.new(client_params)
		@life = Life.new(life_params)
		@life.client_id = @client.id
			if @life.save && @client.save
				redirect_to "/", notice: "En breve le enviaremos enviando su cotizacion. Gracias por preferirnos."
			else
				@life.errors || @client.errors
				redirect_to '/', notice: "Porfavor intente nuevamente."
			end
	end

	private
	# Use callbacks to share common setup or constraints between actions.
	def set_life
	  @life = Life.find(params[:id])
	end

	def client_params
	  params.require(:client).permit(:fullname, :email, :phone, :cellphone, :fax, :birthdate, :gender, :age)
	end
	# Never trust parameters from the scary internet, only allow the white list through.
	def life_params
	  params.require(:life).permit(:sum_assured, :marital_status, :comments)
	end
end
