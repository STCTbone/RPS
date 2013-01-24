class GamesController < ApplicationController
    def play
        @options = ["rock", "paper", "scissors"]
        @computer_play = @options.shuffle.pop[:name]
        @human_play = params[:choose]
    end


end
