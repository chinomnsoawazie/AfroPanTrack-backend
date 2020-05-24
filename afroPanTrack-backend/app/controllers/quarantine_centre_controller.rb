class QuarantineCentreController < ApplicationController
    def index
        centres = QuarantineCentre.all
        render json: {AllQuarantineCentres: centres}
    end

    def create
        centre = QuarantineCentre.create!(quarantineCentres_params)
        if centre.valid?
            render json: {AllCentres: QuarantineCentre.all.with_attached_file}
        else 
            render json: {error: 'Quarantine centre not created'}, status: :unprocessable_entity
        end
    end

    def update
        centre = QuarantineCentre.find(params[:id])
        if centre.update(quarantineCentres_params)
          render json: centre
        else
          render json: centre.errors, status: :unprocessable_entity
        end
      end

    def destroy
        QuarantineCentre.destroy(params[:id])
        render json: QuarantineCentre.all.with_attached_file
    end

    private
    def quarantineCentres_params
        params.permit(:id, :user_id, :name, :country, :state, :city, :lga, :city_town_or_village, :nearest_landmark, :lat, :lng, :phone, :email, :verified, :verified_by, :verification_notes, :file)
    end
end
