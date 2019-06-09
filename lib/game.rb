class Game

    def initialize(ui)
        @ui = ui
    end

    def greet
        @ui.print("Hello! Try to reach 2048 tile!")
    end
end