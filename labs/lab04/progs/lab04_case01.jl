using Plots
using DifferentialEquations

"Условия:"
x_0 = 0
y_0 = 0

u_0 = [x_0, y_0]
T = (0.0, 60.0) # отслеживаемый промежуток времени

b = 1.5

function F!(du, u, p, t)
	du[1] = u[2]
	du[2] = -b*u[1]
end

prob = ODEProblem(F!, u_0, T)
sol = solve(prob, saveat = 0.05) # обозначили шаг

const X = Float64[]
const Y = Float64[]

for u in sol.u
	x, y = u
	push!(X, x)
	push!(Y, y)
end

plt = plot(
	dpi = 300,
	size = (800, 600),
	title = "Случай 1"
)

plot!(
	plt,
	X,
	Y,
	color = :red,
	label = "Фазовый портрет"
)

savefig(plt, "case01_faze.png")

plt_2 = plot(
	dpi = 300,
	size = (800, 600),
	title = "Случай 1"
)

plot!(
	plt_2,
	sol.t,
	X,
	color = :blue,
	label = "t"
)

plot!(
	plt_2,
	sol.t,
	Y,
	color = :purple,
	label = "V"
)

savefig(plt_2, "case01.png")