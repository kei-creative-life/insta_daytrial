class ProfilesController < ApplicationController
  def index; end

  def new
    @profile = current_user.profile.build
  end

  def create
    @profile_image = current_user.build(profile_params)
    if @profile_image.save
      redirect_to profiles_path
    else
      render :new
    end
  end

  private

  def profile_params
    params.require(:image)
  end
end
