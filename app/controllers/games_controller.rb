class GamesController < ApplicationController
    def play
        if params[:choose] != nil
          @human_play = params[:choose]
          @game = Game.new(@human_play)
        end
    end


end
