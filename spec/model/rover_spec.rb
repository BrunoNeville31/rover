require 'spec_helper'
require_relative '../../model/rover'

describe RoverModel do
  
    before do
        @rover = RoverModel.new
        @id = "7c8e0d20-1fc6-4f65-b3f7-d7ad78d47441"
        @payload = [{
            number: 1,
            id: @id,
            position_x: 1,
            position_y: 5,
            cardinals: "E"
        }]
    end

    describe '#save' do
        it 'set rover' do
            set = @rover.save(
                payload: @payload
            )
            expect(set).to equal(true)
        end
    end

    describe '#find' do
        it 'search rover after create' do            
            rover = @rover.find(
                id: @id
            )
            expect(@id).to eq(rover["id"])
        end
    end

    describe '#update' do
      it 'set position_x for 3' do
        @payload[0][:position_x] = 3

        update = @rover.update(
            id: @id,
            payload: @payload[0]
        )

        expect(update).to equal(true)
        
        rover = RoverModel.new.find(
            id: @id
        )

        expect(rover['position_x']).to eq(3)
      end
    end

    describe '#all' do
      it 'size list to rover' do
        expect(@rover.all.size).to equal(1)
      end
    end
end