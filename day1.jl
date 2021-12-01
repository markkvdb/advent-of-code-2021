using DelimitedFiles
using RollingFunctions

# read input as array
input = readdlm("input/day1.txt", Int)[:, 1]

# take first difference and check for positive value
sign = diff(input) .> 0

# get all positive values
println("Answer part 1: ", sum(sign))

# take rolling sum
rolling_sum = rolling(sum, input, 3)

# idem as for part 1
println("Answer part 2: ", sum(diff(rolling_sum) .> 0))
