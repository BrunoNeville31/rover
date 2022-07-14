require 'json'
require_relative 'base_controller'
require_relative '../model/grid'

class GridController < BaseController
    def initialize;end

    def view_grid(position = nil)
        return false if position.nil?

        grid = GridModel.new.all
        
        linha = "X|\n"

        grid["x"].downto(0) do |x|
            linha += "#{x}|"
            0.upto(grid["y"]) do |y|
                if y == position["position_y"] && x == position["position_x"]
                    linha += "#{position["cardinals"]}"
                elsif x == position["position_x"] && y != position["position_y"]
                    linha += "-"
                elsif y == position["position_y"] && x != position["position_x"]
                    linha += "|"
                else
                    linha += " "
                end
            end
            linha += "\n"
        end
        linha += "Y-"
        0.upto(grid["y"]) do |y|
            linha += "#{y}"
        end

        return linha        
    end
end