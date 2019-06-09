require 'spec_helper'
require_relative '../lib/console_ui'
require_relative '../lib/ui'
require_relative '../lib/game'

RSpec.describe ConsoleUI do

    before do
        console = ConsoleUI.new
        @ui = UI.new(console)
        @game = Game.new(@ui)
    end

    it 'creates an instance of a Game class' do
      expect(@game).to be_kind_of(Game)
    end

    it 'calls ui print method with greeting' do
        expect(@ui).to receive(:print).with("Hello! Try to reach 2048 tile!")
        @game.greet
    end
    
end