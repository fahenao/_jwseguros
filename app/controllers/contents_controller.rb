class ContentsController < ApplicationController
	before_action :set_content, only: [:show]

	def index
		@contents = Content.all
	end

	def show
	end

	def new
		@client = Client.new
		@content = Content.new
	end

	def create
		@client = Client.create(client_params)
		@content = Content.new(content_params)
		@content.client_id = @client.id
			if @content.save && @client.save
				redirect_to "/", notice: "En breve recibira un email de confirmacion. Gracias por preferirnos"
			else
				@content.errors || @client.errors
				redirect_to '/contents/new', notice: "Ingrese un email valido e intentelo nuevamente."
			end
	end

	private
	# Use callbacks to share common setup or constraints between actions.
	def set_content
	  @content = Content.find(params[:id])
	end

	def client_params
	  params.require(:client).permit(:fullname, :email, :phone, :cellphone, :fax, :birthdate, :gender, :age)
	end
	# Never trust parameters from the scary internet, only allow the white list through.
	def content_params
	  params.require(:content).permit(:value_of_content, :address, :comments)
	end
end
