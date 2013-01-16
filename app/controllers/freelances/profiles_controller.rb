
class Freelances::ProfilesController < ApplicationController

  before_filter :authenticate_freelance!

  def show
    @profile = current_freelance.profile
    respond_with = @profile

  end

  def edit
    @profile = current_freelance.profile
    respond_with @profile
  end

  def new
    @profile = Profile.new
    @profile.build_address
  end

  def create
    @profile = current_freelance.build_profile(params[:profile])
    @profile.save
    respond_with [:freelances,:profiles]
  end

  def update
    @profile = current_freelance.profile
    @profile.update_attributes(params[:profile])
    respond_with [:freelances,:profiles]
  end

  def destroy
    @profile = current_freelance.profile
    @profile.destroy
    redirect_to root_path
  end
end
