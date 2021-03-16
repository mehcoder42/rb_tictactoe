class Board

    attr_accessor :number

    def initialize 
        @number = [1,2,3,4,5,6,7,8,9]
    end

    def display_board
        puts
        puts "#{@number[0]} | #{@number[1]} | #{@number[2]}"
        puts "---------"
        puts "#{@number[3]} | #{@number[4]} | #{@number[5]}"
        puts "---------"
        puts "#{@number[6]} | #{@number[7]} | #{@number[8]}"
        puts
    end

end

class Player

    def initialize(name,symbol)
        @name = name
        @symbol = symbol
    end

end

class Game

    attr_accessor :number

    def initialize
        @board = Board.new
    end

    def play
        @board.display_board
        ask_user
        @board.display_board
    end

    def legit_answer?
        if (1..9).to_a.include?(@user_ans) == true
            @board.number[@user_ans-1] = "X"
        end    
    end

    def ask_user
        puts "(Player), please pick a number from 1 to 9 that are available to place (Your Symbol)."
        @user_ans = gets.chomp.to_i
        legit_answer?
    end

end

game = Game.new
game.play

#winning_combination = [[1,2,3],[1,4,7],[1,5,9],[2,5,8],[3,5,7],[3,6,9],[4,5,6],[7,8,9]]