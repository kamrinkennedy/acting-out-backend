class BioCardsController < ApplicationController

    def create
    end

    def edit
    end

    def show
        bio_card = BioCard.all.find(actor_id: params[:id])
        
        render json: bio_card
    end

    def destroy
    end

    private
    def bio_card_params
        params.require(:bio_card).permit(:age, :weight, :height, :eye_color, :hair_color)
    end

end
