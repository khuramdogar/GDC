class Users::RegistrationsController < Devise::RegistrationsController

  def create
    @user = User.new(user_params)
    @user.authentication_token = Devise.friendly_token

    if @user.save
      render status: :created, template: "users/show"
    else
      render json: resource.errors, status: 422
    end
  end

  protected

  def user_params
    params.require(:registration).permit(:name, :email, :password, :matric_marks, :password_confirmation)
  end
end
