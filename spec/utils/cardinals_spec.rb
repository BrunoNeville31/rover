require 'spec_helper'
require_relative '../../utils/cardinals'

describe '.North' do

    before do
      @north = North.new
    end

    describe '#move' do
        it 'valid position to move rover' do
            move = @north.move
            expect(move[:x]).to equal(1)
            expect(move[:y]).to equal(0)
        end
    end

    describe '#left' do
        it 'moving rover to left' do
            rover = @north.left
            expect(rover).to eq("W")
        end
    end

    describe '#right' do
        it 'moving rover to right' do
            rover = @north.right
            expect(rover).to eq("E")
        end
    end
end

describe '.South' do
    
    before do
        @south = South.new
    end
  

    describe '#move' do
        it 'valid position to move rover' do
            move = @south.move
            expect(move[:x]).to equal(-1)
            expect(move[:y]).to equal(0)
        end
    end

    describe '#left' do
        it 'moving rover to left' do
            rover = @south.left
            expect(rover).to eq("E")
        end
    end

    describe '#right' do
        it 'moving rover to right' do
            rover = @south.right
            expect(rover).to eq("W")
        end
    end
end

describe '.East' do

    before do
        @east = East.new
    end

    describe '#move' do
        it 'valid position to move rover' do
            move = @east.move
            expect(move[:x]).to equal(0)
            expect(move[:y]).to equal(1)
        end
    end

    describe '#left' do
        it 'moving rover to left' do
            rover = @east.left
            expect(rover).to eq("N")
        end
    end

    describe '#right' do
        it 'moving rover to right' do
            rover = @east.right
            expect(rover).to eq("S")
        end
    end
end

describe '.West' do

    before do
        @west = West.new
    end

    describe '#move' do
        it 'valid position to move rover' do
            move = @west.move
            expect(move[:x]).to equal(0)
            expect(move[:y]).to equal(-1)
        end
    end

    describe '#left' do
        it 'moving rover to left' do
            rover = @west.left
            expect(rover).to eq("S")
        end
    end

    describe '#right' do
        it 'moving rover to right' do
            rover = @west.right
            expect(rover).to eq("N")
        end
    end
end