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
    end

    def destroy
    end


end
