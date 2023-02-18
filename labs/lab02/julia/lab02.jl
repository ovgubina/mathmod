using Plots

"Условие задачи:"
# Задаем расстояние, на котором изначально обнаруживается лодка браконьеров
const a = 6.4
# Во сколько раз катер быстрее лодки
const speed_difference = 2.4

"Случай 1:"
const r_01 = a/3.4# Начальная точка, с которой стартует катер охотников, 
# начиная движение по спирали из формулы 4.3 отчета
const C_01 = a/3.4  # Из формулы отчета 4.13

theta_1 = range(0, 2pi, 1000) # массив углов отклонения - целый оборот

function r1(theta_1)
    return C_01*exp(theta_1/sqrt(4.76))
end

R_1 = r1.(theta_1)

"Случай 2:"
const r_02 = -a/1.4 # минус, потому что в обратную сторону
const C_02 = a/(1.4*exp(-π/sqrt(4.76)))

theta_2 = range(-π, π, 1000)

function r2(theta_2)
  return C_02*exp(theta_2 / sqrt(4.76))
end

R_2 = r2.(theta_2)

plt_1 = plot(
    proj = :polar,
    aspect_ratio=:equal,
    dpi=300,
    title="Задача о погоне: случай 1",
    legend=true
)

plot!(
    plt_1,
    [0.0,0.0],
    [r_01,6.4],
    color=:red,
    label="Катер охотников"
)

plot!(
    plt_1,
    theta_1,
    R_1,
    xlabel="Theta",
    ylabel="r(t)",
    color=:red,
    label=""
)

plot!(
    plt_1,
    [0.0,theta_1[300]],
    [0,20],
    xlabel="Theta",
    ylabel="r(t)",
    color=:blue,
    label="Лодка браконьеров"
)

scatter!(
    plt_1,
    [theta_1[300]],
    [R_1[300]],
    label="Точка встречи",
    ms=1.5
)

savefig(plt_1, "lab02case01.png")

plt_2 = plot(
  proj = :polar,
  aspect_ratio=:equal,
  dpi=300,
  title="Задача о преследовании: случай 2",
  legend=true)

plot!(
  plt_2,
  theta_2,
  R_2,
  xlabel="θ",
  ylabel="r(t)",
  label="Катер охотников",
  color=:red)

plot!(
  plt_2,
  [0.0,0.0],
  [r_02,6.4],
  color=:red,
  label="")
 
plot!(
  plt_2,
  [0.0,theta_2[300]],
  [0,20],
  xlabel="θ",
  ylabel="r(t)",
  label="Лодка браконьеров",
  color=:blue)

scatter!(
  plt_2,
  [theta_2[300]],
  [R_2[300]],
  label="Точка встречи",
  ms=1.5
)

savefig(plt_2, "lab02case02.png")
