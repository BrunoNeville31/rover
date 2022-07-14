require 'securerandom'
require 'json'

require_relative 'base_controller'
require_relative '../utils/cardinals'
require_relative '../model/rover'

class RoversController < BaseController
    def initialize;end

    def create(
        qtd:
    )
        rovers = []
        1.upto(qtd) do |i|
            rovers.append({
                number: i,
                id: SecureRandom.uuid,
                position_x: 0,
                position_y: 0
            })
        end        
        
        return rovers
    end    

    def movimentation(
        movimentation:,
        rover:
    )
        x = rover["position_x"]
        y = rover["position_y"]
        cardinal = rover["cardinals"]

        @cardinals = {
            n: North.new,
            s: South.new,
            e: East.new,
            w: West.new
        }

        movimentation&.split('')&.each do |m|
            m = m.downcase
            next_step = @cardinals[cardinal.downcase.to_sym]
            
            if m == "m"                
                move = next_step.move
                x = x + (move[:x])
                y = y + (move[:y])
            elsif m == "r"
                cardinal = next_step.right
            elsif m == "l"
                cardinal = next_step.left
            else
                danger(
                    message: "Movimento #{m} não foi IDENTIFICADO"
                )
            end
        end
        
        return RoverModel.new.update(
            id: rover["id"],
            payload: {
                position_x: x,
                position_y: y,
                cardinals: cardinal
            }
        )

    end
end