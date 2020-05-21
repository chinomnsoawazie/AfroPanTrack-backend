class HelpController < ApplicationController
    skip_before_action

    def index
        helps = Help.all
        render json: {AllHelp: helps}
    end

    def userHelps
        user = User.find(params[:user_id])
        myHelps = user.helps
        render = json: {myHelps: myHelps}
    end

    def create
        help = Help.create!(help_params)
        if help.valid?
            render json: {AllHelps: Help.all}
        else
            render json: {error: 'Help not created'}, status: :unprocessable_entity
        end
    end

    def destroy
        Help.destroy(params[:id])
    end

    private
    def help_params
        params.permit(:id, :requestor_id, :description, :date_requested, :location, :date_required, :helper_id, :status, :help_offer_date, :date_completed, :verified, :verified_by, :comments)
    end
end
