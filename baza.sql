-- phpMyAdmin SQL Dump
-- version 4.0.10
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 18 2014 г., 00:51
-- Версия сервера: 5.5.38-log
-- Версия PHP: 5.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `baza`
--

-- --------------------------------------------------------

--
-- Структура таблицы `maintext`
--

CREATE TABLE IF NOT EXISTS `maintext` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` tinytext NOT NULL,
  `body` text NOT NULL,
  `url` tinytext NOT NULL,
  `menu` tinytext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `maintext`
--

INSERT INTO `maintext` (`id`, `name`, `body`, `url`, `menu`) VALUES
(1, 'Добро пожаловать!', 'Хореографическое искусство формирует фигуру, развивает физическую силу,выносливость,ловкость,раскрепощенность,уверенность в своих возможностях,совершенствует моральные качества, развивает музыкальные и танцевальные способности. Занимаясь танцами, Вы сможете выражать собственные ощущения используя язык танца,научитесь понимать "язык"движений,их красоту.\r\n', 'main', 'top'),
(2, 'Мы можем предложить Вам:', '1)Обучение различным направлениям восточного танца\r\n2)Квалифицированных педагогов,любящих свою работу\r\n3)Удобное время занятий\r\n4)Демократичные цены', 'servis', 'top'),
(3, 'Наши залы находятся по адресам:', 'г.Гомель,ул.Ильича,24\r\nг.Гомель,пр-т Космонавтов,12', 'contact', 'top'),
(4, 'Расписание занятий:', 'Взрослые пн,ср,пт 19:00-21:00\r\nДети     вт,чт    18:30-20:30', 'list', 'left'),
(5, 'Стоимость:', 'Взрослые(3 раза в неделю)320 000 руб./мес.\r\nДети    (2 раза в неделю)250 000 руб./мес.', 'prais', 'left'),
(6, 'Направления:', 'классический арабский танец\r\nтрайбл\r\nтабла соло\r\nсаиди\r\nиндийский\r\nяпонский', 'dance', 'left');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
