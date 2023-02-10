---
## Front matter
title: "Отчет по лабораторной работе №1"
subtitle: "Дисциплина: Математическое моделирование"
author: "Выполнила: Губина Ольга Вячеславовна"
# РОССИЙСКИЙ УНИВЕРСИТЕТ ДРУЖБЫ НАРОДОВ
# Факультет физико-математических и естественных наук
# Кафедра прикладной информатики и теории вероятностей


## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

### Цель работы:
Создание репозитория дисциплины на github.com в соответствие с требованиями по шаблону и соблюдением соглашения наименований, соглашения для путей к файлам; написание отчета при использовании markdown по выполненной работе.

# Задание

1. Создать репозиторий дисциплины на github.com в соответствие с:
  - шаблоном;
  - соглашением наименований;
  - соглашением для путей к файлам; 
2. Написать отчет при использовании markdown по выполненной работе.

# Теоретическое введение

В данной работе мы будем взаимодействовать с ***github.com***, где будем выгружать лабораторные работы.

**Git** — распределённая система управления версиями. Проект был создан *Линусом Торвальдсом* для управления разработкой ядра Linux, первая версия выпущена 7 апреля 2005 года. На сегодняшний день его поддерживает Джунио Хамано.

Для того, чтобы git узнал наше имя и электронную почту, необходимо выполнить следующие действия в командной строке:

```
git config --global user.name "Your Name"
git config --global user.email "your_email@whatever.com"
```
Отчеты по лабораторнымс работам данной дисциплины будем писать с использованием ***markdown***.

**Markdown** — облегчённый язык разметки, созданный с целью обозначения форматирования в простом тексте, с максимальным сохранением его читаемости человеком, и пригодный для машинного преобразования в языки для продвинутых публикаций.

Теперь в табл. @tbl:1 рассмотрим основные сведения и функции языка разметки.

