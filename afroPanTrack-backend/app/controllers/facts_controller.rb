class FactsController < ApplicationController
    def index
        facts = Fact.all
        render json: {AllFacts: facts}
    end

    def create
        fact = Fact.create!(fact_params)
        # byebug
        if fact.valid?
            render json: {AllFacts: Fact.all}
        else 
            render json: {error: 'Fact not created'}, status: :unprocessable_entity
        end
    end

    def destroy
        Fact.destroy(params[:id])
        render json: Fact.all
    end

    private
    def fact_params
        params.permit(:id, :organization, :source_or_link, :date_published)
    end
end
