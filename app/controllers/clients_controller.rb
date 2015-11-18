class ClientsController < ApplicationController
	before_action :set_car, only: [:show]

	def index
	end

	def show
	end

	def new
		@client = Client.new
	end

	def create
		@client = Client.create(client_params)
	end


	private
	# Use callbacks to share common setup or constraints between actions.
	def set_client
	  @client = Client.find(params[:id])
	end

	# Never trust parameters from the scary internet, only allow the white list through.
	def client_params
	  params.require(:client).permit(:fullname, :email, :phone, :cellphone, :fax, :birthdate, :gender, :age)
	end

end
