require_relative 'console_ui'
require_relative 'ui'
require_relative 'game'
require_relative 'board'

class TwentyFortyEight
    def run
        create_game
        greet_player
        create_board
        # play
    end

    def create_game
        console = ConsoleUI.new
        ui = UI.new(console)
        @game = Game.new(ui)
    end

    def greet_player
        @game.greet
    end

    def create_board
        @board = Board.new()
    end
end