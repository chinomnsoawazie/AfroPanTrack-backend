class LoginController < ApplicationController
    def create
        user = User.find_by(username: user_params[:username])
        # byebug 
        if user && user.authenticate(user_params[:password])  
          render json: { user: UserSerializer.new(user), token: token(user.id), google_maps_api_key: ENV["GOOGLE_MAPS_API_KEY"], myEmail: ENV["MY_EMAIL"]}
        else
          render json: { errors: [ "User not found" ] }, status: :unprocessable_entity
        end 
      end
  
      def persiBarterst
        if decoded_token
          render json: logged_in_user
        end
      end
  
      def user_params
        params.permit(:username, :password)
      end
end
