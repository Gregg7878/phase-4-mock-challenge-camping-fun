class SignupsController < ApplicationController
    def create
        signup = Signup.new(signup_params)
        if signup.save
            render json: { id: activity.id, name: activity.name, difficulty: activity.difficulty }, status: :ok
        else
          render json: { errors: "Validation errors"}, status: :unprocessable_entity
        end
      end
    
      private
    
      def signup_params
        params.permit(:time, :camper_id, :activity_id)
      end
    
    end
end
