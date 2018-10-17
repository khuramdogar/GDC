class Users::SessionsController < Devise::SessionsController

  def create
    @user = User.find_by_email(params[:email])
    if @user

      @user.authentication_token =  Devise.friendly_token

      if @user.save
        if @user.valid_password?(params[:password])
          sign_in("user", @user)
          render status: :created, template: "users/show"
          return
        end
      else
        return invalid_login_attempt
      end
    end

    invalid_login_attempt
  end

  def destroy

    @user = User.find_by_authentication_token(request.headers[:stoken])

    if @user.present?
      @user.update(authentication_token: nil)
      sign_out @user
      render json: {success: true, message: 'Successfully signed out'}
    else
      render status: :not_found , json: {errors: "User not exist"}
    end

  end

  protected

  def invalid_login_attempt
    render json: {success: false, message: "Invalid Username or password"}, status: 401
  end
end
