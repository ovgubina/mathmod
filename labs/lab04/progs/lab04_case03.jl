using Plots
using DifferentialEquations

"Условие:"
x_0 = 0 
y_0 = 0 

u_0= [x_0, y_0] 
T = (0.0, 60.0) # отслеживаемый период времени

a = 1.0
b = 10.0

function F(t)
	return 2*cos(t)
end

function Fu!(du, u, p, t) # система уравнений
	du[1] = u[2]
	du[2] = F(t) - a*u[2] - b*u[1]
end

prob = ODEProblem(Fu!, u_0, T)
sol = solve(prob, saveat=0.05) # в saveat обозначили шаг

const X = Float64[]
const Y = Float64[]

for u in sol.u
	x, y = u
	push!(X, x)
	push!(Y, y)
end

plt = plot(
	dpi = 300,
	size = (800,600),
	title = "Случай 3"
)

plot!(
	plt,
	X,
	Y,
	color=:red,
	label = "Фазовый портрет"
)

savefig(plt, "case03_faze.png")

plt_2 = plot(
	dpi = 300,
	size = (800,600),
	title = "Случай 3"
)

plot!(
	plt_2,
	sol.t,
	X,
	color=:blue,
	label = "t"
)

plot!(
	plt_2,
	sol.t,
	Y,
	color=:purple,
	label = "V"
)

savefig(plt_2, "case03.png")
