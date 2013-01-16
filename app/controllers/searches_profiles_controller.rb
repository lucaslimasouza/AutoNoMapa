class SearchesProfilesController < ApplicationController


  def index
    @profiles = Profile.search(params)
    render layout: "application_search"
  end

  def new
    @profile = Profile.new
  end

  def show
  	@profile = Profile.find(params[:id])
    render layout: "application_search"
  end
end
