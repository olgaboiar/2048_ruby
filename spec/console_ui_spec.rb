require 'spec_helper'
require_relative '../lib/console_ui'

RSpec.describe ConsoleUI do

    before do
        @console = ConsoleUI.new
    end

    it 'creates an instance of a ConsoleUI class' do

      expect(@console).to be_kind_of(ConsoleUI)
    end

    it 'outputs the message to console' do
        expect do
            @console.print("my message")
        end.to output("my message\n").to_stdout
    end
    
end