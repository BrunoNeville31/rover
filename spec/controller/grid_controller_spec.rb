require 'spec_helper'
require_relative '../../controllers/grid_controller'

describe '.GridController' do

    let(:rover) { {
        "number": 1,
        "id": "24dbf42e-d143-4827-ab18-e5f72cf1c7fd",
        "position_x": 1,
        "position_y": 5,
        "cardinals": "E"
    } }

    before do
      @grid = GridController.new
    end

    describe '#grid_view' do
        it 'valid position rover' do
            set = @grid.view_grid(rover)
            expect(set).to match(/X/)
            expect(set).to match(/Y/)
        end
    end
end