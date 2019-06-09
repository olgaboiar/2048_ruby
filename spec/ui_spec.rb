require 'spec_helper'
require_relative '../lib/console_ui'
require_relative '../lib/ui'

RSpec.describe ConsoleUI do

    before do
        @console = ConsoleUI.new
        @ui = UI.new(@console)
    end

    it 'creates an instance of a ConsoleUI class' do
      expect(@ui).to be_kind_of(UI)
    end

    it 'calls console print method' do
        expect(@console).to receive(:print).with("my message")
        @ui.print("my message")
    end
    
end