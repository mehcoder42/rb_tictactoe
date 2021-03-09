module Players
    def player_one_play
        while true
            puts "player one, please pick a number from 1 to 9 that are available."
            @user_number = gets.chomp 
            break if @board[@user_number.to_i-1] == @user_number.to_i
        end
        @board[@user_number.to_i-1] = "X"

        display_board 
    end

    def player_two_play
        while true
            puts "player two, please pick a number from 1 to 9 that are available."
            @user_number = gets.chomp 
            break if @board[@user_number.to_i-1] == @user_number.to_i
        end
        @board[@user_number.to_i-1] = "O"

        display_board 
    end
end