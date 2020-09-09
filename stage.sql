-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 09 sep 2020 om 13:48
-- Serverversie: 10.4.14-MariaDB
-- PHP-versie: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stage`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `teksten`
--

CREATE TABLE `teksten` (
  `id` int(11) NOT NULL,
  `title_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `teksten`
--

INSERT INTO `teksten` (`id`, `title_id`, `text`) VALUES
(1, 'test', '<h1>Title</h1>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing sof</p>\r\n\r\n<pre>\r\n<code class=\"language-javascript\">const TOKEN = \'NjcyNzYzMDE5NzIxMzEwMjE4.XjQOVQ.jTR0CHvxEwHNdhbxjCkOKD0xnwc\';\r\n\r\nconst Discord = require(\'discord.js\');\r\nconst bot = new Discord.Client();\r\n\r\nbot.login(TOKEN);\r\n\r\nbot.on(\'message\', msg =&amp;gt; {\r\n    if (msg.content === \"!ping\") {\r\n        msg.reply(\"pong\")\r\n    }\r\n});</code></pre>\r\n\r\n<p>&nbsp;</p>\r\n');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `teksten`
--
ALTER TABLE `teksten`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `teksten`
--
ALTER TABLE `teksten`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
