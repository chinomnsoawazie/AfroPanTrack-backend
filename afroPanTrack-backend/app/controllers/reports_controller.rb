class ReportsController < ApplicationController

    def index
        reports = Report.all.with_attached_file
        render json: {AllReports: reports}
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
    def report_params
        params.require(:report).permit(:id, :user_id, :country, :state, :city, :lga, :city_town_or_village, :nearest_landmark, :persons_involved, :description, :lat, :lng, :medical_attention_observed, :medical_attention_description, :can_we_follow_up, :verified, :verified_by, :verification_notes, :file)
    end
end
