function winsorized_mean(x, k)
	   if 0 < k < 50 
			k  = k / 100
	   end
	   l = length(x)
	   k = Int(k * l)
       y = sort(x)
       for i in 1:k
       y[i] = y[k + 1]
       y[end - i + 1] = y[end - k]
       end
       s = 0
       for v in y
       s += v
       end
       return s / length(y)
       end
