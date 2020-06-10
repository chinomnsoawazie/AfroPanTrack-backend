class HelpController < ApplicationController
    skip_before_action

    def index
        helps = Help.all
        # byebug
        render json: {AllHelp: helps}
    end

    def userHelps
        user = User.find(params[:user_id])
        myHelps = user.helps
        render json: {myHelps: myHelps}
    end

    def create
        help = Help.create!(help_params)
        if help.valid?
            render json: {AllHelps: Help.all}
        else
            render json: {error: 'Help not created'}, status: :unprocessable_entity
        end
    end
    def update
        help = Help.find(params[:id])
        if help.update(help_params)
          render json: help
        else
          render json: help.errors, status: :unprocessable_entity
        end
      end

    def destroy
        Help.destroy(params[:id])
    end

    private
    def help_params
        params.permit(:id, :user_id, :requestor_id, :description, :date_requested, :country, :state, :city, :lga, :city_town_or_village, :date_required,
             :helper_id, :status, :help_offer_date, :date_completed, :request_verified, :request_verified_by, :help_offer_verified, :help_offer_verified_by, :comments)
    end
end
