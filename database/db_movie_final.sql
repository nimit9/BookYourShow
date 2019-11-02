-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 02, 2019 at 09:52 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_movie`
--

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE `movie` (
  `movie_id` int(11) NOT NULL,
  `movie_name` varchar(100) NOT NULL,
  `desc` varchar(1000) NOT NULL,
  `genre` varchar(500) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `release_date` date NOT NULL,
  `cast` varchar(500) NOT NULL,
  `runtime` int(11) DEFAULT NULL,
  `image` varchar(200) NOT NULL,
  `video_url` varchar(200) NOT NULL,
  `status` int(1) NOT NULL COMMENT '0 means active '
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`movie_id`, `movie_name`, `desc`, `genre`, `rating`, `release_date`, `cast`, `runtime`, `image`, `video_url`, `status`) VALUES
(1, 'War', 'Khalid, an Indian Research and Analysis Wing (RAW) agent, is assigned to eliminate Kabir, a former soldier-turned-rogue, who mentored Khalid. Two years before Kabir betrayed his associates, he, along with Khalid and other agents, were on a search for criminal-turned businessman Rizwan Illiyasi', 'Action', 4, '2019-10-02', 'Hrithik Roshan, Tiger Shroff, Vaani Kapoor', 100, 'images/war.jpg', 'https://www.youtube.com/watch?v=tQ0mzXRk-oM', 0),
(2, 'Joker', 'Arthur Fleck, a man struggling with loneliness and isolation, wears two masks. One, he paints on for his day job as a clown. The other is a guise he projects in an attempt to find his place in Gotham City`s fractured society. Caught in a cyclical existence between apathy and cruelty, Arthur begins to make one bad decision after another. What follows is a new take on the origin story of one of cinema`s most iconic villains.', 'Action', 4, '2019-10-02', 'Joaquin Phoenix', 100, 'images/joker.jpg', 'https://www.youtube.com/watch?v=t433PEQGErc', 0),
(3, 'Dream Girl', 'Ayushmann Khurrana in and as Dream Girl! From the local cop to a `Haryanvi` gujjar boy, to his girlfriend`s brother, everybody is smitten by Dream Girl Pooja and her mesmerising voice, leading to a series of unusual, crazy situations.\r\n\r\nSet against the backdrop of Mathura, Dream Girl is a comedy of errors that stars a crackling ensemble consisting Annu Kapoor, Vijay Raaz, Abhishek Bannerjee, Manjot Singh, Nidhi Bisht, Rajesh Sharma among others.', 'Action', 4, '2019-09-13', 'Ayushmann Khurrana, Nushrat Bharucha ', 100, 'images/dreamGirl.jpg', 'https://www.youtube.com/watch?v=nf39Jpi3ZQ4', 0),
(4, 'Chhichhore', 'Chhichhore takes you on an exuberant and hilarious journey through college life where you meet a bunch of interesting `losers`: Anni, Maya, Sexa, Derek, Mummy, Acid, and Bevda. They as a group go through a seamless transition from past to present and end up at a reunion they could never have thought of.', 'Action', 4, '2019-09-06', 'Sushant Singh Rajput, Shraddha Kapoor', 100, 'images/chhichhore.jpg', 'https://www.youtube.com/watch?v=tsxemFX0a7k', 0),
(5, 'The Sky is Pink', 'An incredible true love story of a couple spanning 25 years, told through the lens of their teenage sassy, sardonic, spunky and also dead daughter. A fact she nonchalantly mentions at the outset - \"Get over it. It`s quite cool actually. You`ll see when you get here (which you do know you will right?!)\"', 'Action', 4, '2019-10-11', 'Priyanka Chopra Jonas, Farhan Akhtar', 100, 'images/sky.jpg', 'https://www.youtube.com/watch?v=prwUFBsDRLk', 0);

-- --------------------------------------------------------

--
-- Table structure for table `shows`
--

