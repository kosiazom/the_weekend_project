class PartyGoersController < ApplicationController

    def show
        @party_goer = PartyGoer.find(params[:id])
    end


    def attend

    end
end
