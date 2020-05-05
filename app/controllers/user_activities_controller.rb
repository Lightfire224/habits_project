class UserActivitiesController < ApplicationController
    def index
        @user_activities = UserActivity.all 
    end

    def show
        @user_activity = UserActivity.find(params[:id])
    end

    def new
        @user_activity = UserActivity.new
    end

    def create
        @user_activity = UserActivity.create(user_activity_params)
        redirect_to user_activity_path(@user_activity)
    end

    def edit
        @user_activity = UserActivity.find(params[:id])
    end

    def update
        @user_activity = UserActivity.find(params[:id])
        @user_activity.update(user_activity_params)
        redirect_to user_activity_path(@user_activity)
    end

    def destroy
        @user_activity = UserActivity.find(params[:id])
        @user_activity.destroy
        redirect_to user_activities_path
    end

    private

    def user_activity_params
        params.require(:user_activity).permit(:user_id, :activity_id)
    end
end
