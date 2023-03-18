using Plots
using DifferentialEquations

"Условия:"
N = 14000

I_0 = 114
R_0 = 14
S_0 = N - I_0 - R_0

u_0 = [S_0, I_0, R_0]
T = (0.0, 100.0) # отслеживаемый промежуток времени

a = 0.01 # alpha  
b = 0.02 # beta

function F!(du, u, p, t)	
    du[1] = - a * u[1]
    du[2] = a * u[1] - b * u[2]
	du[3] = b * u[2]
end

prob = ODEProblem(F!, u_0, T)
sol = solve(prob, saveat = 0.05) # обозначили шаг

const S = Float64[]
const I = Float64[]
const R = Float64[]

for u in sol.u
	s, i, r = u
	push!(S, s)
	push!(I, i)
	push!(R, r)
end

plt = plot(
	dpi = 300,
	size = (800, 600),
	title = "Модель эпидемии - изменение числа заболевших I(0) > I*"
)

plot!(
	plt,
	sol.t,
	S,
	color = :blue,
	xlabel="t",
	ylabel="численность",
	label = "Восприимчивые к болезни, но пока здоровые"
)

plot!(
	plt,
	sol.t,
	I,
	color = :red,
	xlabel="t",
	ylabel="численность",
	label = "Инфицированные распространители болезни"
)

plot!(
	plt,
	sol.t,
	R,
	color = :black,
	xlabel="t",
	ylabel="численность",
	label = "Здоровые с иммунитетом к болезни"
)

savefig(plt, "julia_2.png")

