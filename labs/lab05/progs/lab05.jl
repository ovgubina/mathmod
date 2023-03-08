using Plots
using DifferentialEquations

"Условия:"
x_0 = 13
y_0 = 18

u_0 = [x_0, y_0]
T = (0.0, 60.0) # отслеживаемый промежуток времени

a = 0.39
b = 0.036
c = 0.19
d = 0.048

function F!(du, u, p, t)
	du[1] = -c * u[1] + d * u[1] * u[2]
	du[2] = a * u[2] - b * u[1] * u[2]
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
	title = "График зависимости численности хищников от численности жертв"
)

plot!(
	plt,	
	Y,
    X,
	color = :red,
	label = "Фазовый портрет"
)

savefig(plt, "julia_2.png")

plt_2 = plot(
	dpi = 300,
	size = (800, 600),
	title = "Графики изменения численности хищников и численности жертв"
)

plot!(
	plt_2,
	sol.t,
	X,
	color = :blue,
	label = "Число жертв"
)

plot!(
	plt_2,
	sol.t,
	Y,
	color = :purple,
	label = "Число хищников"
)

savefig(plt_2, "julia_1.png")

