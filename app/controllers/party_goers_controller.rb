class PartyGoersController < ApplicationController

    before_action :require_logged_in, only: [:show]

    def show
      
        @party_goer = PartyGoer.find(params[:id])
    end


    def attend
        
       GuestList.create(party_id: params[:party_id], party_goer_id: session[:user_id])
   redirect_to party_goer_path(session[:user_id])
        
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
  
    # def attend_params
    #     params.require(:guest_list).permit(: :party_id)
    # end
end
