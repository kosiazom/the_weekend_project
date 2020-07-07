class PartiesController < ApplicationController

    def index
        @parties = Party.all
    end

    def show
        @party = Party.find(params[:id])
    end

    

    private

    def party_params
        params.require(:party).permit(:name, :location, :date, :party_id, :promoter_id)
    end
end
