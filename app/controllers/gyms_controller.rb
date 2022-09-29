class GymsController < ApplicationController
    def show
        gym = find_gym
        render json: gym
    end

    def destroy
        find_gym.destroy!
        head :no_content
    end

    private

    def find_gym
        Gym.find(params[:id])
    end
end
