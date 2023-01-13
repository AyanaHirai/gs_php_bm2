-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost
-- 生成日時: 2023 年 1 月 13 日 02:10
-- サーバのバージョン： 10.4.21-MariaDB
-- PHP のバージョン: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gs_db_bm`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_an_table`
--

CREATE TABLE `gs_an_table` (
  `id` int(12) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `naiyou` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `indate` datetime NOT NULL,
  `title` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_an_table`
--

INSERT INTO `gs_an_table` (`id`, `name`, `email`, `naiyou`, `indate`, `title`) VALUES
(1, '伊藤博文', 'hirochan@japan.com', '天保12年9月2日生まれ\r\n好物：ふぐ', '2020-09-22 07:28:23', '第1, 5, 7, 10代　内閣総理大臣'),
(2, '大隈重信', 'bearbear@japan.com', '天保9年2月16日生まれ\r\n佐賀県出身', '2020-09-22 16:02:47', '第8, 17代　内閣総理大臣'),
(3, '原敬', 'thara@japan.com', '安政3年2月9日生まれ\r\nパリ駐在', '2020-09-22 16:06:42', '第19代　内閣総理大臣'),
(4, '吉田茂', 'shigeru@japan.com', '明治11年9月22日生まれ\r\n通算在籍日数：2616日', '2020-09-22 16:07:48', '第45, 48~51代　内閣総理大臣'),
(5, '田中角榮', 'eichan@japan.com', '大正7年5月4日生まれ\r\n新潟県出身、新幹線開通', '2020-09-22 16:07:48', '第64, 65代　内閣総理大臣'),
(6, '中曽根康弘', 'nksnyshr@japan.com', '大正7年5月27日生まれ\r\n民営化大将', '2020-09-22 16:07:48', '第71~73代　内閣総理大臣'),
(7, '竹下登', 'daigo@japana.com', '大正13年2月26日生まれ\r\n消費税導入', '2020-09-22 17:14:36', '第74代　内閣総理大臣'),
(8, '小泉純一郎', 'junjunx@japan.com', '昭和17年1月8日生まれ\r\n郵政民営化', '2020-09-22 17:59:31', '第87~89代　内閣総理大臣');

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_user_table`
--

CREATE TABLE `gs_user_table` (
  `id` int(12) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `lid` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `lpw` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `kanri_flg` int(1) NOT NULL,
  `life_flg` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_user_table`
--

INSERT INTO `gs_user_table` (`id`, `name`, `lid`, `lpw`, `kanri_flg`, `life_flg`) VALUES
(1, 'テスト１管理者', 'test1', 'test1', 1, 0),
(2, 'テスト2一般', 'test2', 'test2', 0, 0),
(3, 'テスト３', 'test3', 'test3', 0, 0);

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `gs_an_table`
--
ALTER TABLE `gs_an_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `gs_user_table`
--
ALTER TABLE `gs_user_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `gs_an_table`
--
ALTER TABLE `gs_an_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- テーブルの AUTO_INCREMENT `gs_user_table`
--
ALTER TABLE `gs_user_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
