---
## Front matter
lang: ru-RU
title: Лабораторная работа №3
subtitle: Модель военных действий
author:
  - Губина О. В.
institute:
  - Российский университет дружбы народов, Москва, Россия
date: 25 февраля 2023

## i18n babel
babel-lang: russian
babel-otherlangs: english

## Formatting pdf
toc: false
toc-title: Содержание
slide_level: 2
aspectratio: 169
section-titles: true
theme: metropolis
header-includes:
 - \metroset{progressbar=frametitle,sectionpage=progressbar,numbering=fraction}
 - '\makeatletter'
 - '\beamer@ignorenonframefalse'
 - '\makeatother'
---

# Информация

## Докладчик

  * Губина Ольга Вячеславовна
  * студент(-ка) уч. группы НПИбд-01-20
  * Российский университет дружбы народов
  * [1032201737@pfur.ru](mailto:1032201737@rudn.ru)
  * <https://github.com/ovgubina>

# Вводная часть

## Актуальность

- Необходимость навыков моделирования реальных математических задач, построение графиков. 

## Объект и предмет исследования

- Задача о ведении боевых действий
- Языки для моделирования:
  - Julia
  - OpenModelica

## Цели и задачи

- Рассмотреть два случая ведения боевых действий:
  1. Модель боевых действий между регулярными войсками;
  2. Модель ведение боевых действий с участием регулярных войск и партизанских отрядов;
- Построить графики изменения численности войск армии Х и армии У для соответствующий случаев.

## Материалы и методы

- Языки для моделирования:
  - Julia
  - OpenModelica

# Процесс выполнения работы

## Условие модели №1

- Модель боевых действий между регулярными войсками:

    $$
    \begin{cases}
      \frac{dx}{dt}=-0.46x(t)-0.7y(t)+\sin(0.5t)
      \\
      \frac{dy}{dt}=-0.82x(t)-0.5y(t)+\cos(1.5t)
    \end{cases}
    $$

## Теория модели №1

$$
  \begin{cases}
    \frac{dx}{dt}=-a(t)x(t)-b(t)y(t)+R(t)
    \\
    \frac{dy}{dt}=-c(t)x(t)-h(t)y(t)+Q(t)
  \end{cases}
$$
$$
\begin{cases}
    \dot{x}=-by
    \\
    \dot{y}=-cx
  \end{cases}
$$
$$
\begin{aligned}
  \frac{dx}{dy}=\frac{by}{cx}\\ 
  cxdx=bydy\\ 
  cx^2-by^2=C
\end{aligned}
$$

## Условие модели №2

$$
  \begin{cases}
    \frac{dx}{dt}=-0.38x(t)-0.73y(t)+\sin(2t)+1
    \\
    \frac{dy}{dt}=-0.5x(t)y(t)-0.28y(t)+\cos(2t)
  \end{cases}
$$

## Теория модели №2

$$
  \begin{cases}
    \frac{dx}{dt}=-a(t)x(t)-b(t)y(t)+R(t)
    \\
    \frac{dy}{dt}=-c(t)x(t)y(t)-h(t)y(t)+Q(t)
  \end{cases}
$$
$$
  \begin{cases}
    \frac{dx}{dt}=-by(t)
    \\
    \frac{dy}{dt}=-cx(t)y(t)
  \end{cases}
$$
$$
\frac{d}{dt}\left(\frac{b}{2}x^{2}(t)-cy(t)\right)=0
$$
$$
\frac{b}{2}x^{2}(t)-cy(t)=\frac{b}{2}x^{2}(0)-cy(0)=C_{1}
$$

## Код на Julia

:::::::::::::: {.columns align=center}
::: {.column width="50%"}

![](./image/1.png)

:::
::: {.column width="50%"}

![](./image/2.png)
:::
::::::::::::::

## Код на OpenModelica

:::::::::::::: {.columns align=center}
::: {.column width="50%"}

![](./image/3.png)

:::
::: {.column width="50%"}

![](./image/4.png)

:::
::::::::::::::

## Графики Julia

:::::::::::::: {.columns align=center}
::: {.column width="50%"}

![](./image/model_1_julia.png)

:::
::: {.column width="50%"}

![](./image/model_2_julia.png)
:::
::::::::::::::

## Графики OpenModelica

:::::::::::::: {.columns align=center}
::: {.column width="50%"}

![](./image/1_modelica.png)

:::
::: {.column width="50%"}

![](./image/2_modelica.png)
:::
::::::::::::::

# Результаты работы

- Рассмотрела два случая ведения боевых действий:
  1. Модель боевых действий между регулярными войсками;
  2. Модель ведение боевых действий с участием регулярных войск и партизанских отрядов;
- Построила графики изменения численности войск армии Х и армии У для соответствующий случаев.

# Вывод

Создала модель боевых действий по средствам языков Julia и OpenModelica. Построила соответствующие графики двух случаев ведения боевых действий.

[def]: ttps://github.com/ovgubina