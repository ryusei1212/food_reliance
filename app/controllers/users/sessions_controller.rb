class Users::SessionsController < Devise::SessionsController

  private

  def after_sign_in_path_for(_resource)
    users_user_path(current_user)
  end
end
