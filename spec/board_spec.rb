require 'spec_helper'
require_relative '../lib/board'

RSpec.describe Board do

    it 'creates an instance of a board class' do
      board = Board.new

      expect(board).to be_kind_of(Board)
      expect(board.spots.length).to eq(16)
    end
    
end
