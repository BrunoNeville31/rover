require 'spec_helper'
require_relative '../../model/grid'

describe '.GridModel' do 

    before do
        @grid = GridModel.new
        @payload = {
            x: 1,
            y: 3
        }
    end    

    describe '#save_and_update' do
      it 'set new grid' do        
        set = @grid.save_and_update(
            payload: @payload
        )

        expect(set).to equal(true)
      end

      it 'get value x in grid' do
        expect(@grid.all["x"]).to equal(1)
      end
    end

    describe '#all' do
      it 'list size grid' do
        expect(@grid.all.size).to equal(2)
        expect(@grid.all).to include("x")
      end
    end
end

