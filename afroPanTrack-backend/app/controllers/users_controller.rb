class UsersController < ApplicationController

    skip_before_action :authorized, onliy: [:api_keys]

    def api_keys
      render json: { google_maps_api_key: ENV["GOOGLE_MAPS_API_KEY"], myEmail: ENV["MY_EMAIL"] }
    end

    def check_username
      user_to_check = User.find_by(username: params[:username])
      if user_to_check
        render json: 'Username not available'
      else
        render json: 'Username available'
      end
    end

    def confirm_email
      confirm_token = "http://localhost:3000/users/confirm_email/" + params[:confirm_token]
      user = User.find_by_confirm_token(confirm_token)
      if user
        user.email_confirmed = true
        user.confirm_token = nil
        user.allowed_to_request = true
        user.allowed_to_report = true
        user.save(:validate => false)
        redirect_to "http://localhost:3001/"
      else
        render json: 'Sorry. User does not exist'
      end
    end

    def ban_user_from_reporting
      user = User.find_by(username: params[:username])
      if user
        user.allowed_to_report = false
        user.save(:validate => false)
      else
        render json: 'User does not exist'
      end
    end

    def ban_user_from_requesting_help
      user = User.find_by(username: params[:username])
      if user
        user.allowed_to_request = false
        user.save(:validate => false)
      else
        render json: 'User does not exist'
      end
    end

    def ban_user
      user = User.find_by(username: params[:username])
      if user
        user.allowed_to_request = false
        user.allowed_to_report = false
        user.save(:validate => false)
      else
        render json: 'User does not exist'
      end
    end

    def contact_user_by_email

    end

    def contact_user_by_text
    end
   
    def create
      @user = User.create(user_params)
      if @user.valid?
        UserMailer.registration_confirmation(@user).deliver_later
          render json: { user: UserSerializer.new(@user), token: token(@user.id), google_maps_api_key: ENV["GOOGLE_MAPS_API_KEY"], myEmail: ENV["MY_EMAIL"]}, status: :created
        else
          render json: { error: 'failed to create user' }, status: :not_acceptable
      end
    end
  
    def update
            user = User.find(params[:id])
            if user.update(user_params)
              render json: user
            else
              render json: user.errors, status: :unprocessable_entity
            end
    end
  
    def destroy
      User.destroy(params[:id])
    end
  
    private
    def user_params
      params.permit(:id, :first_name, :ban_status, :ban_date, :last_name, :username, :email, :city, :lga, :password, :phone_no, :country, :state, :street_address, :facebook_name, :twitter_handle, :confirm_token, :email_confirmed, :admin, :moderator, :allowed_to_request, :allowed_to_report)
    end
end
