#enconding: utf-8

class IndicationsController < ApplicationController

	before_filter :authenticate_searcher!

	def index
		@indications = current_searcher.indications
		respond_with @indications
	end

	def indicate
		freelance = Profile.find(params[:id]).freelance
		current_searcher.indicate(freelance)
		flash[:notice] = "Indicao realizada com Sucesso"
	end
end
