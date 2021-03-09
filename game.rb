require_relative "player"

class Game

    attr_reader :board, :player

    def initialize
        @board = Board.new
        @game_over = false
    end

    def play
        include Players
        board.display_board

        while @game_over != true
            player_one_play
            check_win
            if @game_over == true
                congrats
                break
            end
            player_two_play
            check_win
            if @game_over == true
                break
            end
        end 
    end

    def check_win
        if @board[0] == "X" && @board[1] == "X" && @board[2] == "X"
            @game_over = true
            @player_one_win = true
        elsif @board[0] == "X" && @board[3] == "X" && @board[6] == "X"
            @game_over = true
            @player_one_win = true
        elsif @board[0] == "X" && @board[4] == "X" && @board[8] == "X"
            @game_over = true
            @player_one_win = true
        elsif @board[1] == "X" && @board[4] == "X" && @board[7] == "X"
            @game_over = true
            @player_one_win = true
        elsif @board[2] == "X" && @board[4] == "X" && @board[6] == "X"
            @game_over = true
            @player_one_win = true
        elsif @board[2] == "X" && @board[5] == "X" && @board[8] == "X"
            @game_over = true
            @player_one_win = true
        elsif @board[3] == "X" && @board[4] == "X" && @board[5] == "X"
            @game_over = true
            @player_one_win = true
        elsif @board[6] == "X" && @board[7] == "X" && @board[8] == "X"
            @game_over = true
            @player_one_win = true
        elsif @board[0] == "O" && @board[1] == "O" && @board[2] == "O"
            @game_over = true
            @player_two_win = true
        elsif @board[0] == "O" && @board[3] == "O" && @board[6] == "O"
            @game_over = true
            @player_two_win = true
        elsif @board[0] == "O" && @board[4] == "O" && @board[8] == "O"
            @game_over = true
            @player_two_win = true
        elsif @board[1] == "O" && @board[4] == "O" && @board[7] == "O"
            @game_over = true
            @player_two_win = true
        elsif @board[2] == "O" && @board[4] == "O" && @board[6] == "O"
            @game_over = true
            @player_two_win = true
        elsif @board[2] == "O" && @board[5] == "O" && @board[8] == "O"
            @game_over = true
            @player_two_win = true
        elsif @board[3] == "O" && @board[4] == "O" && @board[5] == "O"
            @game_over = true
            @player_two_win = true
        elsif @board[6] == "O" && @board[7] == "O" && @board[8] == "O"
            @game_over = true
            @player_two_win = true
        else
            @game_over = false
        end
    end

    def congrats
        if @player_one_win == true
            puts "congrats player 1, you won against player 2"
        else
            puts "congrats player 2, you won against player 1"
        end
    end

end