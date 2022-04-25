-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 25, 2022 at 11:44 AM
-- Server version: 8.0.27
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `baseball`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `answers_id` int NOT NULL,
  `question_id` int DEFAULT NULL,
  `answers` varchar(255) NOT NULL,
  `correct_answer` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`answers_id`, `question_id`, `answers`, `correct_answer`) VALUES
(1, 1, '1846', 1),
(2, 2, 'Barry Bonds', 1),
(3, 3, 'New York Yankees', 1),
(4, 1, '1879', 0),
(5, 1, '2021', 0),
(6, 1, '1982', 0),
(7, 2, 'Babe Ruth', 0),
(8, 2, 'Alex Rodriguez', 0),
(9, 2, 'Henry Aaron', 0),
(10, 3, 'Wahsington D.C. Nationals', 0),
(11, 3, 'Boston Red Socks', 0),
(12, 3, 'Los Angeles Dodgers', 0),
(13, 4, 'Red Sox', 1),
(14, 4, 'New York Yankees', 0),
(15, 4, 'Los Angeles Dodgers', 0),
(16, 4, 'St. Louis Cardinals', 0),
(17, 5, 'Mickey Mantle', 1),
(18, 5, 'Lou Gehrig', 0),
(19, 5, 'Yogi Berra', 0),
(20, 5, 'Mariano Rivera', 0),
(21, 6, 'Lou Gehrig', 1),
(22, 6, 'Babe Ruth', 0),
(23, 6, 'Mickey Mantle', 0),
(24, 6, 'Joe Dimaggio', 0),
(25, 7, 'Miller Park, Milwaukee', 1),
(26, 7, 'AT&T Park, San Francisco', 0),
(27, 7, 'PNC Park, Pittsburg', 0),
(28, 7, 'Safeco Field, Seattle', 0),
(29, 8, 'Derek Jeter', 1),
(30, 8, 'Willie Mays', 0),
(31, 8, 'Lou Gehrig', 0),
(32, 8, 'Barry Bonds', 0),
(33, 9, 'Sandy Koufax', 1),
(34, 9, 'Roberto Clemente', 0),
(35, 9, 'Kirby Puckett', 0),
(36, 9, 'Joe Dimaggio', 0),
(37, 10, 'Jose Bautista', 1),
(38, 10, 'Hank Aaron', 0),
(39, 10, 'Jim Hunter', 0),
(40, 10, 'Babe Ruth', 0),
(41, 11, 'Bill Lee', 1),
(42, 11, 'Frank Thomas', 0),
(43, 11, 'Willie Mays', 0),
(44, 11, 'Randy Johnson', 0),
(45, 12, 'Candy Cummings', 1),
(46, 12, 'Babe Ruth', 0),
(47, 12, 'Lou Gehrig', 0),
(48, 12, 'James Naismith', 0),
(49, 13, '7th Inning', 1),
(50, 13, '6th Inning', 0),
(51, 13, '8th Inning', 0),
(52, 13, '9th Inning', 0),
(53, 14, 'New York Yankees', 1),
(54, 14, 'Chicago Cubs', 0),
(55, 14, 'Boston Red Sox', 0),
(56, 14, 'New York Mets', 0),
(57, 15, 'Lou Gehrig', 1),
(58, 15, 'Babe Ruth', 0),
(59, 15, 'Mel Ott', 0),
(60, 15, 'Joe Dimaggio', 0),
(61, 16, 'Jessica Mendoza', 1),
(62, 16, 'Heidi Watney', 0),
(63, 16, 'Lauren Shehadi', 0),
(64, 16, 'Alanna Rizzo', 0),
(65, 17, 'Fastball', 1),
(66, 17, 'Changeup', 0),
(67, 17, 'Curveball', 0),
(68, 17, 'Slider', 0),
(69, 18, 'Pitchers are not allowed to chew gum', 1),
(70, 18, 'A pitcher can\'t spit on the ball', 0),
(71, 18, 'Using your hat to catch the ball isn\'t allowed', 0),
(72, 18, 'The pitcher must stand completely still before he pitches', 0),
(73, 19, 'Bobby Thompson', 1),
(74, 19, 'Gus Zernial', 0),
(75, 19, 'Ralph Kiner', 0),
(76, 19, 'Ralph Branca', 0),
(77, 20, 'Houston Astros', 1),
(78, 20, 'Los Angeles Angels', 0),
(79, 20, 'Seattle Mariners', 0),
(80, 20, 'Los Angeles Dodgers', 0),
(81, 21, '6.10%', 1),
(82, 21, '16%', 0),
(83, 21, '7.2%', 0),
(84, 21, '5.3%', 0);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `Question_ID` int NOT NULL,
  `Question` varchar(255) NOT NULL,
  `Point Value` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`Question_ID`, `Question`, `Point Value`) VALUES
(1, 'What year was the game of baseball created?', 250),
(2, 'Who has the most amount of Home Runs in MLB History?', 300),
(3, 'Which MLB Team has the most World Series Wins?', 300),
(4, 'In baseball, who was the Yankee\'s legendary #7?', 300),
(5, 'Who was the Yankee Great who died young from a disease later named for him?', 300),
(6, 'On April 6, 2001, President Bush threw out the first pitch at which new ballpark?', 300),
(7, 'Who is the baseball player nicknamed \"Mr. November\"?', 300),
(8, 'Who is the youngest player elected to the Hall of Fame?', 300),
(9, 'Who is the Major League Baseball player nicknamed \"Joey Bats\"?', 300),
(10, 'Who is credited with inventing the curveball?', 300),
(11, 'Which baseball player was known as the \"Space Man\"?', 300),
(12, 'Who is credited with inventing the curveball?', 300),
(13, 'When during a baseball game are fans encouraged to \"stretch\"?', 300),
(14, 'Against what opposing team did Babe Ruth hit his first career home run?', 300),
(15, 'Who was the first baseball player to appear on a Wheaties cereal Box?', 300),
(16, 'Who was the first woman to call a nationally televised MLB playoff game?', 300),
(17, 'What is the most common pitch in baseball?', 300),
(18, 'Which of these are not a rule in baseball?', 300),
(19, 'What player hit the \"Shot Heard Around the World\"?', 300),
(20, 'Which team debuted an rainbow uniform in 1975?', 300),
(21, 'What percentage of high school players move on to play in the NCAA?', 300);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`answers_id`),
  ADD KEY `questions_answers_id` (`question_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`Question_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `answers_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `Question_ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `questions_answers_id` FOREIGN KEY (`question_id`) REFERENCES `questions` (`Question_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
