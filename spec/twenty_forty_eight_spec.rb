require 'spec_helper'
require_relative '../lib/console_ui'
require_relative '../lib/ui'
require_relative '../lib/game'
require_relative '../lib/board'
require_relative '../lib/twenty_forty_eight'

RSpec.describe TwentyFortyEight do

    before do
        @twenty_forty_eight = TwentyFortyEight.new()
    end

    let(:game) { double :game }

    it 'creates an instance of a 2048 class' do
      expect(@twenty_forty_eight).to be_kind_of(TwentyFortyEight)
    end

    it 'calls create_game, greet_player method' do
        expect(@twenty_forty_eight).to receive(:create_game)
        expect(@twenty_forty_eight).to receive(:greet_player)
        expect(@twenty_forty_eight).to receive(:create_board)
        @twenty_forty_eight.run
    end
    
    it 'creates new game' do
      expect(Game).to receive(:new)
      @twenty_forty_eight.create_game
    end

    # it 'greets player' do
    #   expect(Game).to receive(:greet)
    #   @twenty_forty_eight.greet_player
    # end

    it 'creates new board' do
      expect(Board).to receive(:new)
      @twenty_forty_eight.create_board
    end
end
