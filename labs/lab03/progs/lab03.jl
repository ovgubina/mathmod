using Plots
using DifferentialEquations

"Начальные условия:"
x_0 = 19300 # начальная численность армии X
y_0 = 39000 # начальная численность армии Y

u_0= [x_0, y_0] # точка, описывающая начальное условие
T = (0.0, 3.0) # отслеживаемый период времени

"Модель боевых действий №1:"
a_1 = 0.46 # влияние различных факторов на потери
b_1 = 0.7 # эффективность действий армии y
c_1 = 0.82 # эффективность действий армии x
h_1 = 0.5 # влияние различных факторов на потери

function P_1(t)
	return sin(0.5t)
end

function Q_1(t)
	return cos(1.5t)
end

function F_1!(du, u, p, t) # система уравнений
	du[1] = -a_1*u[1] - b_1*u[2] + P_1(t)
	du[2] = -c_1*u[1] - h_1*u[2] + Q_1(t)
end

prob_1 = ODEProblem(F_1!, u_0, T)
sol_1 = solve(prob_1, saveat=0.01)

plt_1 = plot(
	sol_1,
	vars = (0, 1),
	color =:red,
	label = "Численность армии страны X",
	title = "Модель боевых действий №1",
	xlabel = "Время",
	ylabel = "Численность"
)

plot!(
	sol_1,
	vars = (0, 2),
	color =:blue,
	label = "Численность армии страны Y"
)

savefig(plt_1, "model_1_julia.png")

"Модель боевых действий №2:"
a_2 = 0.38 # влияние различных факторов на потери
b_2 = 0.73 # эффективность действий армии y
c_2 = 0.5 # эффективность действий армии x
h_2 = 0.28 # влияние различных факторов на потери

function P_2(t)
	return sin(2t) + 1
end

function Q_2(t)
	return cos(2t)
end

function F_2!(du, u, p, t) # система уравнений
	du[1] = -a_2*u[1] - b_2*u[2] + P_2(t)
	du[2] = -c_2*u[1]*u[2] - h_2*u[2] + Q_2(t)
end

prob_2 = ODEProblem(F_2!, u_0, T)
sol_2 = solve(prob_2, saveat=0.01)

plt_2 = plot(
	sol_2,
	vars = (0, 1),
	color =:red,
	label = "Численность армии страны X",
	title = "Модель боевых действий №2",
	xlabel = "Время",
	ylabel = "Численность"
)

plot!(
	sol_2,
	vars = (0, 2),
	color =:blue,
	label = "Численность армии страны Y"
)

savefig(plt_2, "model_2_julia.png")