require_relative 'base'
require 'json'

class RoverModel < Base
    FILENAME = 'db/rovers.json'.freeze

    def initialize
        @rovers = File.open(FILENAME, 'r').read
    end

    def find(
        id:
    )           
        return JSON.parse(@rovers).select{|rover| rover["id"] == id }[0]
    end

    def all
        return JSON.parse(@rovers)
    end

    def save(
        payload:
    )
        begin

            f = File.open(FILENAME, 'w')
            f.write(payload.to_json)
            f.close

            return true
        rescue
            return false
        end 
    end

    def update(
        id:,
        payload:
    )
        data = [] 
        
        JSON.parse(@rovers)&.each do |rover|
            if rover["id"] == id
                data.append(rover.merge(
                        JSON.parse(payload.to_json)
                    )
                )
            else
                data.append(rover)                
            end
        end     
           
        return save(payload: data)
               
    end
end