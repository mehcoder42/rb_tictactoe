class Player

    attr_accessor :player_one_win, :player_two_win

    def initialize(name,symbol)
        @name = name
        @symbol = symbol
        @player_one_win = false
        @player_two_win = false
    end

    def player_play
        while true
            puts
            puts "#{@name}, please pick a number from 1 to 9 that are available."
            puts
            @user_number = gets.chomp 
            break if @board[@user_number.to_i-1] == @user_number.to_i || @game_over == true
        end
        @board[@user_number.to_i-1] = "X"

        display_board 
    end

end
