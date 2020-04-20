class WorkoutsController < ApplicationController

    def index
        @workouts = Workout.all
        render json: @workouts
    end

    def create
        # byebug
        @workout = Workout.create(params.require(:workout).permit(:name))
        render json: @workout
    end



end
