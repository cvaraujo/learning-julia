a = [1; 2; 3]
b = [4 5 6]
A = [1 2 3; 4 5 6]

# Multi index access
println("Multi-index Access")
println(A[1, 3])
println(A[2, 1])

# Transpose
println("Transpose")
println(transpose(A))
println(A')

# Inner Product
a = [1; 2; 3]
c = [7; 8; 9]
println("Inner Product")
println(a' * c)

using LinearAlgebra
println(dot(a, c))

# Matrix
println("Identity Matrix")
println(Matrix(1.0I, 3, 3))

# Zero or One matrices
println("Zero")
println(zeros(3, 3))

println("Ones")
println(ones(3, 3))

# Inverse matrix
B = [1 3 2; 3 2 2; 1 1 1]
println("Inverse Matrix")
println(inv(B))

# Tuples
println("Tuples")
first_tuple = Array{Tuple{Int64,Float64,Int64}}(undef, 3)
first_tuple[1] = (1, 2.0, 1)
println(first_tuple)

# Index access
println("Index access")
a = [1 2 3; 3 2 1; 9 8 7]
for i in 1:3
    println("a[$i] = ", a[i])
end

#
println("Last element")
println(a[end])

#
println("Until the last")
println(a[1:end])
