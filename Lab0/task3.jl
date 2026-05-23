using Plots

pi_value = 3.14159
A = 0:0.01:2 * pi_value
r = 1 .+ cos.(A)

println(pi_value, A, r)

plot(A, r, proj=:polar, title = "Кардиоида", label = "r = 1 + cos(A)")
