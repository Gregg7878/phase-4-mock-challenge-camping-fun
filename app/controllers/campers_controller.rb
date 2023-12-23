class CampersController < ApplicationController
    def index
        camper = Camper.all
        render json: {
            camper_id:camper.camper_id,
            name:camper.name,
            age:camper.age
        }, status: :ok
    end
    def show
        camper = Camper.find_by(id:params[:id])
        if camper
            render json: {
                camper_id:camper.camper_id,
                name:camper_id.name,
                age:camper.age,
                activities: camper.activities.map {|activity|
            {
                activity_id:activity.activity_id,
                name:activity.name,
                difficulty:activity.difficulty
            }
                }
            }, status: :ok
        else
            render json: {error: "Camper not found"}, status: :not_found
        end
    end

    def create
        camper = Camper.new(camper_params)
        if camper.save
        render json: camper, status: :ok
        else 
            render json: {error: "validation errors"}, status: :unprocessable_entity
        end
    end

    private

    def camper_params
        params.permit(:name, :age)
    end


end
