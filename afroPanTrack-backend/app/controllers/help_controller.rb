class HelpController < ApplicationController
    skip_before_action

    def index
        helps = Help.all
        allHelps = helps.map{|help| HelpSerializer.new(help)}
        allHelpers = Helper.all
        render json: {AllHelp: allHelps, AllHelpers: allHelpers}
    end

    def userHelps
        # user = User.find(params[:user_id])
        myHelps = Help.all.select{|help| help.requestor_id == params[:user_id]}
        allMyHelps = myHelps.map{|help| HelpSerializer.new(help)}
        render json: {myHelps: allMyHelps}
    end

    def create
        help = Help.create!(help_params)
        helps = Help.all
        allHelps = helps.map{|help| HelpSerializer.new(help)}
        if help.valid?
            render json: {AllHelps: allHelps}
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
        helps = Help.all
        allHelps = helps.map{|help| HelpSerializer.new(help)}
        render json: {AllHelps: allHelps}
    end

    private
    def help_params
        params.permit(:id, :user_id, :description, :date_requested, :country, :state, :city, :lga, :city_town_or_village, :date_required,
             :helper_id, :status, :help_offer_date, :date_completed, :request_verified, :request_verified_by, :help_offer_verified, :help_offer_verified_by, :comments)
    end
end
