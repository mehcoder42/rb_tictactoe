class Board

    attr_accessor :board

    def initialize 
        @board = [1,2,3,4,5,6,7,8,9]
        @game_over = false
    end

    def display_board
        puts
        puts "#{@board[0]} | #{@board[1]} | #{@board[2]}"
        puts "---------"
        puts "#{@board[3]} | #{@board[4]} | #{@board[5]}"
        puts "---------"
        puts "#{@board[6]} | #{@board[7]} | #{@board[8]}"
        puts
    end

    def player_one_play 
        while true
            puts
            puts "Player one, please pick a number from 1 to 9 that are available."
            puts
            @user_number = gets.chomp 
            break if @board[@user_number.to_i-1] == @user_number.to_i || @game_over == true
        end
        @board[@user_number.to_i-1] = "X"

        display_board 
    end

    def player_two_play
        while true
            puts
            puts "Player two, please pick a number from 1 to 9 that are available."
            puts
            @user_number = gets.chomp 
            break if @board[@user_number.to_i-1] == @user_number.to_i || @game_over == true
        end
        @board[@user_number.to_i-1] = "O"
        
        display_board 
    end

    def play
        while @game_over != true
            check_win
            player_one_play
            check_win
            player_two_play
        end 
    end

    def check_win
        if @board[0] == "X" && @board[1] == "X" && @board[2] == "X" || @board[0] == "O" && @board[1] == "O" && @board[2] == "O"
            return
        elsif @board[0] == "X" && @board[3] == "X" && @board[6] == "X" || @board[0] == "O" && @board[3] == "O" && @board[6] == "O"
            return
        elsif @board[0] == "X" && @board[4] == "X" && @board[8] == "X" || @board[0] == "O" && @board[4] == "O" && @board[8] == "O"
            return
        elsif @board[1] == "X" && @board[4] == "X" && @board[7] == "X" || @board[1] == "O" && @board[4] == "O" && @board[7] == "O"
            return
        elsif @board[2] == "X" && @board[4] == "X" && @board[6] == "X" || @board[2] == "O" && @board[4] == "O" && @board[6] == "O"
            return
        elsif @board[2] == "X" && @board[5] == "X" && @board[8] == "X" || @board[2] == "O" && @board[5] == "O" && @board[8] == "O"
            return
        elsif @board[3] == "X" && @board[4] == "X" && @board[5] == "X" || @board[3] == "O" && @board[4] == "O" && @board[5] == "O"
            return
        elsif @board[6] == "X" && @board[7] == "X" && @board[8] == "X" || @board[6] == "O" && @board[7] == "O" && @board[8] == "O"
            return
        end
    end
end

board = Board.new
board.display_board
board.play

#winning_combination = [[1,2,3],[1,4,7],[1,5,9],[2,5,8],[3,5,7],[3,6,9],[4,5,6],[7,8,9]]
