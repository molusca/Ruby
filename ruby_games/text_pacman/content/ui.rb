def welcome_message
    puts
    puts "        P  /_\\  P                              "
    puts "       /_\\_|_|_/_\\                            "
    puts "   n_n | ||. .|| | n_n           Welcome to     "
    puts "   |_|_|nnnn nnnn|_|_|          Text-Pacman!    "
    puts "  |' '  |  |_|  |'  ' |                         "
    puts "  |_____| ' _ ' |_____|                         "
    puts "        \\__|_|__/                              "
    puts
    puts "Whats your name?"
    name = gets.strip
    puts "\n\n"
    puts "We'll start the game for you #{name}!"
    name
end

def choose_map
    puts "Choose a map: 1 - Easy;  2 - Medium;  3 - Hard."
    chosen_map = gets.strip.to_i  
    chosen_map
end

def draws_map(map)
    puts 
    puts map
    puts
end

def ask_for_movement
    puts "Where is the next Hero position?"
    movement = gets.strip.upcase
    movement[0]
end

def game_over
    puts("\n\n\n\n")
    puts "    _______________         "
    puts "   /               \       "
    puts "  /                 \      "
    puts "//                   \/\  "
    puts "\|   XXXX     XXXX   | /   "
    puts " |   XXXX     XXXX   |/     "
    puts " |   XXX       XXX   |      "
    puts " |                   |      "
    puts " \__      XXX      __/     "
    puts "   |\     XXX     /|       "
    puts "   | |           | |        "
    puts "   | I I I I I I I |        "
    puts "   |  I I I I I I  |        "
    puts "   \_             _/       "
    puts "     \_         _/         "
    puts "       \_______/           "
    puts
    puts "       GAME OVER!          "
end