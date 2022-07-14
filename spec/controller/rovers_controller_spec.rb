require 'spec_helper'
require_relative '../../controllers/rovers_controller'
require_relative '../../model/rover'


describe '.RoversController' do
  
    let(:qtd) { 1 }
    let(:movimentation) { "MMRMMRMRRM" }

    before do
      @rover = RoversController.new
      @sample_rover = RoverModel.new
    end

    describe '#create' do
      it 'generate payload for create rover' do
        set = @rover.create(qtd: qtd)
        expect(set[0][:number]).to equal(1)
      end
    end

    describe '#movimentation' do
      it 'valid movimentation' do
        rover = @sample_rover.all[0]
        set = @rover.movimentation(
            rover: rover,
            movimentation: movimentation
        )
        expect(set).to equal(true)
      end

      it 'change position X is valid' do
        get = @sample_rover.all[0]["position_x"]
        expect(get).to equal(1)
      end

    end
end