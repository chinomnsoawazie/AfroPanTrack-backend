class UpdateController < ApplicationController
    def index
        updates = Update.all
        render json: {AllUpdates: updates}
    end

    def create
        update = Update.create!(update_params)
        if update.valid?
            render json: {AllUpdates: Update.all}
        else 
            render json: {error: 'Update not created'}, status: :unprocessable_entity
        end
    end

    def update
        update = Update.find(params[:id])
        if update.update(update_params)
          render json: update
        else
          render json: update.errors, status: :unprocessable_entity
        end
    end

    def destroy
        Update.destroy(params[:id])
        render json: Update.all
    end

    private
    def update_params
        params.permit(:id, :description, :organization, :country, :source_or_link, :date)
    end
end
