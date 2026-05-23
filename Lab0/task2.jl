N = 1000000

x = 2 .*rand(N) .- 1
y = 2 .*rand(N) .- 1

inside_circle = sum(x.^2 + y.^2 .<= 1)
pi_estimate = 4* inside_circle / N

# println(inside_circle)
println(pi_estimate)