require_relative 'utils/printers'
require_relative 'controllers/rovers_controller'
require_relative 'controllers/grid_controller'
require_relative 'utils/loads'

require_relative 'model/rover'
require_relative 'model/grid'

@rovers = RoversController.new

success(
    message: "Bem-Vindo a Marte"
)

info(
    message: "Defina a Grade do planalto:"
)

grid = gets.chomp().split(" ")

#Poderiamos Colocar uma Validação de Caracteres

Loads.new.call(
    message: "Carregando".colorize(:yellow),
    time: 5
)

GridModel.new.save_and_update(
    payload: {
        x: grid[0].to_i,
        y: grid[1].to_i
    }
)

info(
    message: "Quantos rovers deseja controlar?"
)

qtd_rover = gets.chomp()

payload = @rovers.create(
    qtd: qtd_rover.to_i
)

RoverModel.new.save(payload: payload)

finish_system = true

while finish_system do    
    RoverModel.new.all&.each do |rover|
        info(
            message: "Posicione o rover #{rover['number']}"
        )

        observation(
            message: "X Y Cardinal"
        )

        position = gets.chomp().split(" ")
        
        RoverModel.new.update(
            id: rover["id"],
            payload: {
                position_x: position[1].to_i,
                position_y: position[0].to_i,
                cardinals: position[2]
            }
        )
        
        info(
            message: "Movimente o rover #{rover['number']}"
        )
        observation(
            message: "[M]over | [R]ight | [L]eft"
        )

        movimentations = gets.chomp().to_s

        @rovers.movimentation(
            movimentation: movimentations,
            rover: RoverModel.new.find(
                id: rover["id"]
            )
        )     
        
        Loads.new.call(
            message: "Movimentando".colorize(:yellow),
            time: 5
        )
        
        info(
            message: "Como deseja visualizar essa movimentação?"
        )

        observation(
            message: "[V]iew | [P]osition"
        )
        
        ux = gets.chomp()

        rover = RoverModel.new.find(id: rover["id"])

        position =  "X: #{rover['position_x']}\n"
        position += "Y: #{rover['position_y']}\n"
        position += "Cardinal: #{rover['cardinals']}"

        if ux.upcase == "V"
            success(
                message: GridController.new.view_grid(rover)
            )
            success(
                message: position
            )
        elsif ux.upcase == "P"            
            success(
                message: position
            )
        end
    end

    warning(
        message: "Deseja finalizar? [S]im | [N]ao"
    )

    user = gets.chomp()
    if user.upcase == "S"
        finish_system = false
    end
end

