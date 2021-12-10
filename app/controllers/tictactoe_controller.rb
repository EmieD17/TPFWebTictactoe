class TictactoeController < ApplicationController

    before_action :authenticate_user!, only: [:profile]

    def home_page
 
    end

    def profil
        @wins = Game.where(winner: current_user.id)
        @gamesDone = 0;
        current_user.games.each do |game|
            if game.winner != nil
                @gamesDone = @gamesDone + 1
            end
        end
    end

    def game
        @game = Game.find(params[:id])
    end
end