: Описание некоторых функций языка разметки markdown {#tbl:1}

| Символьное обозначение в коде      | Описание                                                                                                           |
|--------------|----------------------------------------------------------------------------------------------------------------------------|
| `#`          | Создание заголовка первого порядка (всего порядков шесть, кол-во символов `#` обозначаем номер порядка)                                                                        |
| `** **`      |Задает полужирное начертание текста    |
| `* *`       | Задает курсивное начертание текста                                           |
| `*** ***`      | Задает курсивное полужирное начертание текста |
| `-`  или `*`   | Задает элемент неупорядоченного маркированного списка                                                                              |
| ` ``` ``` `      | Задает выделенные блоки кода                                                                                   |


Более подробно о git и markdown см. в [@git-wiki;@git;@markdown-wiki;@markdown].

# Выполнение лабораторной работы

1. Авторизуемся на github.com (рис. [@fig:01]).

![Авторизация на github.com](image/1.png){#fig:01 width=50%}

2. Далее нам необходимо создать каталог, где будут располагаться все лабораторные работы: 2022-2023/Математическое моделирование/mathmod (рис. @fig:02).

![Создание каталога 2022-2023/Математическое моделирование/mathmod](image/2.png){#fig:02 width=70%}

3. Создадим репозиторий по предложенному шаблону вручную через git.com (рис. [@fig:03]-[@fig:04]).

![Создание репозитория по шаблону](image/3.png){#fig:03 width=70%}

![Создание репозитория по шаблону](image/4.png){#fig:04 width=70%}

Видим, что репозиторий успешно создан в нашем профиле (рис. [@fig:05]).

![Создание репозитория по шаблону](image/5.png){#fig:05 width=70%}

4. Через консоль PowerShell с использованием менеджера пакетов **chocolatey** установим **make** (рис. [@fig:06]):

```choco install make```

![Установка make](image/6.png){#fig:06 width=70%}

Видим, что make был успешно установлен, не видит makefile, потому что его нет (рис. [@fig:07]).

![Проверка make](image/7.png){#fig:07 width=70%}

5. Установили git (рис. [@fig:08]).

![Установка git](image/8.png){#fig:08 width=70%}

6. Переходим в папку 2022-2023/Математическое моделирование/mathmod, где запускаем консоль PowerShell. Там проверяем работу git просмотром его версии: ```git -v``` ; также создаем новый ssh ключ, где в качестве метки служит наш адрес электронной почты ```ssh-keygen -t rsa -b 4096 -C "your_email@example.com"``` (рис. [@fig:09]).

![Проверка git; создание ssh-ключа](image/9.png){#fig:09 width=70%}

7. Устанавливаем shh-агента для Windows и добавляем закрытый ключ SSH в ssh-агент (рис. [@fig:10]).

![Добавление закрытого ключа SSH в ssh-агент](image/10.png){#fig:10 width=70%}

8. Скопировали ssh-ключ из файла, куда он был сохранен (рис. [@fig:11]).

![Копирование ключа SSH](image/11.png){#fig:11 width=70%}

И добавили его на git.com (рис. [@fig:12]-[@fig:13]).

![Добавление закрытого ключа SSH](image/12.png){#fig:12 width=70%}


![Ключ SSH](image/13.png){#fig:13 width=70%}

9. Копируем SHH из репозитория (рис. [@fig:14]). После используем его для рекурсивного копирования репозитория (рис. @fig:15).

![SSH из репозитория](image/14.png){#fig:14 width=70%}

![Клонирование репозитория](image/15.png){#fig:15 width=70%}

10. Не удалось создать все необходимые директории labs, используя makefile, поэтому копируем все необходиные файлы из template в папки lab01-08, созданные вручную, на примере lab01 (рис. [@fig:16]).

![Содержимое папки labs/lab01, созданное вручную](image/16.png){#fig:16 width=70%}

11. Установили pandoc (рис. @fig:17).

![Установка pandoc](image/17.png){#fig:17 width=70%}

12. Выполним ```make``` в папке labs/lab01/report (рис. [@fig:18]) - видим, что docs файл был успешно создан, значит pandoc работает исправно (рис. [@fig:19]).

![Первый make](image/18.png){#fig:18 width=70%}

![Создание docs файла](image/19.png){#fig:19 width=70%}

13. Далее устанавливаем texlive (рис. [@fig:20]).

![Установка texlive](image/20.png){#fig:20 width=70%}

Однако возникла проблема с таймаутом в 2700 с. Поэтому установка была произведена через установщик, скачанный на официальном сайте (рис. [@fig:21]).

![Установка texlive - 2](image/21.jpg){#fig:21 width=70%}

14. Снова выполним ```make``` в папке labs/lab01/report - видим, что теперь и pdf файл был успешно создан (рис. [@fig:22]).

![Генерация pdf-файла](image/22.png){#fig:22 width=70%}

15. Удалили лишние файлы package.json (рис. [@fig:23]-[@fig:24]).

![Удаление package.json](image/23.png){#fig:23 width=70%}

![Удаление package.json - 2](image/24.png){#fig:24 width=70%}

16. Необходимые каталоги у нас уже созданы вручную. Поэтому теперь отправим файлы на сервер (рис. [@fig:25]-[@fig:26]):

```
git add .
git commit -am 'feat(main): make course structure'
git push
```
![git add/commit](image/25.png){#fig:25 width=70%}

![git push](image/26.png){#fig:26 width=70%}

Также пришлось выполнить следующие действия в командной строке для того, чтобы git узнал наше имя и электронную почту (рис. [@fig:25]):

```
git config --global user.name "Your Name"
git config --global user.email "your_email@whatever.com"
```

17. После этого проверим содержимое в репозитории (рис. [@fig:27]-[@fig:31]). Видим *"2 commits"*.

![Появилась папка labs](image/27.png){#fig:27 width=70%}

![Восемь папок с лабораторными работами](image/28.png){#fig:28 width=70%}

![Папки report и presentation](image/29.png){#fig:29 width=70%}

![Содержимое папки report](image/30.png){#fig:30 width=70%}

![Файл report.pdf из labs/lab01/report репозитория](image/31.png){#fig:31 width=70%}

18. Написала отчет по выполненной работе на markdown (рис. [@fig:32]-[@fig:33]).

![Написание отчета](image/32.png){#fig:32 width=70%}

![Написание отчета - 2](image/33.png){#fig:33 width=70%}

19. Исправила неверное наименование репозитория на study_2022-2023_mathmod (рис. [@fig:34]).

![Исправленное название репозитория](image/34.png){#fig:34 width=70%}

# Выводы

Создала репозиторий mathmod дисциплины Математическое моделирование на git.com в соответствие с требованиями по шаблону и соблюдением соглашения наименований, соглашения для путей к файлам; написала отчет при использовании языка разметки markdown по выполненной работе.

# Список литературы{.unnumbered}

::: {#refs}
:::
