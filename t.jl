using GAM, RDatasets, Plots

df = dataset("datasets", "trees")

mod = gam("Volume ~ s(Girth, k=10, degree=3) + s(Height, k=10, degree=3)", df)

p = plotgam(mod)
display(p)
readline()

# p = plot(mod, var=1)
# display(p)
# readline()

# p = plot(mod, linecolor=:red)
# display(p)
# readline()