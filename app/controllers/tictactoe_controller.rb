class TictactoeController < ApplicationController

    before_action :authenticate_user!, only: [:profile]

    def home_page
 
    end

    def profil
    
    end

    def game
        @game = Game.find(params[:id])
    end
end