class ClientsController < ApplicationController
    def show
        client = find_client
        render json: client
    end

    private

    def find_client
        Client.find(params[:id])
    end
end
