using Plots
using DifferentialEquations

"Условия:"
N = 810

n_0 = 11

u_0 = [n_0]
T = (0.0, 0.5) # отслеживаемый промежуток времени

max_v = [0.0, 0.0, 0.0] # для поиска максимальной скорости [скорость, кол-во пользователей, время]

function a_1(t)
	return 0.000014
end

function a_2(t)
	return 0.63
end

function F!(du, u, p, t)
	du[1] = (a_1(t) + a_2(t) * u[1]) * (N - u[1])

	if du[1] > max_v[1]
		max_v[1] = du[1]
		max_v[2] = u[1]
		max_v[3] = t
	end
end

prob = ODEProblem(F!, u_0, T)
sol = solve(prob, saveat = 0.0001) # обозначили шаг

@show max_v[3]

const NN = Float64[]

for u in sol.u
	n = u[1]
	push!(NN, n)
end

plt = plot(
	dpi = 300,
	size = (800, 600),
	title = "Модель распространения рекламы - случай 2"
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

scatter!(
    plt,
    [max_v[3]],
    [max_v[2]],
    label="Момент максимальной скорости",
    ms=1.5
)

savefig(plt, "julia_2.png")

