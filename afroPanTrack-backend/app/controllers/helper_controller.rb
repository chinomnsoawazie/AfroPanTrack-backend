class HelperController < ApplicationController
    def index
        helpers = Helper.all
        render json: {AllHelpers: helpers}
    end

    def create
        helper = Helper.create(helper_params)
        # byebug
        if helper.valid?
            # Idea is to render the help request so that the help can be updated in the frontend
            render json: {AllHelpRequests: Help.all}
        else 
            render json: {error: 'Helper not created'}, status: :unprocessable_entity
        end
    end

    def update
        helper = Helper.find(params[:id])
        if helper.update(helper_params)
          render json: helper
        else
          render json: helper.errors, status: :unprocessable_entity
        end
    end

    def destroy
        Helper.destroy(params[:id])
        # Once again, render all helps so that the frontend will be updated with regards to the eliminated helper
        render json: Help.all
    end

    private
    def helper_params
        params.permit(:id, :user_id, :help_id)
    end
end
