class Users::RegistrationsController < Devise::RegistrationsController
  private

  def sign_up_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :prefecture, :address, :phone_number, :delivery_frequency, :plan_type, :allergy_note)
  end

  def after_sign_up_path_for(resource)
    users_user_path(current_user)
  end
end
