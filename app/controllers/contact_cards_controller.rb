class ContactCardsController < ApplicationController
    
    def create
        contact_card = ContactCard.new(contact_card_params)
        if contact_card.save
            render json: contact_card
        else
            messages = contact_card.errors.full_messages.join(', ')
            render json: {error: messages}
        end
    end

    def update
        contact_card = ContactCard.find(params[:id])
        if contact_card.update(contact_card_params)
            render json: contact_card
        else
            messages = contact_card.errors.full_messages.join(', ')
            render json: {error: messages}
        end
    end

    def show
        contact_card = ContactCard.find_by(actor_id: params[:id])
        if contact_card
            render json: contact_card
        else
            messages = contact_card.errors.full_messages.join(', ')
            render json: {error: messages}
        end
    end

    private
    def contact_card_params
        params.require(:contact_card).permit(:email, :phone, :city, :state, :actor_id)
    end
end
