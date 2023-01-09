-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 09 Oca 2023, 08:56:43
-- Sunucu sürümü: 10.4.25-MariaDB
-- PHP Sürümü: 8.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `github`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `developer`
--

CREATE TABLE `developer` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `repoId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `developer`
--

INSERT INTO `developer` (`id`, `username`, `url`, `avatar`, `repoId`) VALUES
(1, 'AUTOMATIC1111', 'https://github.com/AUTOMATIC1111', 'https://avatars.githubusercontent.com/u/20920490?s=40&v=4', 1),
(2, 'dfaker', 'https://github.com/dfaker', 'https://avatars.githubusercontent.com/u/35278260?s=40&v=4', 1),
(3, 'C43H66N12O12S2', 'https://github.com/C43H66N12O12S2', 'https://avatars.githubusercontent.com/u/36072735?s=40&v=4', 1),
(4, 'd8ahazard', 'https://github.com/d8ahazard', 'https://avatars.githubusercontent.com/u/1633844?s=40&v=4', 1),
(5, 'orionaskatu', 'https://github.com/orionaskatu', 'https://avatars.githubusercontent.com/u/100234619?s=40&v=4', 1),
(6, 'soxoj', 'https://github.com/soxoj', 'https://avatars.githubusercontent.com/u/31013580?s=40&v=4', 2),
(7, 'kustermariocoding', 'https://github.com/kustermariocoding', 'https://avatars.githubusercontent.com/u/99247491?s=40&v=4', 2),
(8, 'apps/dependabot', 'https://github.com/apps/dependabot', 'https://avatars.githubusercontent.com/in/29110?s=40&v=4', 2),
(9, 'fen0s', 'https://github.com/fen0s', 'https://avatars.githubusercontent.com/u/37670363?s=40&v=4', 2),
(10, 'cyb3rk0tik', 'https://github.com/cyb3rk0tik', 'https://avatars.githubusercontent.com/u/70950106?s=40&v=4', 2),
(11, 'pesser', 'https://github.com/pesser', 'https://avatars.githubusercontent.com/u/2175508?s=40&v=4', 3),
(12, 'rromb', 'https://github.com/rromb', 'https://avatars.githubusercontent.com/u/38811725?s=40&v=4', 3),
(13, 'patrickvonplaten', 'https://github.com/patrickvonplaten', 'https://avatars.githubusercontent.com/u/23423619?s=40&v=4', 3),
(14, 'ablattmann', 'https://github.com/ablattmann', 'https://avatars.githubusercontent.com/u/26577641?s=40&v=4', 3),
(15, 'owenvincent', 'https://github.com/owenvincent', 'https://avatars.githubusercontent.com/u/72871963?s=40&v=4', 3),
(16, 'dougaitken', 'https://github.com/dougaitken', 'https://avatars.githubusercontent.com/u/52214?s=40&v=4', 4),
(17, 'jessicard', 'https://github.com/jessicard', 'https://avatars.githubusercontent.com/u/621904?s=40&v=4', 4),
(18, 'nylen', 'https://github.com/nylen', 'https://avatars.githubusercontent.com/u/227022?s=40&v=4', 4),
(19, 'dnicolson', 'https://github.com/dnicolson', 'https://avatars.githubusercontent.com/u/2276355?s=40&v=4', 4),
(20, 'okpierre', 'https://github.com/okpierre', 'https://avatars.githubusercontent.com/u/1679025?s=40&v=4', 4),
(21, 'dail8859', 'https://github.com/dail8859', 'https://avatars.githubusercontent.com/u/3694843?s=40&v=4', 5),
(22, 'zocker-160', 'https://github.com/zocker-160', 'https://avatars.githubusercontent.com/u/36563538?s=40&v=4', 5),
(23, 'inkydragon', 'https://github.com/inkydragon', 'https://avatars.githubusercontent.com/u/5158738?s=40&v=4', 5),
(24, 'sitiom', 'https://github.com/sitiom', 'https://avatars.githubusercontent.com/u/56180050?s=40&v=4', 5),
(25, 'mandyedi', 'https://github.com/mandyedi', 'https://avatars.githubusercontent.com/u/1611288?s=40&v=4', 5),
(26, 'ashawkey', 'https://github.com/ashawkey', 'https://avatars.githubusercontent.com/u/25863658?s=40&v=4', 6),
(27, 'nside', 'https://github.com/nside', 'https://avatars.githubusercontent.com/u/11653?s=40&v=4', 6),
(28, 'jogloran', 'https://github.com/jogloran', 'https://avatars.githubusercontent.com/u/460730?s=40&v=4', 6),
(29, 'penberg', 'https://github.com/penberg', 'https://avatars.githubusercontent.com/u/81939?s=40&v=4', 7),
(30, 'glommer', 'https://github.com/glommer', 'https://avatars.githubusercontent.com/u/331197?s=40&v=4', 7),
(31, 'CodingDoug', 'https://github.com/CodingDoug', 'https://avatars.githubusercontent.com/u/3688431?s=40&v=4', 7),
(32, 'tjyang', 'https://github.com/tjyang', 'https://avatars.githubusercontent.com/u/378638?s=40&v=4', 7),
(33, 'psarna', 'https://github.com/psarna', 'https://avatars.githubusercontent.com/u/10433047?s=40&v=4', 7),
(34, 'wingkwong', 'https://github.com/wingkwong', 'https://avatars.githubusercontent.com/u/35857179?s=40&v=4', 8),
(35, 'pranavxc', 'https://github.com/pranavxc', 'https://avatars.githubusercontent.com/u/61551451?s=40&v=4', 8),
(36, 'o1lab', 'https://github.com/o1lab', 'https://avatars.githubusercontent.com/u/5435402?s=40&v=4', 8),
(37, 'dstala', 'https://github.com/dstala', 'https://avatars.githubusercontent.com/u/86527202?s=40&v=4', 8),
(38, 'bcakmakoglu', 'https://github.com/bcakmakoglu', 'https://avatars.githubusercontent.com/u/78412429?s=40&v=4', 8),
(39, 'vhf', 'https://github.com/vhf', 'https://avatars.githubusercontent.com/u/2022803?s=40&v=4', 9),
(40, 'davorpa', 'https://github.com/davorpa', 'https://avatars.githubusercontent.com/u/3125580?s=40&v=4', 9),
(41, 'eshellman', 'https://github.com/eshellman', 'https://avatars.githubusercontent.com/u/926513?s=40&v=4', 9),
(42, 'MHM5000', 'https://github.com/MHM5000', 'https://avatars.githubusercontent.com/u/2694949?s=40&v=4', 9),
(43, 'kadhirash', 'https://github.com/kadhirash', 'https://avatars.githubusercontent.com/u/10100659?s=40&v=4', 9),
(44, 'omeraplak', 'https://github.com/omeraplak', 'https://avatars.githubusercontent.com/u/1110414?s=40&v=4', 10),
(45, 'refine-bot', 'https://github.com/refine-bot', 'https://avatars.githubusercontent.com/u/53254888?s=40&v=4', 10),
(46, 'salihozdemir', 'https://github.com/salihozdemir', 'https://avatars.githubusercontent.com/u/41580619?s=40&v=4', 10),
(47, 'apps/github-actions', 'https://github.com/apps/github-actions', 'https://avatars.githubusercontent.com/in/15368?s=40&v=4', 10),
(48, 'necatiozmen', 'https://github.com/necatiozmen', 'https://avatars.githubusercontent.com/u/18739364?s=40&v=4', 10),
(49, 'antfu', 'https://github.com/antfu', 'https://avatars.githubusercontent.com/u/11247099?s=40&v=4', 11),
(50, 'apps/github-actions', 'https://github.com/apps/github-actions', 'https://avatars.githubusercontent.com/in/15368?s=40&v=4', 11),
(51, 'jiangshanmeta', 'https://github.com/jiangshanmeta', 'https://avatars.githubusercontent.com/u/13798212?s=40&v=4', 11),
(52, 'uid11', 'https://github.com/uid11', 'https://avatars.githubusercontent.com/u/20250811?s=40&v=4', 11),
(53, 'g-plane', 'https://github.com/g-plane', 'https://avatars.githubusercontent.com/u/17216317?s=40&v=4', 11),
(54, 'hee9joon', 'https://github.com/hee9joon', 'https://avatars.githubusercontent.com/u/55437130?s=40&v=4', 12),
(55, 'heejkoo', 'https://github.com/heejkoo', 'https://avatars.githubusercontent.com/u/64852725?s=40&v=4', 12),
(56, 'dasayan05', 'https://github.com/dasayan05', 'https://avatars.githubusercontent.com/u/18719603?s=40&v=4', 12),
(57, 'Yulv-git', 'https://github.com/Yulv-git', 'https://avatars.githubusercontent.com/u/34329208?s=40&v=4', 12),
(58, 'gabriben', 'https://github.com/gabriben', 'https://avatars.githubusercontent.com/u/37249800?s=40&v=4', 12),
(59, 'Xhofe', 'https://github.com/Xhofe', 'https://avatars.githubusercontent.com/u/36558727?s=40&v=4', 13),
(60, 'foxxorcat', 'https://github.com/foxxorcat', 'https://avatars.githubusercontent.com/u/95907542?s=40&v=4', 13),
(61, 'apps/allcontributors', 'https://github.com/apps/allcontributors', 'https://avatars.githubusercontent.com/in/23186?s=40&v=4', 13),
(62, '1649508134', 'https://github.com/1649508134', 'https://avatars.githubusercontent.com/u/25055495?s=40&v=4', 13),
(63, 'Windman1320', 'https://github.com/Windman1320', 'https://avatars.githubusercontent.com/u/9999486?s=40&v=4', 13),
(64, 'xinntao', 'https://github.com/xinntao', 'https://avatars.githubusercontent.com/u/17445847?s=40&v=4', 14),
(65, 'tuhins', 'https://github.com/tuhins', 'https://avatars.githubusercontent.com/u/1175506?s=40&v=4', 14),
(66, 'VincentSC', 'https://github.com/VincentSC', 'https://avatars.githubusercontent.com/u/5090382?s=40&v=4', 14),
(67, 'Wscats', 'https://github.com/Wscats', 'https://avatars.githubusercontent.com/u/17243165?s=40&v=4', 14),
(68, 'bramton', 'https://github.com/bramton', 'https://avatars.githubusercontent.com/u/18028233?s=40&v=4', 14),
(69, 'mattermod', 'https://github.com/mattermod', 'https://avatars.githubusercontent.com/u/16344077?s=40&v=4', 15),
(70, 'hmhealey', 'https://github.com/hmhealey', 'https://avatars.githubusercontent.com/u/3277310?s=40&v=4', 15),
(71, 'saturninoabril', 'https://github.com/saturninoabril', 'https://avatars.githubusercontent.com/u/5334504?s=40&v=4', 15),
(72, 'jwilander', 'https://github.com/jwilander', 'https://avatars.githubusercontent.com/u/2672098?s=40&v=4', 15),
(73, 'asaadmahmood', 'https://github.com/asaadmahmood', 'https://avatars.githubusercontent.com/u/11034289?s=40&v=4', 15),
(74, 'AmazingAng', 'https://github.com/AmazingAng', 'https://avatars.githubusercontent.com/u/14728591?s=40&v=4', 16),
(75, 'JustinAsdz', 'https://github.com/JustinAsdz', 'https://avatars.githubusercontent.com/u/38929721?s=40&v=4', 16),
(76, 'EasyChris', 'https://github.com/EasyChris', 'https://avatars.githubusercontent.com/u/9960087?s=40&v=4', 16),
(77, 'quantum-proof', 'https://github.com/quantum-proof', 'https://avatars.githubusercontent.com/u/101009469?s=40&v=4', 16),
(78, 'ShuxunoO', 'https://github.com/ShuxunoO', 'https://avatars.githubusercontent.com/u/40421448?s=40&v=4', 16),
(79, 'ckerr', 'https://github.com/ckerr', 'https://avatars.githubusercontent.com/u/70381?s=40&v=4', 17),
(80, 'mikedld', 'https://github.com/mikedld', 'https://avatars.githubusercontent.com/u/298203?s=40&v=4', 17),
(81, 'jre', 'https://github.com/jre', 'https://avatars.githubusercontent.com/u/107666?s=40&v=4', 17),
(82, 'titer', 'https://github.com/titer', 'https://avatars.githubusercontent.com/u/22149508?s=40&v=4', 17),
(83, 'livings124', 'https://github.com/livings124', 'https://avatars.githubusercontent.com/u/234350?s=40&v=4', 17),
(84, 'looly', 'https://github.com/looly', 'https://avatars.githubusercontent.com/u/1432613?s=40&v=4', 18),
(85, 'VampireAchao', 'https://github.com/VampireAchao', 'https://avatars.githubusercontent.com/u/52746628?s=40&v=4', 18),
(86, 'dazer007', 'https://github.com/dazer007', 'https://avatars.githubusercontent.com/u/6936476?s=40&v=4', 18),
(87, 'Createsequence', 'https://github.com/Createsequence', 'https://avatars.githubusercontent.com/u/49221670?s=40&v=4', 18),
(88, 'meiMingle', 'https://github.com/meiMingle', 'https://avatars.githubusercontent.com/u/39942874?s=40&v=4', 18),
(89, 'anncwb', 'https://github.com/anncwb', 'https://avatars.githubusercontent.com/u/28132598?s=40&v=4', 19),
(90, 'mynetfan', 'https://github.com/mynetfan', 'https://avatars.githubusercontent.com/u/17241274?s=40&v=4', 19),
(91, 'zuihou', 'https://github.com/zuihou', 'https://avatars.githubusercontent.com/u/8500410?s=40&v=4', 19),
(92, 'vben-admin', 'https://github.com/vben-admin', 'https://avatars.githubusercontent.com/u/72597450?s=40&v=4', 19),
(93, 'jinmao88', 'https://github.com/jinmao88', 'https://avatars.githubusercontent.com/u/50581550?s=40&v=4', 19),
(94, 'bloc97', 'https://github.com/bloc97', 'https://avatars.githubusercontent.com/u/567732?s=40&v=4', 20),
(95, 'apolinario', 'https://github.com/apolinario', 'https://avatars.githubusercontent.com/u/788417?s=40&v=4', 20),
(96, 'YunaiV', 'https://github.com/YunaiV', 'https://avatars.githubusercontent.com/u/2015545?s=40&v=4', 21),
(97, 'yangzongzhuan', 'https://github.com/yangzongzhuan', 'https://avatars.githubusercontent.com/u/19240310?s=40&v=4', 21),
(98, 'xingyu4j', 'https://github.com/xingyu4j', 'https://avatars.githubusercontent.com/u/41043753?s=40&v=4', 21),
(99, 'cooling-jason', 'https://github.com/cooling-jason', 'https://avatars.githubusercontent.com/u/35036171?s=40&v=4', 21),
(100, 'sfmind', 'https://github.com/sfmind', 'https://avatars.githubusercontent.com/u/85842890?s=40&v=4', 21),
(101, 'pesser', 'https://github.com/pesser', 'https://avatars.githubusercontent.com/u/2175508?s=40&v=4', 22),
(102, 'rromb', 'https://github.com/rromb', 'https://avatars.githubusercontent.com/u/38811725?s=40&v=4', 22),
(103, 'manolo-lolo', 'https://github.com/manolo-lolo', 'https://avatars.githubusercontent.com/u/47297044?s=40&v=4', 22),
(104, 'tgisaturday', 'https://github.com/tgisaturday', 'https://avatars.githubusercontent.com/u/3591020?s=40&v=4', 22),
(105, 'rom1504', 'https://github.com/rom1504', 'https://avatars.githubusercontent.com/u/2346494?s=40&v=4', 22),
(106, 'gasman', 'https://github.com/gasman', 'https://avatars.githubusercontent.com/u/85097?s=40&v=4', 23),
(107, 'kaedroho', 'https://github.com/kaedroho', 'https://avatars.githubusercontent.com/u/1093808?s=40&v=4', 23),
(108, 'thibaudcolas', 'https://github.com/thibaudcolas', 'https://avatars.githubusercontent.com/u/877585?s=40&v=4', 23),
(109, 'jacobtoppm', 'https://github.com/jacobtoppm', 'https://avatars.githubusercontent.com/u/55137073?s=40&v=4', 23),
(110, 'lb-', 'https://github.com/lb-', 'https://avatars.githubusercontent.com/u/1396140?s=40&v=4', 23),
(111, 'hengyunabc', 'https://github.com/hengyunabc', 'https://avatars.githubusercontent.com/u/1683936?s=40&v=4', 24),
(112, 'HollowMan6', 'https://github.com/HollowMan6', 'https://avatars.githubusercontent.com/u/43995067?s=40&v=4', 24),
(113, 'kylixs', 'https://github.com/kylixs', 'https://avatars.githubusercontent.com/u/5483385?s=40&v=4', 24),
(114, 'Hearen', 'https://github.com/Hearen', 'https://avatars.githubusercontent.com/u/10859176?s=40&v=4', 24),
(115, 'beiwei30', 'https://github.com/beiwei30', 'https://avatars.githubusercontent.com/u/18651996?s=40&v=4', 24),
(116, 'relt-1', 'https://github.com/relt-1', 'https://avatars.githubusercontent.com/u/60782515?s=40&v=4', 25),
(117, 'RajrupDasid', 'https://github.com/RajrupDasid', 'https://avatars.githubusercontent.com/u/60233333?s=40&v=4', 25),
(118, 'Nshout', 'https://github.com/Nshout', 'https://avatars.githubusercontent.com/u/61021151?s=40&v=4', 25);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `repositories`
--

CREATE TABLE `repositories` (
  `rank` int(11) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `repositoryName` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `language` varchar(50) DEFAULT NULL,
  `languageColor` varchar(7) DEFAULT NULL,
  `totalStars` int(11) DEFAULT NULL,
  `forks` int(11) DEFAULT NULL,
  `starsSince` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `repositories`
--

INSERT INTO `repositories` (`rank`, `username`, `repositoryName`, `url`, `description`, `language`, `languageColor`, `totalStars`, `forks`, `starsSince`) VALUES
(1, 'AUTOMATIC1111', 'stable-diffusion-webui', 'https://github.com/AUTOMATIC1111/stable-diffusion-webui', 'Stable Diffusion web UI', 'Python', '#3572A5', 8672, 1208, 839),
(2, 'soxoj', 'maigret', 'https://github.com/soxoj/maigret', '????️‍♂️Collect a dossier on a person by username from thousands of sites', 'Python', '#3572A5', 6017, 471, 589),
(3, 'CompVis', 'stable-diffusion', 'https://github.com/CompVis/stable-diffusion', 'A latent text-to-image diffusion model', 'Jupyter Notebook', '#DA5B0B', 28361, 4558, 316),
(4, 'remoteintech', 'remote-jobs', 'https://github.com/remoteintech/remote-jobs', 'A list of semi to fully remote-friendly companies (jobs) in tech.', 'JavaScript', '#f1e05a', 21423, 2283, 315),
(5, 'dail8859', 'NotepadNext', 'https://github.com/dail8859/NotepadNext', 'A cross-platform, reimplementation of Notepad++', 'C++', '#f34b7d', 3225, 198, 299),
(6, 'ashawkey', 'stable-dreamfusion', 'https://github.com/ashawkey/stable-dreamfusion', 'A pytorch implementation of text-to-3D dreamfusion, powered by stable diffusion.', 'Python', '#3572A5', 1717, 91, 274),
(7, 'libsql', 'libsql', 'https://github.com/libsql/libsql', 'libSQL is a fork of SQLite that is both Open Source, and Open Contributions.', 'C', '#555555', 1403, 33, 209),
(8, 'nocodb', 'nocodb', 'https://github.com/nocodb/nocodb', '????????????Open Source Airtable Alternative', 'TypeScript', '#3178c6', 30963, 1901, 163),
(9, 'EbookFoundation', 'free-programming-books', 'https://github.com/EbookFoundation/free-programming-books', '????Freely available programming books', NULL, NULL, 251309, 51417, 149),
(10, 'pankod', 'refine', 'https://github.com/pankod/refine', 'Build your React-based CRUD applications, without constraints.', 'TypeScript', '#3178c6', 3700, 264, 128),
(11, 'type-challenges', 'type-challenges', 'https://github.com/type-challenges/type-challenges', 'Collection of TypeScript type challenges with online judge', 'TypeScript', '#3178c6', 25145, 2443, 119),
(12, 'heejkoo', 'Awesome-Diffusion-Models', 'https://github.com/heejkoo/Awesome-Diffusion-Models', 'A collection of resources and papers on Diffusion Models and Score-matching Models, a darkhorse in the field of Generative Models', NULL, NULL, 3159, 229, 108),
(13, 'alist-org', 'alist', 'https://github.com/alist-org/alist', '????️A file list program that supports multiple storage, powered by Gin and Solidjs. / 一个支持多存储的文件列表程序，使用 Gin 和 Solidjs。', 'Go', '#00ADD8', 10105, 1580, 95),
(14, 'TencentARC', 'GFPGAN', 'https://github.com/TencentARC/GFPGAN', 'GFPGAN aims at developing Practical Algorithms for Real-world Face Restoration.', 'Python', '#3572A5', 23128, 3432, 93),
(15, 'mattermost', 'mattermost-webapp', 'https://github.com/mattermost/mattermost-webapp', 'Webapp of Mattermost server:https://github.com/mattermost/mattermost-server', 'TypeScript', '#3178c6', 2030, 2658, 85),
(16, 'AmazingAng', 'WTF-Solidity', 'https://github.com/AmazingAng/WTF-Solidity', '我最近在重新学solidity，巩固一下细节，也写一个“Solidity极简入门”，供小白们使用（编程大佬可以另找教程），每周更新1-3讲。', 'Solidity', '#AA6746', 2920, 423, 78),
(17, 'transmission', 'transmission', 'https://github.com/transmission/transmission', 'Official Transmission BitTorrent client repository', 'C++', '#f34b7d', 7698, 970, 55),
(18, 'dromara', 'hutool', 'https://github.com/dromara/hutool', '????A set of tools that keep Java sweet.', 'Java', '#b07219', 24103, 6668, 48),
(19, 'vbenjs', 'vue-vben-admin', 'https://github.com/vbenjs/vue-vben-admin', 'A modern vue admin. It is based on Vue3, vite and TypeScript. It\'s fast！', 'Vue', '#41b883', 14174, 3954, 47),
(20, 'bloc97', 'CrossAttentionControl', 'https://github.com/bloc97/CrossAttentionControl', 'Unofficial implementation of \"Prompt-to-Prompt Image Editing with Cross Attention Control\" with Stable Diffusion', 'Jupyter Notebook', '#DA5B0B', 539, 36, 45),
(21, 'YunaiV', 'ruoyi-vue-pro', 'https://github.com/YunaiV/ruoyi-vue-pro', '????官方推荐????RuoYi-Vue 全新 Pro 版本，优化重构所有功能。基于 Spring Boot + MyBatis Plus + Vue & Element 实现的后台管理系统 + 微信小程序，支持 RBAC 动态权限、数据权限、SaaS 多租户、Flowable 工作流、三方登录、支付、短信、商城等功能。你的⭐️Star⭐️，是作者生发的动力！', 'Java', '#b07219', 7059, 2284, 36),
(22, 'CompVis', 'taming-transformers', 'https://github.com/CompVis/taming-transformers', 'Taming Transformers for High-Resolution Image Synthesis', 'Jupyter Notebook', '#DA5B0B', 3154, 594, 32),
(23, 'wagtail', 'wagtail', 'https://github.com/wagtail/wagtail', 'A Django content management system focused on flexibility and user experience', 'Python', '#3572A5', 12973, 2782, 27),
(24, 'alibaba', 'arthas', 'https://github.com/alibaba/arthas', 'Alibaba Java Diagnostic Tool Arthas/Alibaba Java诊断利器Arthas', 'Java', '#b07219', 30666, 6686, 21),
(25, 'relt-1', 'czeditor', 'https://github.com/relt-1/czeditor', NULL, 'Python', '#3572A5', 49, 6, 10);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `developer`
--
ALTER TABLE `developer`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `repositories`
--
ALTER TABLE `repositories`
  ADD PRIMARY KEY (`rank`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `developer`
--
ALTER TABLE `developer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
