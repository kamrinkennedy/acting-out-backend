class ActorsController < ApplicationController

    def index
        actors = Actor.all

        render json: actors 
    end

    def create
    end

    def edit
    end

    def show 
        actor = Actor.find(params[:id])

        render json: actor
    end

    def destroy
    end

    private

    def actor_params
        params.require(:actor).permit(:first_name, :last_name)
    end


end
