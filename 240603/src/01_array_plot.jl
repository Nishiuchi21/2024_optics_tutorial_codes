using GLMakie

# skip in case it's too easy
x = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
y = []

element_1 = sin(x[1])
push!(y, element_1)

element_2 = sin(x[2])
push!(y, element_2)

##

# make a figure based on arrays
x = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]  # x = 1:10
y = []

for i in x
    element = sin(i)
    push!(y, element)
end




##
fig = Figure()
ax = Axis(fig[1, 1])
lines!(ax, x, y)
scatter!(ax, x, y, color = :red)

fig