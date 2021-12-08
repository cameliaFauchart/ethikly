class ApplicationController < ActionController::Base
  # before_action :authenticate_user!

  def default_url_options
  { host: ENV["ethikly"] || "localhost:3000" }
  end

  def change_avatar
    current_user.update(avatar_params)
    redirect_to wishlists_path
  end

  private

  def avatar_params
    params.require(:user).permit(:photo)
  end
end
