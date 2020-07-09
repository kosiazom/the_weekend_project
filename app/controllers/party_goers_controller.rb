class PartyGoersController < ApplicationController

    before_action :require_logged_in, only: [:show]

    def show
      
        @party_goer = PartyGoer.find(params[:id])
    end


    def attend

    end

    def new
    end
  
    def create
      @party_goer = PartyGoer.create(pg_params)
      return redirect_to controller: 'party_goers', action: 'new' unless @party_goer.save
      session[:user_id] = @party_goer.id
      redirect_to controller: 'welcome', action: 'home'
    end
  
    private
  
    def pg_params
      params.require(:party_goer).permit(:username, :tagline, :age, :password, :password_confirmation)
    end
  
end
