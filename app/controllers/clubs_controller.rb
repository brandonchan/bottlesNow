class ClubsController < ApplicationController
    def index
      @clubs = Club.all

      render json: @clubs
    end

    def show
      @club = Club.where(id: params[:id])
      @drinks = Drink.where(clubs_id: params[:id])
      @club.push(drinks: @drinks)
      render json: @club
    end
end
