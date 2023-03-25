using Plots
using DifferentialEquations

"Условия:"
N = 810

n_0 = 11

u_0 = [n_0]
T = (0.0, 0.5) # отслеживаемый промежуток времени

function a_1(t)
	return 0.7*t
end

function a_2(t)
	return 0.4*cos(t)
end

function F!(du, u, p, t)
	du[1] = (a_1(t) + a_2(t) * u[1]) * (N - u[1])
end

prob = ODEProblem(F!, u_0, T)
sol = solve(prob, saveat = 0.0001) # обозначили шаг

const NN = Float64[]

for u in sol.u
	n = u[1]
	push!(NN, n)
end

plt = plot(
	dpi = 300,
	size = (800, 600),
	title = "Модель распространения рекламы - случай 3"
)

plot!(
	plt,
	sol.t,
	NN,
	color = :blue,
	xlabel="t",
	ylabel="N(t)",
	label = "Число осведомленных"
)

savefig(plt, "julia_3.png")

