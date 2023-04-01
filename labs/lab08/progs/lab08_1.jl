using Plots
using DifferentialEquations

"Условия:"
M_01 = 2.5
M_02 = 1.8
p_cr = 20
N = 23
q = 1
tau_1 = 16
tau_2 = 19
tilde_p_1 = 13
tilde_p_2 = 11 

u_0 = [M_01, M_02]


a1 = p_cr / (tau_1 * tau_1 * tilde_p_1 * tilde_p_1 * N * q)
a2 = p_cr / (tau_2 * tau_2 * tilde_p_2 * tilde_p_2 * N * q)
b = p_cr / (tau_1 * tau_1 * tau_2 * tau_2 * tilde_p_1 * tilde_p_1 * tilde_p_2 * tilde_p_2 * N * q)
a1 = p_cr / (tau_1 * tau_1 * tilde_p_1 * tilde_p_1 * N * q)
c1 = (p_cr - tilde_p_1) / (tau_1 * tilde_p_1)
c2 = (p_cr - tilde_p_2) / (tau_2 * tilde_p_2)

T = (0.0*c1, 500.0*c1) # отслеживаемый промежуток времени - нормировка по времени


function F!(du, u, p, t)
	theta = t / c1
	du[1] = (c1 / c1) * u[1] - (b / c1) * u[1] * u[2] - (a1 / c1) * u[1] * u[1];
	du[2] = (c2 / c1) * u[2] - (b / c1) * u[1] * u[2] - (a2 / c1) * u[2] * u[2];
	
end

prob = ODEProblem(F!, u_0, T)
sol = solve(prob, saveat = 0.001) # обозначили шаг

const M1 = Float64[]
const M2 = Float64[]

for u in sol.u
	m1 = u[1]
	m2 = u[2]
	push!(M1, m1)
	push!(M2, m2)
end

plt = plot(
	dpi = 300,
	size = (800, 600),
	title = "Модель конкуренции двух фирм - случай 1"
)

plot!(
	plt,
	sol.t,
	M1,
	color = :red,
	xlabel="t",
	ylabel="M_1,2",
	label = "Фирма 1"
)

plot!(
	plt,
	sol.t,
	M2,
	color = :blue,
	xlabel="t",
	ylabel="M_1,2",
	label = "Фирма 2"
)

savefig(plt, "julia_1.png")

