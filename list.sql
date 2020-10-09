-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 09 2020 г., 03:36
-- Версия сервера: 10.3.22-MariaDB
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `list`
--

-- --------------------------------------------------------

--
-- Структура таблицы `employees`
--

CREATE TABLE `employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `employees`
--

INSERT INTO `employees` (`id`, `name`) VALUES
(1, 'Harry'),
(2, 'Oliver'),
(3, 'Jack'),
(4, 'Charlie'),
(5, 'Thomas'),
(6, 'Jacob'),
(7, 'Alfie'),
(8, 'Riley'),
(9, 'William'),
(10, 'James'),
(11, 'Pavel'),
(12, 'Bob'),
(13, 'Amelia'),
(14, 'Olivia'),
(15, 'Jessica'),
(16, 'Emily'),
(17, 'Lily'),
(18, 'Ava'),
(19, 'Heather'),
(20, 'Sophie'),
(21, 'Mia'),
(22, 'Isabella');

-- --------------------------------------------------------

--
-- Структура таблицы `time_reports`
--

CREATE TABLE `time_reports` (
  `id` int(10) UNSIGNED NOT NULL,
  `employee_id` int(10) UNSIGNED NOT NULL,
  `hours` float(4,2) UNSIGNED NOT NULL,
  `date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `time_reports`
--

INSERT INTO `time_reports` (`id`, `employee_id`, `hours`, `date`) VALUES
(1, 1, 3.00, '2020-10-05'),
(2, 2, 5.00, '2020-10-05'),
(3, 5, 7.00, '2020-10-05'),
(4, 7, 8.50, '2020-10-05'),
(5, 18, 8.70, '2020-10-05'),
(6, 10, 7.90, '2020-10-05'),
(7, 11, 5.50, '2020-10-06'),
(8, 12, 4.00, '2020-10-06'),
(9, 7, 12.00, '2020-10-06'),
(10, 13, 6.00, '2020-10-07'),
(11, 2, 6.60, '2020-10-07'),
(12, 17, 7.00, '2020-10-06'),
(13, 3, 7.00, '2020-10-06'),
(14, 18, 5.50, '2020-10-07'),
(15, 5, 5.00, '2020-10-07'),
(16, 11, 5.00, '2020-10-07'),
(17, 12, 5.00, '2020-10-07'),
(18, 2, 5.00, '2020-10-07'),
(19, 8, 11.20, '2020-10-08'),
(20, 9, 8.50, '2020-10-09'),
(21, 18, 7.80, '2020-10-09'),
(22, 1, 7.00, '2020-10-09'),
(23, 14, 7.00, '2020-10-09'),
(24, 12, 7.90, '2020-10-10');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `employees`
--
ALTER TABLE `employees`
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `time_reports`
--
ALTER TABLE `time_reports`
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT для таблицы `time_reports`
--
ALTER TABLE `time_reports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
