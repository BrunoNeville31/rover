
class North
    def left
        return "W"
    end

    def right
        return "E"
    end

    def move
        return {
            x: 1,
            y: 0
        }
    end
end

class South
    def left
        return "E"
    end

    def right
        return "W"
    end

    def move
        return {
            x: -1,
            y: 0
        }
    end
end

class East
    def left
        return "N"
    end

    def right
        return "S"
    end

    def move
        return {
            x: 0,
            y: 1
        }
    end
end

class West
    def left
        return "S"
    end

    def right
        return "N"
    end

    def move
        return {
            x: 0,
            y: -1
        }
    end
end