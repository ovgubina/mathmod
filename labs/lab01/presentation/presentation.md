---
## Front matter
lang: ru-RU
title: Лабораторная работа №1
subtitle: Работа с git и markdown
author:
  - Губина О. В.
institute:
  - Российский университет дружбы народов, Москва, Россия
date: 10 февраля 2023

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

- Важно уметь работать с системой управления git для комфортной совместной работы
- Markdown --- рабочий инструмент для быстрого написания грамотно построенных текстовых документов и презентаций
- Необходимо создавать отчеты быстро
- Желательна минимизация усилий для создания отчетов и презентаций

## Объект и предмет исследования

- Клонирование репозиториев и их настройка
- Настройка системы для оперирования языком разметки markdown
- Создание текстовых документов docs и pdf из markdown

## Цели и задачи

- Создать новый репозитоорий курса по шаблону с соответствующими наименованиями
- Написать отчет, используя язык разметки markdown

## Материалы и методы

- Распределённая система управления версиями [Git](https://github.com/)
- Процессор `pandoc` для входного формата Markdown
- Результирующие форматы
	- `pdf`
  - `docs`

# Процесс выполнения работы

## Создание репозитория

Создали репозиторий по [шаблону](https://github.com/yamadharma/course-directory-student-template) вручную через [Git](github.com)

![](image/5.png){width=60%}

## Установка недостающих пакетов

- make: ```choco install make```
- git: ```choco install git```
- pandoc: ```choco install pandoc```
- texlive: <https://www.tug.org/texlive/> (установлен при использовании установщика с официального файта)

## Создание SSH

:::::::::::::: {.columns align=center}
::: {.column width="50%"}

```ssh-keygen -t rsa -b 4096 -C "your_email@example.com"```

:::
::: {.column width="50%"}

![](image/9.png)

![](image/13.png)

:::
::::::::::::::

## Рекурскивное клонирование репозитория

![](image/15.png){width=70%}

## Проверка работы установленных пакетов

:::::::::::::: {.columns align=center}
::: {.column width="30%"}

- В консоли папки labs/lab01/report выполнили `make`.
- Сформировались файлы docs и pdf.

:::
::: {.column width="70%"}

![](image/22.png)

:::
::::::::::::::

## Удаление лишних файлов 

::: incremental

Удалили лишние файлы package.json вручную

![](image/23.png){width=60%}

:::

## Отправка файлов на сервер

  ```
  git add .
  git commit -am 'feat(main): make course structure'
  ```
  ![](image/25.png){width=60%}


  ```
  git push
  ```
  ![](image/26.png){width=60%}

## Проверка репозитория

:::::::::::::: {.columns align=center}
::: {.column width="50%"}

![](image/27.png)

![](image/28.png)

:::
::: {.column width="50%"}

![](image/29.png)

![](image/30.png)

:::
::::::::::::::


## Написание отчета

![](image/32.png){width=70%}

# Результаты работы

- Успешно установлены дополнительные пакеты для дальнейшей работы
- Создан и настроен новый репозиторий курса на github.com
- Написан отчет на языке разметки Markdown

# Вывод

Освоила создание репозитория дисциплины на git.com в соответствие с требованиями по шаблону и соблюдением соглашения наименований, соглашения для путей к файлам; написала отчет при использовании markdown по выполненной работе.

[def]: ttps://github.com/ovgubina