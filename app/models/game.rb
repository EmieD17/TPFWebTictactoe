class Game < ApplicationRecord

    #Relations
    belongs_to :creator, class_name: "User", foreign_key: "creator_id"
    belongs_to :opponent, class_name: "User", foreign_key: "opponent_id", optional: true
    belongs_to :winner, class_name: "User", foreign_key: "winner_id", optional: true
    belongs_to :player_turn, class_name: "User", foreign_key: "player_turn_id", optional: true


    def players
        [creator, opponent].compact! # Retire les cases null ou blank du tableau
    end

    def status
        if self.winner
          return "End"
        elsif !self.opponent
          return "Waiting"
        else
          return "In Progress"
        end
    end

end
