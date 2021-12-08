class ApplicationController < ActionController::Base
  # before_action :authenticate_user!
  def change_avatar
    current_user.update(avatar_params)
    redirect_to wishlists_path
  end

  private

  def avatar_params
    params.require(:user).permit(:photo)
  end
end
