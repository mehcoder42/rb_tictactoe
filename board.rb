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
            puts "Pick a number from 1 to 9."
            @user_number = gets.chomp 
            break if ["1","2","3","4","5","6","7","8","9"].include?@user_number
            puts
            puts "Error! Next, try to pick a number from 1 to 9."
            puts
        end
        @board[@user_number.to_i-1] = "X"
        display_board 
    end

    def player_two_play
        while true
            puts "Pick a number from 1 to 9."
            @user_number = gets.chomp 
            break if ["1","2","3","4","5","6","7","8","9"].include?@user_number
            puts
            puts "Error! Next, try to pick a number from 1 to 9."
            puts
        end
        @board[@user_number.to_i-1] = "O"
        display_board 
    end

end

board = Board.new
board.display_board 
board.player_one_play
board.player_two_play


winning_combination = [[1,5,9],[1,4,7],[1,2,3],[2,5,8],[3,5,7],[3,6,9],[7,8,9]]
