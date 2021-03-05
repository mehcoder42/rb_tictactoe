class Board

    attr_accessor :board

    def initialize 
        @board = [1,2,3,4,5,6,7,8,9]
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
            puts "Player one, please pick a number from 1 to 9 that are available."
            @user_number = gets.chomp 
            break if @board[@user_number.to_i-1] == @user_number.to_i
            puts
            puts "Please pick number from 1 to 9 that are still available."
            puts
        end
        @board[@user_number.to_i-1] = "X"

        display_board 
    end

    def player_two_play
        while true
            puts "Player two, please pick a number from 1 to 9 that are available."
            @user_number = gets.chomp 
            break if @board[@user_number.to_i-1] == @user_number.to_i
        end
        @board[@user_number.to_i-1] = "O"
        
        display_board 
    end

end

board = Board.new
board.display_board
board.player_one_play
board.player_two_play

#game_over = false
#while game_over != true
#    board.player_one_play
#    board.player_two_play
#end
#winning_combination = [[1,5,9],[1,4,7],[1,2,3],[2,5,8],[3,5,7],[3,6,9],[7,8,9]]
