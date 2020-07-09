class ReviewsController < ApplicationController
    before_action :require_logged_in

    def new
        @review = Review.new
        @party = Party.find(params[:party_id])
    end

    def create
        @review = Review.new(review_params)
        @party = Party.find(params[:party_id])
         if @review.valid?
            @review.save
            redirect_to party_path(@review.party)
        else 
            render :new
        end
    end

    def edit
        @review = Review.find(params[:id])

    end

    def update
        @review = Review.find(params[:id])
        @review.update(review_params)
        redirect_to party_path(@review.party)
    end

    def destroy
        @review = Review.find(params[:id])
        @review.delete
        redirect_to party_path(@review.party)
    end

    private

    def review_params
        params.require(:review).permit(:title, :content, :rating, :party_id, :party_goer_id)
    end
end
