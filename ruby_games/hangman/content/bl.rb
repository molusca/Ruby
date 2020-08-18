require_relative('ui')
require_relative('rank')

def choose_secret_word
    show_choosing_word_message
    text = File.read("dicionario.txt")
    all_words = text.split("\n")
    chosen_number = rand(all_words.size)
    secret_word = all_words[chosen_number].downcase
    show_chosen_word(secret_word)
    secret_word
end

def masked_word(guesses, secret_word)
    mask = ""
    for letra in secret_word.chars
        if guesses.include? letra
            mask << letra
        else
            mask << "_"
        end
    end
    mask
end

def ask_for_valid_guess(guesses, mistakes, mask)
    header_of_attempts(guesses, mistakes, mask)
    loop do
        guess = ask_for_guess
        if guesses.include? guess
        warn_duplicate_guess(guess)
        else
            return guess
        end
    end
end

def play(name)
    secret_word = choose_secret_word

    mistakes = 0
    guesses = []
    points_until_now = 0

    while mistakes < 5
        mask = masked_word(guesses, secret_word)
        guess = ask_for_valid_guess(guesses, mistakes, mask)
        guesses << guess

        guessed_a_letter = guess.size == 1
        
        if guessed_a_letter
            searched_letter = guess[0]
            total_letters_found = secret_word.count(searched_letter)
            
            if total_letters_found == 0
                tell_if_didnt_found_letter
                mistakes += 1
                points_until_now -= 3
            else
                tell_if_found_letter(guess, total_letters_found)
                points_until_now -= 2
            end       
        else
            hit_the_word = guess == secret_word
            if hit_the_word
                got_the_word_right(secret_word)
                points_until_now += 100
                break
            else
                missed_the_word
                points_until_you failed 50
                mistakes +=1
            end
        end
    end 
    show_points_until_now(points_until_now)
    points_until_now
end

def hangman
    name = say_welcome
    show_current_highscore(read_rank)
    total_points = 0
    loop do
        total_points += play(name)
        show_total_poits(total_points)
        
        if read_rank[1].to_i < total_points
            save_rank(name, total_points)
        end
        if dont_play_again?
            break
        end
    end
end
