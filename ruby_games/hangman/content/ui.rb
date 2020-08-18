def say_welcome
    puts
    puts "        P  /_\\  P                             "
    puts "       /_\\_|_|_/_\\                           "
    puts "   n_n | ||. .|| | n_n           Welcome to    "
    puts "   |_|_|nnnn nnnn|_|_|            Hangman!     "
    puts "  |' '  |  |_|  |'  ' |                        "
    puts "  |_____| ' _ ' |_____|                        " 
    puts "        \\__|_|__/                             "
    puts
    puts
    puts("Whats your name?")
    name = gets.strip
    puts 
    puts("Começaremos o jogo para você, #{name}!")
    puts
    name
end

def show_current_highscore(data)
    puts
    puts("**Our championship is #{data[0]} with #{data[1]} points**")
    puts
end

def show_choosing_word_message
    puts
    puts("Choosing a secret word...")
end

def show_chosen_word(secret_word)
    puts("Secret word with #{secret_word.size - 1} letters has been chosen... Good Luck!")
    puts
end

def draw_gallows(mistakes)
    head = "   "
    body = " "
    legs = "   "
    arms = "   "
    if mistakes >= 1
        head = "(_)"
    end
    if mistakes >= 2
        arms = " | "
        body = "|"
    end
    if mistakes >= 3
        arms = "\\|/"
    end
    if mistakes >= 4
        legs = "/ \\"
    end

    puts "  _______       "
    puts " |/      |      "
    puts " |      #{head}  "
    puts " |      #{arms}  "
    puts " |       #{body}  "
    puts " |      #{legs}  "
    puts " |              "
    puts "_|___           "
end

def header_of_attempts(guesses, mistakes, mask)
    draw_gallows(mistakes)
    puts
    puts("The secret word is: #{mask}")
    puts("Mistakes until now: #{mistakes}")
    puts("Guesses until now: #{guesses}")
    puts
end

def ask_for_guess   
    puts("Input a letter or word: ")
    guess = gets.strip.downcase
    puts
    puts("Did you get it right? Your guess is '#{guess}'")
    guess
end

def tell_if_found_letter(guess, total_letters_found)
    puts("\nLetter '#{guess}' found #{total_letters_found} times!")
end

def tell_if_didnt_found_letter
    puts("\nLETTER DIDN'T FOUND :( ")
end

def warn_duplicate_guess(guess)
    puts("\n\nYOU ALREADY TRIED '#{guess}'")
    puts
end

def got_the_word_right(secret_word)
    puts "\nGongractulations! YOU WON!"
    puts
    puts "       ___________      "
    puts "      '._==_==_=_.'     "
    puts "      .-\\:      /-.    "
    puts "     | (|:.     |) |    "
    puts "      '-|:.     |-'     "
    puts "        \\::.    /      "
    puts "         '::. .'        "
    puts "           ) (          "
    puts "         _.' '._        "
    puts "        '-------'       "
    puts
end

def show_points_until_now(points_until_now)
    puts
    if points_until_now >= 0
        puts("You got #{points_until_now} points!")
    else
        puts("You lost #{points_until_now.abs} points!")
    end
end

def show_total_poits(total_points)
    puts("You have #{total_points} points!")
end

def missed_the_word
    puts("Ops... you failed :( ")
end

def dont_play_again?
    puts "\n\n"
    puts("Do you want to play again? (Y/N)")
    player_answer = gets.strip.upcase
    dont_wanna_play_again = player_answer == "N"
end