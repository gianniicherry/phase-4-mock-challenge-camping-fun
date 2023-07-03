class ActivitiesController < ApplicationController
    def index
        activities = Activity.all
        render json: activities
    end

    def destroy
        activity = Activity.find_by(id: params[:id])
    
        if activity.nil?
          render json: { error: "Activity not found" }, status: :not_found
        else
          activity.destroy
          render json: { message: "Activity deleted" }
        end
      end
end
