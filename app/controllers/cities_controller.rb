class CitiesController < ApplicationController

	def index
		@cities = City.find_all_by_state_id(params[:state])
		respond_to  do |format|
			format.js {render json: @cities}
		end
	end
  
end
