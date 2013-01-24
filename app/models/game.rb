class Game
    attr_accessor :player_move, :computer_move, :result

    def initialize(human_play)
        options = [{:name => "rock", :url => "rock.jpg"}, {:name => "paper", :url => "paper.png"}, {:name => "scissors", :url => "scissors.jpg"}]
        @computer_move = options.shuffle.pop
        @player_move = options.find{|key,value| key[:name] == human_play}
        won = "Congratulations, you won!"
        lost = "Sorry, you lost!"
        tie = "You tied! Try again?"
        if (@player_move[:name] == "rock") && (@computer_move[:name] == "scissors")
            @result = won
        elsif (@player_move[:name] == "rock") && (@computer_move[:name] == "paper")
            @result = lost
        elsif (@player_move[:name] == "rock") && (@computer_move[:name] == "rock")
            @result = tie
        elsif (@player_move[:name] == "paper") && (@computer_move[:name] == "rock")
            @result = won
        elsif (@player_move[:name] == "paper") && (@computer_move[:name] == "scissors")
            @result = lost
        elsif (@player_move[:name] == "paper") && (@computer_move[:name] == "paper")
            @result = tie
        elsif (@player_move[:name] == "scissors") && (@computer_move[:name] == "paper")
            @result = won
        elsif (@player_move[:name] == "scissors") && (@computer_move[:name] == "rock")
            @result = lost
        elsif (@player_move[:name] == "scissors") && (@computer_move[:name] == "scissors")
            @result = tie
        end




        end

end
