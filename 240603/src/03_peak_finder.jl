using GLMakie
using CSV
using DataFrames
using Peaks

x = [0, 5, 2, 4, 3, 6, 10, 1]

peaks = findmaxima(x)

indicies = peaks[1]
peaks_values = peaks[2]



##

tuple_1 = (1, 2, 3)
array_1 = [1, 2, 3]

tuple_1[1] = 5
array_1[1] = 5