-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 17, 2024 lúc 12:25 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `laravel`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(50) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `author` varchar(50) NOT NULL,
  `publisher` varchar(255) NOT NULL,
  `publication` datetime DEFAULT NULL,
  `price` double(10,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `books`
--

INSERT INTO `books` (`id`, `title`, `thumbnail`, `author`, `publisher`, `publication`, `price`, `quantity`, `category_id`, `created_at`, `updated_at`) VALUES
(2, 'Voluptatem nisi quia hic vitae rerum est enim.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8kFU1r-gW9_B0S4z-Kal7x9NPVPeapn9VCg&s', 'Prof. Frederik Ward MD', 'Toy-Sawayn', '2024-07-17 00:00:00', 28.44, 30, 2, NULL, NULL),
(3, 'Corrupti sequi eligendi et est eum eius.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Cyril Grimes', 'Gottlieb LLC', '1989-01-26 20:48:23', 51.09, 81, 2, NULL, NULL),
(4, 'Dolores magnam rerum et quis.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Jan Spencer', 'Kshlerin-Legros', '2013-03-12 08:30:54', 62.73, 22, 5, NULL, NULL),
(5, 'Rerum facilis hic eos voluptatum blanditiis.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Sheldon Schamberger', 'Lowe-Torphy', '1976-03-07 01:02:02', 82.29, 97, 4, NULL, NULL),
(6, 'Hic sed nemo dicta alias.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Dr. Lucio Smith IV', 'Kris, Wilkinson and Heidenreich', '1989-08-10 02:57:39', 53.95, 69, 2, NULL, NULL),
(7, 'Et nihil qui quisquam harum.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Prof. Josie Blanda Sr.', 'Emmerich PLC', '1970-02-03 17:34:00', 19.12, 32, 5, NULL, NULL),
(8, 'Cumque voluptatem odio vitae incidunt ratione.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Bernie Ratke', 'Armstrong Ltd', '1986-06-27 08:15:59', 72.76, 66, 3, NULL, NULL),
(9, 'Et quia porro dolor dignissimos.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Mona Sipes', 'Reinger-Rau', '1999-09-22 14:00:02', 77.38, 89, 3, NULL, NULL),
(10, 'Ipsa ex sapiente inventore magnam autem et enim.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Lamar Goodwin DDS', 'Ferry, Kunde and Monahan', '2024-03-19 09:28:34', 14.33, 8, 4, NULL, NULL),
(11, 'Velit voluptatem quaerat quia nulla.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Arnulfo Altenwerth V', 'Padberg, Marks and Green', '2006-11-21 07:44:23', 47.41, 48, 4, NULL, NULL),
(12, 'Et illo soluta qui ad.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Lavon Hettinger V', 'Kshlerin, Dare and Jacobi', '2006-04-07 08:49:27', 14.77, 59, 5, NULL, NULL),
(13, 'Optio non omnis ea quia ab qui quaerat.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Dr. Everett Lynch', 'Bode, Leffler and Harber', '1983-07-31 14:52:53', 14.55, 52, 2, NULL, NULL),
(14, 'Et veritatis est quis sed ut accusamus.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Zaria Murray', 'Windler, Padberg and Schulist', '2011-07-09 02:18:55', 97.26, 9, 4, NULL, NULL),
(15, 'Magnam saepe totam cum alias repellat nihil ipsa.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Wilma Runolfsdottir', 'Langworth, Goodwin and Macejkovic', '2020-08-31 11:35:48', 34.79, 56, 4, NULL, NULL),
(16, 'Iste et harum voluptatem iste.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Joseph Torphy', 'Graham and Sons', '2002-04-03 07:41:21', 39.41, 13, 3, NULL, NULL),
(17, 'Eos velit pariatur est sapiente ipsa ut quisquam.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Leslie Tillman', 'O\'Keefe, Green and Daniel', '1974-04-21 13:02:34', 11.93, 53, 1, NULL, NULL),
(18, 'Voluptas architecto quae et velit omnis.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Dr. Loy Miller Sr.', 'Rempel Inc', '1982-05-19 23:10:38', 35.45, 68, 1, NULL, NULL),
(19, 'Placeat ut eius est dolorum incidunt modi.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Haley Wehner', 'Zulauf PLC', '2014-02-19 15:32:05', 87.61, 30, 2, NULL, NULL),
(20, 'Dolorem et aut laudantium occaecati.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Dr. Mike Hauck DDS', 'Sauer-Prohaska', '1996-08-26 10:10:26', 92.73, 72, 1, NULL, NULL),
(21, 'Culpa quas porro doloribus numquam rerum.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Mrs. Cristal Hodkiewicz IV', 'Runte-Parisian', '2009-06-08 22:12:04', 64.23, 97, 2, NULL, NULL),
(22, 'Aut nulla error dolorem veniam.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Olaf Schultz III', 'Hackett, Fadel and Ankunding', '1975-11-17 20:32:54', 37.84, 53, 5, NULL, NULL),
(23, 'Id vitae velit consectetur ut.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Maci Kohler', 'Kiehn-Leannon', '2023-01-22 14:18:26', 70.92, 87, 3, NULL, NULL),
(24, 'Ut ut est occaecati ad inventore porro veritatis.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Terence Nienow', 'Dach-Altenwerth', '1994-07-25 11:49:50', 37.87, 98, 3, NULL, NULL),
(25, 'Est ratione voluptatem ut assumenda sequi sit.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Brady Herzog II', 'Casper Group', '1989-02-25 11:15:23', 73.86, 5, 5, NULL, NULL),
(26, 'Ad illo odio neque deleniti.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Eudora Brakus Sr.', 'Pagac PLC', '1992-05-07 20:45:44', 54.82, 58, 4, NULL, NULL),
(27, 'Ipsum porro aut minima.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Ms. Willa Lueilwitz PhD', 'Labadie-Kuvalis', '1987-11-14 01:53:34', 72.09, 53, 5, NULL, NULL),
(28, 'Maxime sequi quia unde dolorem incidunt et.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Thaddeus Emard MD', 'Windler PLC', '1994-10-18 01:33:06', 72.26, 31, 3, NULL, NULL),
(29, 'Aspernatur laudantium est ea quaerat eum omnis.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Tristian Gislason', 'Mertz, McCullough and Dibbert', '1979-12-12 13:49:03', 50.93, 98, 5, NULL, NULL),
(30, 'Corporis enim consequuntur aut.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Brenna Schultz', 'Waters-Monahan', '2004-04-04 15:56:53', 20.45, 36, 2, NULL, NULL),
(31, 'Dignissimos ab blanditiis dolor quo ad.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Dr. Odessa Hill', 'Hansen, Hills and Roob', '2022-06-17 00:35:12', 93.45, 9, 4, NULL, NULL),
(32, 'In a eos ratione dolore et nostrum sed et.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'River Okuneva', 'Reilly-Mertz', '2013-05-29 22:21:54', 46.81, 4, 2, NULL, NULL),
(33, 'Perferendis ipsum similique nesciunt eligendi.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Earline Davis', 'Bode-Williamson', '1972-01-14 22:29:24', 7.58, 73, 2, NULL, NULL),
(34, 'Ipsa aut aspernatur quibusdam corrupti.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Cathrine Crooks', 'Corwin, Medhurst and Weimann', '2023-05-11 01:39:36', 39.10, 3, 1, NULL, NULL),
(35, 'Ducimus est fuga sint.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Bailey Berge II', 'Schoen Inc', '1987-03-07 23:08:33', 42.71, 99, 2, NULL, NULL),
(36, 'Magni voluptatem voluptatem saepe distinctio qui.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Quinten Collins', 'Effertz PLC', '1987-01-09 21:05:49', 17.24, 61, 4, NULL, NULL),
(37, 'Maiores cupiditate sunt maxime velit fuga saepe.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Jena Raynor', 'Hyatt-Koelpin', '1985-04-11 12:26:54', 6.56, 35, 4, NULL, NULL),
(38, 'Enim doloremque non tempore aut.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Dasia Walter', 'Sipes and Sons', '2020-11-28 12:07:26', 75.98, 99, 1, NULL, NULL),
(39, 'Minima labore quo quisquam molestias deleniti.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Keeley Dickinson', 'McLaughlin-Cronin', '2019-12-28 08:17:42', 80.59, 46, 4, NULL, NULL),
(40, 'Beatae molestias voluptatem eum occaecati alias.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Yoshiko Bayer', 'Weissnat Inc', '1992-09-20 05:35:16', 72.96, 36, 3, NULL, NULL),
(41, 'Rerum aut nam harum voluptatum.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Michel Kihn', 'Abshire-Dicki', '2005-07-31 03:01:07', 29.26, 63, 2, NULL, NULL),
(42, 'Veritatis qui error sed modi.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Oral Bergstrom', 'Towne-Ryan', '1985-01-20 09:09:04', 6.32, 70, 5, NULL, NULL),
(43, 'Iste sit fuga est omnis numquam.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Roselyn Considine', 'Hamill PLC', '1984-04-23 05:35:58', 53.16, 93, 5, NULL, NULL),
(44, 'Laborum dolor distinctio aut molestias.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Amya Boyle', 'Huel, Koepp and Gottlieb', '2013-01-30 14:55:01', 55.75, 9, 5, NULL, NULL),
(45, 'Et facere et a libero.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Terrance Cremin', 'Nikolaus, Eichmann and Lynch', '2009-11-20 13:10:13', 5.76, 66, 1, NULL, NULL),
(46, 'Ut autem alias asperiores.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Dr. Clifford Torp', 'Robel Group', '2013-10-26 08:21:29', 76.00, 1, 5, NULL, NULL),
(47, 'Harum consequatur aut architecto molestiae.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Macie Hoeger II', 'Becker-Wolff', '1979-08-02 08:18:01', 46.97, 38, 1, NULL, NULL),
(48, 'Voluptates neque molestiae in consectetur.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Danielle Rutherford', 'Ortiz-Rutherford', '1970-05-17 08:56:12', 77.33, 83, 5, NULL, NULL),
(49, 'Non molestiae rem laboriosam laborum.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Nedra Kilback', 'Schoen LLC', '2008-05-01 16:23:11', 55.51, 92, 4, NULL, NULL),
(50, 'Nemo aut sed voluptatibus.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Kenton Rath', 'Powlowski, Grimes and Casper', '1982-06-23 02:04:32', 39.81, 85, 2, NULL, NULL),
(51, 'Error voluptas unde laudantium quia sequi et.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Prof. Lucie Durgan III', 'Murray PLC', '1987-12-30 20:37:16', 87.53, 58, 4, NULL, NULL),
(52, 'Iste aut repellat aut incidunt numquam.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Dr. Juliet Flatley V', 'Harber-Davis', '2007-11-06 00:13:06', 54.19, 91, 2, NULL, NULL),
(53, 'Soluta voluptatem et soluta rem maxime dolorem.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Enrique Bailey DVM', 'Kulas, O\'Conner and Macejkovic', '1993-04-05 15:36:53', 33.60, 37, 5, NULL, NULL),
(54, 'Culpa dignissimos qui ex.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Lindsay Rohan', 'White Inc', '1985-08-19 01:00:38', 77.87, 39, 3, NULL, NULL),
(55, 'Velit et ipsam ratione doloribus eos.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Prof. Jordy Nolan', 'Harvey, Hirthe and Lueilwitz', '1994-12-15 08:08:36', 10.04, 43, 3, NULL, NULL),
(56, 'Amet doloremque numquam maiores neque.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Mr. Halle Denesik DDS', 'Yost-Cronin', '2019-08-07 16:44:35', 72.33, 77, 2, NULL, NULL),
(57, 'Et sed iste optio tempora voluptatibus.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Agnes Marks', 'Pollich and Sons', '2007-05-24 07:56:28', 72.63, 98, 3, NULL, NULL),
(58, 'Consequatur blanditiis dignissimos et dolores.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Max Johnston', 'Mertz, Langosh and Moen', '2018-12-02 03:46:51', 15.70, 43, 4, NULL, NULL),
(59, 'Iste corporis ipsum qui illum esse velit nihil.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Mr. Cooper Swaniawski II', 'Hilpert PLC', '2012-06-02 06:44:18', 67.40, 99, 3, NULL, NULL),
(60, 'Nisi aut omnis aut odio occaecati libero sed qui.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Prof. Rosalinda Koch III', 'Abernathy-Johns', '2021-06-04 10:19:39', 9.82, 79, 2, NULL, NULL),
(61, 'Voluptas quos ipsa quis.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Dr. Brice Ryan MD', 'Dietrich, Fritsch and Bernier', '2002-08-30 18:04:43', 46.60, 59, 5, NULL, NULL),
(62, 'Quis id ut ut minus nulla nihil voluptatem.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Matteo Bauch', 'Baumbach, Wisoky and Langworth', '2022-05-30 01:14:35', 96.76, 6, 5, NULL, NULL),
(63, 'Architecto quia nulla rerum at doloremque.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Ms. Rosemarie Hand', 'Schmeler, Kilback and Mraz', '1972-09-23 14:23:51', 76.18, 56, 4, NULL, NULL),
(64, 'Nemo ut consequatur odit et iste unde sed.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Dr. Norma Botsford IV', 'Thompson, Waelchi and Gaylord', '1982-08-24 07:28:31', 28.18, 24, 3, NULL, NULL),
(65, 'Tempore ullam nam velit enim at.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Reymundo Bergstrom Jr.', 'Rempel-Metz', '2014-12-08 23:52:25', 61.21, 25, 5, NULL, NULL),
(66, 'Totam pariatur assumenda et neque.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Gideon Schmidt', 'Gottlieb Group', '2006-02-28 09:53:42', 44.86, 5, 3, NULL, NULL),
(67, 'Corrupti id est natus hic autem et facere.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Marguerite Bergstrom DDS', 'Gerhold, Konopelski and Schmeler', '2019-04-02 05:11:33', 67.05, 46, 1, NULL, NULL),
(68, 'Cum neque quam fugiat et beatae consectetur.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Nick Lowe II', 'Sporer LLC', '1990-02-15 09:03:31', 22.37, 27, 5, NULL, NULL),
(69, 'Aut provident accusamus consequuntur.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Duncan Rosenbaum', 'Rowe Group', '2005-09-18 04:34:34', 32.57, 17, 1, NULL, NULL),
(70, 'Architecto reiciendis pariatur ut labore.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Rudolph Pfannerstill Jr.', 'Harris-Christiansen', '2005-10-29 11:33:13', 66.42, 31, 3, NULL, NULL),
(71, 'Ab blanditiis vero ut unde autem est.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Chloe Funk', 'Conroy, Cormier and Ritchie', '1985-02-24 18:47:59', 15.49, 64, 2, NULL, NULL),
(72, 'Cumque rerum autem itaque eum mollitia culpa nam.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Maegan Bradtke', 'Leffler PLC', '2019-02-18 08:41:52', 19.06, 85, 1, NULL, NULL),
(73, 'Consequatur incidunt eligendi eaque voluptatibus.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Gussie Larson', 'Mayer, Thiel and Armstrong', '2002-01-15 15:15:47', 82.77, 7, 4, NULL, NULL),
(74, 'Cupiditate facilis iure eum distinctio illo.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Mr. Joel Tremblay', 'Quigley-Fay', '1970-05-20 11:22:34', 75.72, 99, 4, NULL, NULL),
(75, 'Nobis sint quos ex aut officia molestiae.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Zander Rosenbaum', 'Nikolaus-Glover', '2006-04-01 12:31:41', 90.03, 75, 4, NULL, NULL),
(76, 'Nobis qui assumenda aut enim omnis consequatur.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Emerson Hegmann', 'Lang-Beer', '1974-02-20 09:23:33', 28.35, 50, 2, NULL, NULL),
(77, 'Pariatur et debitis eveniet.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Mrs. Brenda Prosacco V', 'Gerlach Inc', '1994-02-13 00:48:06', 8.28, 12, 1, NULL, NULL),
(78, 'Saepe id ut sit in sed et saepe.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Heath Bartoletti', 'Hayes, Wilkinson and Marvin', '2022-08-09 13:28:12', 64.13, 27, 3, NULL, NULL),
(79, 'Quibusdam quod esse possimus quos.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Pauline Reichert', 'Lindgren-Dach', '1971-11-25 21:09:45', 44.47, 10, 5, NULL, NULL),
(80, 'Dignissimos rerum quos odit.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Miller Doyle', 'Jast, Schroeder and Goldner', '1975-10-08 06:40:59', 37.54, 16, 4, NULL, NULL),
(81, 'Ea animi placeat consectetur saepe incidunt.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Maximilian Schowalter', 'Cruickshank-Koss', '1977-11-18 13:53:16', 85.23, 33, 2, NULL, NULL),
(82, 'Et quod consectetur ut eum neque omnis.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Milo Lang', 'Streich, Schimmel and Klocko', '2004-03-25 00:42:45', 86.89, 95, 1, NULL, NULL),
(83, 'Doloremque nihil et quasi molestiae voluptas.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Asia Jaskolski', 'Balistreri-Cronin', '1973-04-22 08:30:01', 99.93, 87, 1, NULL, NULL),
(84, 'Earum et aut aut quae quia ad.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Mr. Kameron Schulist Jr.', 'Keeling, Swaniawski and Kessler', '1977-01-31 23:23:31', 57.34, 84, 2, NULL, NULL),
(85, 'Cumque velit ipsum vel doloremque optio delectus.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Dr. Tom Abbott', 'Aufderhar LLC', '1972-05-23 08:02:18', 28.97, 48, 3, NULL, NULL),
(86, 'Ratione voluptatem et sit nemo fugiat placeat.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Ms. Myrtle Hodkiewicz', 'Raynor Inc', '2003-07-17 17:43:26', 88.44, 9, 2, NULL, NULL),
(87, 'Quo ut numquam esse nesciunt qui.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Kyle Schaefer', 'Kuhlman-Littel', '1989-07-31 04:11:00', 59.32, 18, 3, NULL, NULL),
(88, 'Consequatur dicta reiciendis ut iure architecto.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Landen Parker', 'Bogisich-Farrell', '1973-05-11 11:26:30', 90.47, 81, 2, NULL, NULL),
(89, 'Ea aut pariatur earum corrupti magnam nesciunt.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Monica Crist Jr.', 'Kerluke, Franecki and Kautzer', '2010-04-20 19:55:37', 77.39, 29, 3, NULL, NULL),
(90, 'Quo voluptatem ut aspernatur culpa iure eum.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Ceasar Labadie V', 'Jones-Stoltenberg', '1975-01-27 12:46:30', 55.69, 8, 4, NULL, NULL),
(91, 'Ut corrupti aspernatur explicabo ea officia.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Prof. Salvatore Crooks', 'Durgan PLC', '2018-12-05 05:09:43', 52.33, 46, 4, NULL, NULL),
(92, 'Quaerat vitae eius autem adipisci ipsa sit.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Ms. Aglae Rolfson', 'Champlin, Dicki and Grimes', '2006-10-11 00:36:47', 47.15, 19, 4, NULL, NULL),
(93, 'Nesciunt ipsam nesciunt quia quia.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Prof. Jermey Hammes', 'O\'Connell-Towne', '1987-11-10 17:27:37', 43.82, 88, 1, NULL, NULL),
(94, 'Quibusdam porro dolore dicta libero.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Evelyn Hansen V', 'Herzog-Gaylord', '1984-06-02 04:21:05', 37.97, 21, 5, NULL, NULL),
(95, 'In incidunt consequatur quia ut est in officia.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Aric Skiles', 'Marks-Greenholt', '1989-06-09 16:09:53', 8.30, 15, 5, NULL, NULL),
(96, 'Ut nesciunt recusandae asperiores neque.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Mrs. Drew Ondricka III', 'DuBuque, Lakin and Reilly', '2006-04-08 13:58:10', 84.74, 56, 5, NULL, NULL),
(97, 'Voluptas dolorem numquam pariatur quia qui.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Miss Phoebe Cole', 'O\'Reilly, Ryan and Farrell', '1985-07-01 00:04:39', 54.41, 95, 2, NULL, NULL),
(98, 'Dolor quos debitis at nisi illo.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Gilda Osinski', 'Schneider, Kohler and Parisian', '1991-10-29 06:43:16', 14.92, 33, 1, NULL, NULL),
(99, 'Vel natus et et nobis veniam dicta aut.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Mrs. Vivianne Hodkiewicz MD', 'Zieme, Schuppe and Friesen', '1992-12-16 13:02:40', 21.81, 59, 3, NULL, NULL),
(100, 'Vel maxime dolorem est neque tempore.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', 'Maribel Windler', 'Cassin, Lowe and Wilderman', '1994-02-04 11:10:21', 13.33, 79, 5, NULL, NULL),
(143, 'oke', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8kFU1r-gW9_B0S4z-Kal7x9NPVPeapn9VCg&s', 'rfr', 'sds', '2024-07-10 00:00:00', 222226.00, 11, 4, NULL, NULL),
(145, 'hhahaa', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8kFU1r-gW9_B0S4z-Kal7x9NPVPeapn9VCg&s', 'rfr', 'dfd', '2024-08-04 00:00:00', 222225.00, 44, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Văn học', NULL, NULL),
(2, 'Kinh tế', NULL, NULL),
(3, 'Thiết kế', NULL, NULL),
(4, 'Thể thao', NULL, NULL),
(5, 'Thư viện', NULL, NULL),
(6, 'Sức khoẻ', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_07_15_081847_categories', 1),
(6, '2024_07_15_081906_books', 1),
(7, '2024_07_15_084707_add_note_to_categories', 2),
(8, '2024_07_15_090755_create_books_table', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `books_category_id_foreign` (`category_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
