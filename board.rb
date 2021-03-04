class Board

    attr_accessor :inde

    def initialize 
        @index_number = [1,2,3,4,5,6,7,8,9]
    end

    def make_board
        puts %(
             #{@index_number[0]} | #{@index_number[1]} | #{@index_number[2]}
            ---+---+---
             #{@index_number[3]} | #{@index_number[4]} | #{@index_number[5]}
            ---+---+---
             #{@index_number[6]} | #{@index_number[7]} | #{@index_number[8]}
        )
    end

    def update_board
        puts %(
            #{@index_number[0]} | #{@index_number[1]} | #{@index_number[2]}
           ---+---+---
            #{@index_number[3]} | #{@index_number[4]} | #{@index_number[5]}
           ---+---+---
            #{@index_number[6]} | #{@index_number[7]} | #{@index_number[8]}
       )
    end
end

board = Board.new
board.make_board

puts "Pick a number"
user_number = gets.chomp
if user_number == 1
    @index_number[0] = "X"
end

board.update_board
puts @index_number


winning_combination = [[1,5,9],[1,4,7],[1,2,3],[2,5,8],[3,5,7],[3,6,9],[7,8,9]]
