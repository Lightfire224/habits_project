class HabitsController < ApplicationController
    def index
        @habits = Habit.all 
    end

    def show
        @habit = Habit.find(params[:id])
    end

    def new
        @habit = Habit.new
    end

    def create
        @habit = Habit.create(habits_params)
        redirect_to habit_path(@habit)
    end

    def edit
        @habit = Habit.find(params[:id])
    end

    def update
        @habit = Habit.find(params[:id])
        @habit.update(habits_params)
        redirect_to habit_path(@habit)
    end

    def destroy
        @habit = Habit.find(params[:id])
        @habit.destroy
        redirect_to habits_path
    end

    private

    def habits_params
        params.require(:habit).permit(:name, :description)
    end
end
