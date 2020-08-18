class Hero
    attr_accessor :row, :column

    def calculate_new_position(direction)
        new_hero = self.dup
        movements = {
            "W" => [-1, 0],
            "S" => [+1, 0],
            "A" => [0, -1],
            "D" => [0, +1],
            NIL => [0, 0]
        }   
        movement = movements[direction]
        new_hero.row += movement[0]
        new_hero.column += movement[1]
        new_hero
    end

    def right
        calculate_new_position "D"
    end

    def up
        calculate_new_position "W"
    end

    def left
        calculate_new_position "A"
    end

    def down
        calculate_new_position "S"
    end

    def to_array
        [row, column]
    end

    def removes_from_map(map)
        map[row][column] = " "
    end
    
    def puts_in_map(map)
        map[row][column] = "H"
    end
end