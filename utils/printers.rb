require 'colorize'

def info(
    message:
)
    puts "\n#{message}".colorize(:blue)
end

def success(
    message:
)
    puts "\n#{message}".colorize(:green)
end

def warning(
    message:
)
    puts "\n#{message}".colorize(:yellow)
end

def observation(
    message:
)
    puts "\n#{message}".colorize(:light_magenta)
end


def danger(
    message:
)
    puts "\n#{message}".colorize(:red)
end
