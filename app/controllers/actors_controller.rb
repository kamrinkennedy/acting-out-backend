class ActorsController < ApplicationController

    def index
        actors = Actor.all

        render json: actors 
    end

    def create
        actor = Actor.new(actor_params)
        if actor.save
            render json: actor
        else
            render json: {error: 'Unable to Create Actor'}
        end
    end

    def update
        actor = Actor.find(params[:id])
        actor.picture_url = actor_params[:picture_url]
        if actor.save 
            render json: actor
        else
            messages = actor.errors.full_messages.join(', ')
            render json: {error: 'Could not upload picture'}
        end
    end

    def show 
        actor = Actor.find(params[:id])

        render json: actor
    end


    private

    def actor_params
        params.require(:actor).permit(:first_name, :last_name, :picture_url)
    end


end
