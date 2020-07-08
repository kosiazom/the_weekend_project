class PromotersController < ApplicationController

    def index
        @promoters = Promoter.all
    end
    
    def show
        @promoter = Promoter.find(params[:id])
    end
    
end
