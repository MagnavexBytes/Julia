function winsorized_mean(x::AbstractVector{<:Number}, k::Integer)
    n = length(x)
    k >= 0 || throw(ArgumentError("k must be non-negative"))
    n > 2 * k || throw(ArgumentError("k is too large (2*k >= length)"))

    y = copy(x)
    
    partialsort!(y, k + 1)
    l = y[k + 1]
    
    partialsort!(y, n - k)
    h = y[n - k]
    
    for i in 1:n
        if y[i] < l
            y[i] = l
        elseif y[i] > h
            y[i] = h
        end
    end
    
    return sum(y) / n
end