require_relative('ui')
require_relative('hero')

def read_map(number)
    archive = "map#{number}.txt"
    text = File.read(archive)
    map = text.split("\n")
end

def find_player(map)
    hero_character = "H"
    map.each_with_index do |current_row, row|
        hero_column = current_row.index hero_character
        if hero_column
            player = Hero.new
            player.row = row
            player.column = hero_column
            return player
        end
    end
    nil
end

def sums_vector(vector1, vector2)
    [vector1[0] + vector2[0], vector1[1] + vector2[1]]
end

def valid_positions_from(map, new_map, position)
    positions = []
    movements = [[+1, 0], [0, +1], [-1, 0], [0, -1]]
    movements.each do |movement|
        new_position = sums_vector(position, movement) 
        if valid_position?(map, new_position) && valid_position?(new_map, new_position)
            positions << new_position
        end
    end
    positions
end

def move_ghost(map, new_map, row, column)
    positions = valid_positions_from(map, new_map, [row, column])
    if positions.empty?
        return
    end

    random = rand(positions.size)
    position = positions[random]
    map[row][column] = " "
    new_map[position[0]][position[1]] = "F"
end

def copy_map(map)
    new_map = map.join("\n").tr("F", " ").split("\n")
end

def move_ghosts(map)
    ghost_character = "F"
    new_map = copy_map(map)
    
    map.each_with_index do |current_row, row|
        current_row.chars.each_with_index do |current_character, column|
            is_a_ghost = current_character == ghost_character
            if is_a_ghost
                move_ghost(map, new_map, row, column)
            end
        end
    end
    new_map
end

def valid_position?(map, position)
    rows = map.size
    columns = map[0].size
    out_of_rows = position[0] < 0 || position[0] >= rows
    out_of_columns = position[1] < 0 || position[1] >= columns

    if out_of_rows || out_of_columns
        return false
    end
    current_value = map[position[0]][position[1]]
    if current_value == "X" || current_value == "F"
        return false
    end
    
    true

end

def inside_map? (map, position)
    rows = map.size
    columns = map[0].size

    out_of_rows = position.row < 0 || position.row >= map.size
    out_of_columns = position.column < 0 || position.column >= map[0].size

    if out_of_rows || out_of_columns
        return false
    end 
    true
end

def player_lost?(map)
    lost = !find_player(map)
end

def execute_remotion(map, position, quantity)
    if inside_map?(map, position)
        if map[position.row][position.column] == "X"
            return
        end

        map[position.row][position.column] = " "
        remove map, position, quantity -1
    end
end

def remove(map, position, quantity)
    return if quantity == 0
    execute_remotion(map, position.right, quantity)
    execute_remotion(map, position.up, quantity)
    execute_remotion(map, position.left, quantity)
    execute_remotion(map, position.down, quantity)
end

def play(name, chosen_map)
    map = read_map(chosen_map)

    while true

        draws_map map
        direction = ask_for_movement
        hero = find_player(map)
        new_position = hero.calculate_new_position(direction)
        
        if !valid_position?(map, new_position.to_array)
            next
        end

        hero.removes_from_map(map)
        if map[new_position.row][new_position.column] == "*"
            remove(map, new_position, 4)
        end
        new_position.puts_in_map(map)

        map = move_ghosts(map)
        if player_lost?(map)
            puts game_over
            break
        end   
    end
end

def start_pacman
    name = welcome_message
    chosen_map = choose_map
    play(name, chosen_map)
end






