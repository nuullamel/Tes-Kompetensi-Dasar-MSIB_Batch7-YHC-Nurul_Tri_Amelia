-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Agu 2024 pada 11.09
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_kursus`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`) VALUES
(1, 'admin', '$2y$10$0VeUqSdwnpkvx0ult19W1OxYeWNvDDKmWQV6W4J1KJg1JqalCrQnC');

-- --------------------------------------------------------

--
-- Struktur dari tabel `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `durasi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `courses`
--

INSERT INTO `courses` (`id`, `judul`, `deskripsi`, `durasi`) VALUES
(1, 'Sequences and Looping', 'Elementary School\r\n', 2),
(2, 'Introduction to Coding with CodeCombat', 'Junior High School', 1),
(4, 'Code Block Game Design', 'Elementary School', 1),
(6, 'Introduction to HTML', 'Senior High School', 2),
(8, 'Coding Exploration', 'Elementary School', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `material`
--

CREATE TABLE `material` (
  `id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `judul` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `link_embed` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `material`
--

INSERT INTO `material` (`id`, `course_id`, `judul`, `deskripsi`, `link_embed`) VALUES
(1, 1, 'Code Monkey Jr. Sequence (stage 1 - 15)  ', 'In CodeMonkey Jr.\'s Sequencing and Loops course, students embark on their first coding journey, where they are introduced to a fundamental programming concept known as Sequencing. In this course, students learn to create sequences of commands to guide the monkey towards the treasure, developing a strong foundation in basic coding principles.', 'https://app.codemonkey.com/junior/chapters/sequencing'),
(2, 1, 'Code Monkey Jr. Loops (stage 1 - 15)  ', 'In the Sequencing and Loops course of CodeMonkey Jr., students dive into their initial coding experience, where they explore their first programming concept, Looping. In this course, they learn how to use loops to efficiently guide the monkey to the treasure, gaining essential skills in the process.', 'https://app.codemonkey.com/junior/chapters/loops'),
(3, 2, 'Sesion 1: Introduction to CodeCombat and Basic Sequencing', 'Student understand the interface and controls of CodeCombat. While they learn basic sequencing to navigate the game environment.', 'https://codecombat.com/'),
(4, 2, 'Session 2 : Introduction to Loops', 'Learn about loops and how they can simplify repetitive tasks in programming.', 'https://codecombat.com/'),
(5, 2, 'Session 3: Conditional Statements', 'Understand conditional statements and how they control the flow of a program based on certain conditions.', 'https://codecombat.com/'),
(6, 2, 'Session 4: Functions and Code Organization', 'Learn how to create and use functions to organize code and make it reusable.', 'https://codecombat.com/'),
(7, 2, 'Session 5: Review and Project', 'Review all concepts learned (sequencing, loops, conditionals, functions). Apply all concepts in a final project.', 'https://codecombat.com/'),
(8, 6, 'Session 1: Basics of HTML and Structure', 'In the first session, students will be introduced to the fundamental concepts of HTML, including the structure of an HTML document. They will learn about the importance of the <!DOCTYPE html> declaration, and the basic tags like <html>, <head>, <title>, and <body>. By the end of this session, students will be able to create a simple HTML webpage with a basic structure.', 'https://www.htmldog.com/'),
(9, 6, 'Session 2: Working with Text and Links', 'In this session, students will dive into text formatting and hyperlink creation in HTML. They will explore various text-related tags, such as <h1> to <h6> for headings, <p> for paragraphs, <em> and <strong> for emphasizing text, and more. Additionally, students will learn how to create hyperlinks using the <a> tag, linking to both internal and external web pages. By the end of this session, students will be able to format text and create functional links within their HTML pages.', 'https://codecombat.com/'),
(10, 6, 'Session 3: Adding Images and Structuring Content', 'In the final session, students will learn how to add images to their web pages using the <img> tag and how to properly structure content using semantic elements like <div>, <section>, and <article>. The session will also cover the basics of organizing content using containers and introduce students to the concept of HTML semantics for better readability and SEO. By the end of this session, students will have a well-structured webpage that includes text, images, and links.', 'https://codecombat.com/'),
(14, 4, 'Make a Flappy game', 'Code.org Make a Flappy Game introduces the concept of events to students while making flappy bird game. At the end of the lesson, students customize the game by changing the visuals or rules.', 'https://hourofcode.com/flap'),
(15, 4, 'Blocks Jumper - Game Creation', 'In this mini course, student will create a game where the player taps or clicks the screen to make a monkey jump over gaps until it reaches a star.', 'https://hourofcode.com/codemonkeyjump'),
(16, 4, 'Makecode Arcade - Chase the Pizza', 'Students will plan, code, test, and create a simple game in makecode where one sprite tries to catch another and earn as many points as possible before the time runs out.', 'https://arcade.makecode.com/'),
(17, 4, 'Makecode Arcade - Happy Flower', 'Student will create an animation project where flower that sends happy little bees back to the hive.', 'https://arcade.makecode.com/'),
(18, 4, 'Makecode Arcade - Lemon Leak', 'Student will make a game where wild strawberries are out to attack our lemon player. The goal is to keep the lemon from losing its juice by avoiding the oncoming strawberries. ', 'https://arcade.makecode.com/'),
(22, 8, 'Tynker - Programming 100.  Introduction to Tynker', 'In Programming 100\'s first lesson, called Welcome to Tynker the students are introduced to a new platform, called Tynker. Here, the students are introduced to the different kinds of lessons that exists in Tynker, such as project and puzzle-based lessons.\r\n\r\nIn the next lesson, called Candy Quest the students started doing their first Tynker lesson, a puzzle-based lesson where the students are tasked to help the Candy Monster they created to collect candies in the levels. Here, the students learned the concept of sequencing, loops, conditional loops, and conditional statements.\r\n\r\nIn Programming 100\'s Create a Comic lesson, the student learn how to create their own comic in Tynker. Here, the students learn how to properly setup the project with the sprites and backdrops for their comic and trigger the scenes in the comic project using the concept of events.\r\n\r\nIn the next lesson, called Pattern Maker the students learn how to create artistic pattern with the help of programming as they learn about the pen extension on Tynker. Here, using the concept of sequences and loopings the students will be able to create various unique patterns.', 'https://www.tynker.com/ide/v3?type=course&slug=course:programming-100&chapter=0&lesson=0'),
(23, 8, 'Tynker - Dragon Blast', 'Tynker Dragon Blast is a coding puzzle where students have to code a dragon to embark on a quest for treasure. Throughout this lesson, students learn how to break down a complex problem into smaller parts using functions and develop their understanding of sequencing, looping, and conditionals.', 'https://www.tynker.com/hour-of-code/dragon-blast');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `material`
--
ALTER TABLE `material`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_id` (`course_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `material`
--
ALTER TABLE `material`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `material`
--
ALTER TABLE `material`
  ADD CONSTRAINT `material_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
