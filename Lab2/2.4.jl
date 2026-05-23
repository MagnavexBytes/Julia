function trimmed_mean(x, k)
	   if 0 < k < 50 
			k  = k / 100
	   end
	   l = length(x)
	   k = Int(k * l)
       y = sort(x)
       s = 0
       for i in k+1:l - k
       s +=y[i]
       end
       return s / (l - 2*k)
       end