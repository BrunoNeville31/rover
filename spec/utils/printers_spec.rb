require 'spec_helper'
require_relative '../../utils/printers'


describe '#info' do

    let(:message) { "Testando Info" }

    it 'verification size string message' do
        set = info(
            message: message
        )

        expect(set).to eq(nil)
    end
end