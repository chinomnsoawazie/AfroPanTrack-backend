class BarterController < ApplicationController
    skip_before_action

    def index
        barters = Barter.all
        render json: {AllBarter: barters}
    end

    def userBarters
        user = User.find(params[:user_id])
        myBarters = user.barters
        render = json: {myBarters: myBarters}
    end

    def create
        barter = Barter.create!(barter_params)
        if barter.valid?
            render json: {AllBarter: barter}
        else
            render json: {error: 'Barter not created'}, status: :unprocessable_entity
        end
    end

    def update
        barter = Barter.find(params[:id])   
        if barter.update(barter_params)
          render json: barter
        else
          render json: barter.errors, status: :unprocessable_entity
        end
      end

    def destroy
        Barter.destroy(params[:id])
    end

    private
    def barter_params
        params.permit(:id, :user_id, :requestor_id, :item_description, :quantity, :category, :done, :receiver_id, :date_done, :verified, :verified_by, :comments)
    end


end
