function trimmed_mean(x, k)
       y = sort(x)
       s = 0
       l = length(y)
       for i in k+1:l - k
       s +=y[i]
       end
       return s / (l - 2*k)
       end