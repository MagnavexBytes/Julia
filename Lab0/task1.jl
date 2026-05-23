println("Введите размер квадратной матрицы: ")
N = readline()
N = parse(Int64, N)
A = zeros(Int, N, N)
for i in 1:N
    for j in 1:N
        if i == j
            A[i,j] = 2
        elseif abs(i - j) == 1
            A[i,j] = 1
        end
    end
end
for i in 1:N
    println(A[i,:])
end

# function create_tridiagonal_matrix(N)
#     A = zeros(Int, N, N)
    
#     for i in 1:N
#         for j in 1:N
#             if i == j
#                 A[i, j] = 2
#             elseif abs(i - j) == 1
#                 A[i, j] = 1
#             end
#         end
#     end
    
#     return A
# end

# N = 5
# matrix = create_tridiagonal_matrix(N)

# display(matrix)