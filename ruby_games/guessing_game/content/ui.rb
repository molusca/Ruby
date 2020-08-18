def say_welcome
    puts
    puts "        P  /_\\  P                              "
    puts "       /_\\_|_|_/_\\                            "
    puts "   n_n | ||. .|| | n_n         Welcome to       "
    puts "   |_|_|nnnn nnnn|_|_|       Guessing Game!     "
    puts "  |' '  |  |_|  |'  ' |                         "
    puts "  |_____| ' _ ' |_____|                         " 
    puts "        \\__|_|__/                              "
    puts("")
    puts("\nWhats your name?")
    name = gets.strip
    puts("\nWe'll start the game for you, #{name}!")
    return name
end

def ask_dificulty
    puts("")
    puts("Choose Dificulty Level ")
    puts("1- Very Easy, 2 - Easy, 3 - Medium, 4 - Hard,  5 - Impossible")
    puts("")
    puts("Choose:")
    dificulty = gets.to_i
    return dificulty
end

def show_choosing_secret_number(max)
    puts("")
    puts("Choosing secret number between 0 and #{max}...")
end

def ask_for_guess(guesses, tries, try_limits)
    puts("")
    puts("Try #{tries}/#{try_limits}")
    puts("Guesses until now: #{guesses}")
    puts("Wich number did I thought?")
    guess = gets.strip
    puts("")
    puts("Did you get it right?... Your guess is #{guess}")
    return guess.to_i
end

def show_if_get_it_wrong
    puts("")
    puts("Ops, not this time :( ")
end

def show_the_number_is_higher(guess)
    puts("")
    puts("=" * 50)
    puts("")
    puts("The number I thought is HIGHER than #{guess} !!\n")
    puts("")
    puts("=" * 50)
end

def show_the_number_is_lower(guess)
    puts("")
    puts("=" * 50)
    puts("")
    puts("The number I thought is LOWER than #{guess} !!\n")
    puts("")
    puts("=" * 50)
end

def show_points_until_now(points_until_now)
    puts("")
    puts("You got #{points_until_now} points!\n")
end

def won
    puts
    puts "             OOOOOOOOOOO               "
    puts "         OOOOOOOOOOOOOOOOOOO           "
    puts "      OOOOOO  OOOOOOOOO  OOOOOO        "
    puts "    OOOOOO      OOOOO      OOOOOO      "
    puts "  OOOOOOOO  o   OOOOO  o   OOOOOOOO    "
    puts " OOOOOOOOOO    OOOOOOO    OOOOOOOOOO   "
    puts "OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO  "
    puts "OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO  "
    puts "OOOO OOOOOOOOOOOOOOOOOOOOOOOOOOO OOOO  "
    puts " OOOO  OOOOOOOOOOOOOOOOOOOOOOO  OOOO   "
    puts "  OOOO   OOOOOOOOOOOOOOOOOOOO  OOOO    "
    puts "    OOOOO   OOOOOOOOOOOOOOO   OOOO     "
    puts "      OOOOOO   OOOOOOOO   OOOOOO       "
    puts "         OOOOO         OOOOOO          "
    puts "             OOOOOOOOOOOO              "
    puts 
    puts "               YOU WON!                "
    puts
end

def ask_if_wants_to_play_again
    puts("Do you want to play again? (Y/N)")
    dont_wanna_play = gets.strip.upcase
    return dont_wanna_play
end

def say_goodbye
    puts("\nSee ya later :)\n\n")
end