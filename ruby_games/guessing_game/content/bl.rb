require_relative('ui')

def sort_secret_number(dificulty)
    case dificulty 
    when 1
        max = 30
    when 2
        max = 60
    when 3
        max = 100
    when 4
        max = 150
    else
        max = 200
    end
    show_choosing_secret_number(max)
    sort_number = rand(max) + 1
    return sort_number
end

def verify_if_got_it_right(secret_number, guess)
    got_it_right = secret_number == guess

    if got_it_right
        won
        return true
    end

    higher = secret_number > guess

    show_if_get_it_wrong
    if higher
        show_the_number_is_higher(guess)
    
    else
        show_the_number_is_lower(guess)
    end
    false
end

def play(name, dificulty)
    secret_number = sort_secret_number(dificulty)
    points_until_now = 1000


    try_limits = 5
    guesses = []

    for tries in 1..try_limits
        guess = ask_for_guess(guesses, tries, try_limits)
        guesses << guess

        #cheat so I'll always win hahaha
        if name == "Lucas"
            won
            break
        end

        points_to_lose = (guess - secret_number).abs / 2.0
        points_until_now -= points_to_lose

        if verify_if_got_it_right(secret_number, guess)
            break
        end   
    end

    dont_wanna_play_again?
    
    show_points_until_now(points_until_now)
end

def dont_wanna_play_again?
    if ask_if_wants_to_play_again == "N"
        true
    else
        false
    end
end

def guessing_game
    
    name = say_welcome
    dificulty = ask_dificulty
    play(name, dificulty)

    loop do
        play(name, dificulty)
        if dont_wanna_play_again?
            say_goodbye
            break
        end
    end
end