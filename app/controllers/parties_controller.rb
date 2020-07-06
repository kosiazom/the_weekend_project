class PartiesController < ApplicationController

    def index
        @parties = Party.all
    end

    def show
        @party = Party.find(params[:id])
    end

    def new
        @party = Party.new
    end

    def create
        @party = Party.new(party_params)
        @party.save
        redirect_to party_path(@party)
    end

    private

    def party_params
        params.require(:party).permit(:location, :date, :party_id, :promoter_id)
    end
end
