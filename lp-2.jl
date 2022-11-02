using JuMP, Gurobi

# Create empty model
m = Model(Gurobi.Optimizer)

# Coefficient vectors
c = [1; 2; 5]
A = [-1 1 3;
      1 3 7]
b = [-5; 10]

# Create variables
@variable(m, x[1:3] >= 0)

# Add objective function
@objective(m, Max, sum(c[i] * x[i] for i in 1:3))

# Add constraints
@constraint(m, constraint[j in 1:2], sum(A[j,i]*x[i] for i in 1:3) <= b[j])
@constraint(m, bound, x[1] <= 10)

# Solve the model
JuMP.optimize!(m)

# Print the optimal value of the variables
println("Optimal Solutions:")
for i in 1:3
    println("x[$i] = ", JuMP.value(x[i]))
end

# Print the dual value of the constraints
println("Dual Variables:")
for j in 1:2
    println("dual[$j] = ", JuMP.shadow_price(constraint[j]))
end

