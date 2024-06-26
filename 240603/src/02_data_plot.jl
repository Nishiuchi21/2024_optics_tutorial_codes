using GLMakie
using CSV
using DataFrames

# define path
path = "240603/data/01_vacant_cavity.csv"

# read path data and make DataFrame
data = DataFrame(CSV.File(abspath(path), skipto = 20, footerskip = 37)) 

# check content of data（表のようなもの）
data

# change name so that the titles have meaningful names
rename!(data, ["wavenumber", "transmittance"])


# make arrays from DataFrame
x = data.wavenumber
y = data.transmittance


# plot
# fig = Figure()
# ax = Axis(fig[1, 1])

# lines!(ax, x, y)

# fig



fig = Figure()
ax = Axis(fig[1, 1], xlabel = "wavenumber(cm⁻¹)", ylabel = "Transmittance(%)")

lines!(ax, x, y)
vlines!(ax, [2000, 3000, 4000], color = :red)

DataInspector(fig)
fig

##
save("240603/output", fig)