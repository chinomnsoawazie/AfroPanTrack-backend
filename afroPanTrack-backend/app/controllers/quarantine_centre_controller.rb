class QuarantineCentreController < ApplicationController
    def index
        centres = QuarantineCentre.all
        render json: {AllQuarantineCentres: centres}
    end

    def create
        report = Report.create!(report_params)
        byebug
        if report.valid?
            render json: {AllReports: Report.all.with_attached_file}
        else 
            render json: {error: 'Report not created'}, status: :unprocessable_entity
        end
    end

    def destroy
        Report.destroy(params[:id])
        render json: Report.all.with_attached_file
    end

    private
    def quarantineCentres_params
        params.require(:quarantineCentre).permit(:id, :user_id, :name, :country, :state, :city, :lga, :city_town_or_village, :nearest_landmark, :lat, :lng, :phone, :email, :verified, :verified_by, :verification_notes, :file)
    end
end
