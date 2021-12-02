"""Day 2

Main thing that I learned is to use functions and read files as a buffer
so that not all lines are written in memory.
"""

function parse_line(line::String)::Tuple{String,Int}
    command, pos = split(line, ' ')
    return command, parse(Int, pos)
end

function part_1(io::IO)::Int
    pos_forward = 0
    pos_depth = 0

    for line in eachline(io)
        command, pos = parse_line(line)
        if command == "forward"
            pos_forward += pos
        elseif command == "up"
            pos_depth -= pos
        elseif command == "down"
            pos_depth += pos
        end
    end

    return pos_forward * pos_depth
end

open("input/day2.txt") do io
    println("Answer part 1: ", part_1(io))
end

function part_2(io::IO)::Int
    pos_forward = 0
    pos_depth = 0
    aim = 0

    for line in eachline(io)
        command, pos = parse_line(line)
        if command == "forward"
            pos_forward += pos
            pos_depth += aim * pos
        elseif command == "up"
            aim -= pos
        elseif command == "down"
            aim += pos
        end
    end

    return pos_forward * pos_depth
end

open("input/day2.txt") do io
    println("Answer part 1: ", part_2(io))
end