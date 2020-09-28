class BioCardsController < ApplicationController

    def create
        bio_card = BioCard.new(bio_card_params)
        if bio_card.save
            render json: bio_card
        else
            messages = biocard.errors.full_messages.join(', ')
            render json: {error: messages}
        end
    end

    def update
        bio_card = BioCard.find(params[:id])
        if bio_card.update(bio_card_params)
            render json: bio_card
        else
            messages = bio_card.errors.full_messages.join(', ')
            render json: {error: messages}
        end
    end

    def show
        bio_card = BioCard.find_by(actor_id: params[:id])
        if bio_card
            render json: bio_card
        else
            messages = bio_card.errors.full_messages.join(', ')
            render json: { error: messages }
        end
    end

    private
    def bio_card_params
        params.require(:bio_card).permit(:age, :weight, :height, :eye_color, :hair_color, :actor_id)
    end

end
