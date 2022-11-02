using JuMP, Gurobi

m = Model(Gurobi.Optimizer)

@variable(m, 0 <= x <= 2)
@variable(m, 0 <= y <= 30)

@objective(m, Max, 5x + 3*y)

@constraint(m, constr_1, 1x + 5y <= 3.0)

JuMP.optimize!(m)

println("Objective function: ", JuMP.objective_value(m))
println("x = ", JuMP.value(x))
println("y = ", JuMP.value(y))
println("Dual variable: ", JuMP.shadow_price(constr_1))
