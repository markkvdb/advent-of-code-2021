using DelimitedFiles

# read input as array
input = readdlm("input/day1.txt", Int)[:, 1]

# take first difference and check for positive value
sign = diff(input) .> 0

# get all positive values
print(sum(sign))
