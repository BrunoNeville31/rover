require_relative "base"
require "json"

class GridModel < Base
    FILENAME = "db/grid.json".freeze

    def initialize
        @grid = File.open(FILENAME, "r").read
    end

    def all
        return JSON.parse(@grid)
    end

    def save_and_update(
        payload:
    )
        begin
            f = File.open(FILENAME, "w")
            f.write(payload.to_json)
            f.close

            return true
        rescue
            return false
        end
    end
end