class Admins::PasswordsController < Devise::PasswordsController
  layout 'admins'

  protected

  def after_resetting_password_path_for(_resource)
    admins_root_path
  end
end