CREATE TABLE `shows` (
  `s_id` int(11) NOT NULL,
  `lang` varchar(500) DEFAULT NULL,
  `date` date NOT NULL,
  `time` int(11) NOT NULL,
  `theatre` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `seats` int(11) NOT NULL COMMENT 'number of seats',
  `movie_id` int(11) NOT NULL,
  `status` int(11) NOT NULL COMMENT '1 means show available'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shows`
--

INSERT INTO `shows` (`s_id`, `lang`, `date`, `time`, `theatre`, `price`, `seats`, `movie_id`, `status`) VALUES
(1, 'hindi', '2017-05-01', 1, 2, 100, 50, 1, 1),
(2, 'hindi', '2017-05-01', 2, 3, 100, 50, 3, 1),
(3, 'hindi', '2017-05-01', 5, 5, 100, 50, 2, 1),
(4, 'hindi', '2017-05-01', 6, 4, 100, 50, 2, 1),
(5, 'hindi', '2017-05-01', 9, 3, 100, 50, 4, 1),
(6, 'hindi', '2017-05-01', 5, 2, 100, 50, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `show_time`
--

CREATE TABLE `show_time` (
  `st_id` int(11) NOT NULL,
  `start_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `show_time`
--

INSERT INTO `show_time` (`st_id`, `start_time`) VALUES
(1, '10:00:00'),
(2, '14:00:00'),
(4, '21:00:00'),
(5, '22:08:00'),
(6, '14:00:00'),
(9, '16:08:00'),
(10, '07:11:10');

-- --------------------------------------------------------

--
-- Table structure for table `theatre`
--

CREATE TABLE `theatre` (
  `t_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `theatre`
--

INSERT INTO `theatre` (`t_id`, `name`) VALUES
(2, 'Miraj Thakur Cinema'),
(3, 'PVR: Andheri(E)'),
(4, 'INOX: Megaplex, Inorbit Mall'),
(5, 'Cinepolis');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `book_id` int(11) NOT NULL,
  `ticket_id` varchar(30) NOT NULL,
  `user` varchar(50) NOT NULL,
  `show_id` int(11) NOT NULL,
  `no_seats` int(3) NOT NULL COMMENT 'number of seats',
  `amount` int(5) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`book_id`, `ticket_id`, `user`, `show_id`, `no_seats`, `amount`, `status`) VALUES
(3, 'BKID5258812', 'admin', 3, 200, 75, 1),
(4, 'BKID5258811', 'admin', 5, 2, 150, 1),
(5, 'BKID5258815', 'admin', 2, 200, 70, 1),
(6, 'BKID5258836', 'admin', 1, 100, 70, 1),
(7, 'BKID5258876', 'admin', 6, 1, 70, 1),
(11, 'BKID5258816', 'admin', 3, 1, 75, 1),
(16, 'BKID9502649', 'admin', 4, 1, 100, 1),
(17, 'BKID1926294', 'admin', 6, 2, 200, 1),
(18, 'BKID2437357', 'nimitharia', 3, 17, 1700, 1),
(19, 'BKID1507114', 'parth', 1, 3, 300, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone_no` bigint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `name`, `password`, `email`, `phone_no`) VALUES
('abcd', 'a', 'a', 'q', 1),
('abcd3', 'abcd3', '22', 'a@gmail.com', 11),
('admin', 'admin', '12345678', 'admin@gmail.com', 9987207076),
('admin1', 'admin1', 'a', 'admin@gmail.com', 1111111111),
('nimitharia', 'Nimit', '12345678', 'nimitharia007@gmail.com', 9987207076),
('nishant', 'Nishant', '12345678', 'abc@example.com', 9987507054),
('parth', 'Parth', '123456', 'parth@gmail.com', 9987207076);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`movie_id`);

--
-- Indexes for table `shows`
--
ALTER TABLE `shows`
  ADD PRIMARY KEY (`s_id`),
  ADD KEY `movie_id` (`movie_id`),
  ADD KEY `theatre` (`theatre`),
  ADD KEY `time` (`time`);

--
-- Indexes for table `show_time`
--
ALTER TABLE `show_time`
  ADD PRIMARY KEY (`st_id`);

--
-- Indexes for table `theatre`
--
ALTER TABLE `theatre`
  ADD PRIMARY KEY (`t_id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`book_id`),
  ADD KEY `show_id` (`show_id`),
  ADD KEY `user` (`user`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `movie`
--
ALTER TABLE `movie`
  MODIFY `movie_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `shows`
--
ALTER TABLE `shows`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `shows`
--
ALTER TABLE `shows`
  ADD CONSTRAINT `shows_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`),
  ADD CONSTRAINT `shows_ibfk_2` FOREIGN KEY (`theatre`) REFERENCES `theatre` (`t_id`),
  ADD CONSTRAINT `shows_ibfk_3` FOREIGN KEY (`time`) REFERENCES `show_time` (`st_id`);

--
-- Constraints for table `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_ibfk_1` FOREIGN KEY (`show_id`) REFERENCES `shows` (`s_id`),
  ADD CONSTRAINT `tickets_ibfk_2` FOREIGN KEY (`user`) REFERENCES `user` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
