# read all lines
pos_forward = 0
pos_depth = 0

for line in eachline("input/day2.txt")
    command, pos = split(line, ' ')
    pos_int = parse(Int, pos)

    if command == "forward"
        global pos_forward += pos_int
    elseif command == "up"
        global pos_depth -= pos_int
    elseif command == "down"
        global pos_depth += pos_int
    end
end

println("Answer part 1: ", pos_forward * pos_depth)


# read all lines
pos_forward = 0
pos_depth = 0
aim = 0

for line in eachline("input/day2.txt")
    command, pos = split(line, ' ')
    pos_int = parse(Int, pos)

    if command == "forward"
        global pos_forward += pos_int
        global pos_depth += aim * pos_int
    elseif command == "up"
        global aim -= pos_int
    elseif command == "down"
        global aim += pos_int
    end
end

println("Answer part 1: ", pos_forward * pos_depth)