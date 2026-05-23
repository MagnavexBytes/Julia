unction trimmed_mean(x::AbstractVector{<:Number}, k::Integer)
    n = length(x)
    
    k >= 0 || throw(ArgumentError("k must be non-negative"))
    n > 2 * k || throw(ArgumentError("k is too large (2*k >= length)"))

    y = copy(x)
  
    partialsort!(y, k + 1)
	
    partialsort!(y, n - k)
	
    middle_segment = @view y[(k + 1):(n - k)]
    
    return sum(middle_segment) / (n - 2 * k)
end