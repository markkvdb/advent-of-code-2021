using DelimitedFiles
using RollingFunctions

# read input as array
input = readdlm("input/day1.txt", Int)[:, 1]

# take first difference and check for positive value
sign = diff(input) .> 0

# get all positive values
print("Answer part 1: ")
println(sum(sign))

# take rolling sum
rolling_sum = rolling(sum, input, 3)

# do the same as before
print("Answer part 2: ")
println(sum(diff(rolling_sum) .> 0))
