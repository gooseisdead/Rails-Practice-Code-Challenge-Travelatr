class DestinationsController < ApplicationController
    before_action :find_destination, only: [:show, :edit, :update, :destroy]

    def index
        @destinations = Destination.all 
    end

    def show    
    end

    def new
        @destination = Destination.new
    end

    def update
        @destination.update(destination_params)
        redirect_to destination_path(@destination)
    end

    def create
        @destination = Destination.create(destination_params)
        redirect_to destination_path(@destination)
    end

    def edit
    end

    def destroy
        redirect_to destinations_path
    end



    private

    def destination_params
        params.require(:destination).permit(:name, :country)
    end

    def find_destination
        @destination = Destination.find(params[:id])
    end
end

