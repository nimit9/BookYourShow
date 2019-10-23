-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 21, 2019 at 04:15 PM
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



--
-- Table structure for table `tbl_bookings`
--

CREATE TABLE IF NOT EXISTS `tbl_bookings` (
  `book_id` int(11) NOT NULL,
  `ticket_id` varchar(30) NOT NULL,
  `t_id` int(11) NOT NULL COMMENT 'theater id',
  `user_id` int(11) NOT NULL,
  `show_id` int(11) NOT NULL,
  `screen_id` int(11) NOT NULL,
  `no_seats` int(3) NOT NULL COMMENT 'number of seats',
  `amount` int(5) NOT NULL,
  `ticket_date` date NOT NULL,
  `date` date NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_bookings`
--

INSERT INTO `tbl_bookings` (`book_id`, `ticket_id`, `t_id`, `user_id`, `show_id`, `screen_id`, `no_seats`, `amount`, `ticket_date`, `date`, `status`) VALUES
(3, '', 4, 4, 3, 3, 200, 75, '2017-05-21', '2017-05-21', 1),
(4, '', 4, 4, 1, 3, 2, 150, '2017-05-22', '2017-05-22', 1),
(5, '', 3, 3, 6, 1, 200, 70, '2017-05-25', '2017-05-22', 1),
(6, '', 3, 3, 6, 1, 100, 70, '2017-05-22', '2017-05-22', 1),
(7, '', 3, 3, 5, 1, 1, 70, '2017-05-22', '2017-05-22', 1),
(11, 'BKID5258816', 4, 2, 3, 3, 1, 75, '2017-05-22', '2017-05-22', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE IF NOT EXISTS `tbl_contact` (
  `contact_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` int(11) NOT NULL,
  `subject` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE IF NOT EXISTS `tbl_login` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL COMMENT 'email',
  `password` varchar(50) NOT NULL,
  `user_type` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`id`, `user_id`, `username`, `password`, `user_type`) VALUES
(17, 4, 'parthshah3121999@gmail.com', 'parth312', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movie`
--

CREATE TABLE IF NOT EXISTS `tbl_movie` (
  `movie_id` int(11) NOT NULL,
  `t_id` int(11) NOT NULL COMMENT 'theatre id',
  `movie_name` varchar(100) NOT NULL,
  `cast` varchar(500) NOT NULL,
  `desc` varchar(1000) NOT NULL,
  `release_date` date NOT NULL,
  `image` varchar(200) NOT NULL,
  `video_url` varchar(200) NOT NULL,
  `status` int(1) NOT NULL COMMENT '0 means active '
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_movie`
--

INSERT INTO `tbl_movie` (`movie_id`, `t_id`, `movie_name`, `cast`, `desc`, `release_date`, `image`, `video_url`, `status`) VALUES
(1, 3, 'War', 'Hrithik Roshan, Tiger Shroff, Vaani Kapoor', 'Khalid, an Indian Research and Analysis Wing (RAW) agent, is assigned to eliminate Kabir, a former soldier-turned-rogue, who mentored Khalid. Two years before Kabir betrayed his associates, he, along with Khalid and other agents, were on a search for criminal-turned businessman Rizwan Illiyasi', '2019-10-02', 'images/war.jpg', 'https://www.youtube.com/watch?v=tQ0mzXRk-oM', 0),
(2, 3, 'Joker', 'Joaquin Phoenix', 'Arthur Fleck, a man struggling with loneliness and isolation, wears two masks. One, he paints on for his day job as a clown. The other is a guise he projects in an attempt to find his place in Gotham City`s fractured society. Caught in a cyclical existence between apathy and cruelty, Arthur begins to make one bad decision after another. What follows is a new take on the origin story of one of cinema`s most iconic villains.', '2019-10-02', 'images/joker.jpg', 'https://www.youtube.com/watch?v=t433PEQGErc', 0),
(3, 3, 'Dream Girl', 'Ayushmann Khurrana, Nushrat Bharucha ', 'Ayushmann Khurrana in and as Dream Girl! From the local cop to a `Haryanvi` gujjar boy, to his girlfriend`s brother, everybody is smitten by Dream Girl Pooja and her mesmerising voice, leading to a series of unusual, crazy situations.\r\n\r\nSet against the backdrop of Mathura, Dream Girl is a comedy of errors that stars a crackling ensemble consisting Annu Kapoor, Vijay Raaz, Abhishek Bannerjee, Manjot Singh, Nidhi Bisht, Rajesh Sharma among others.', '2019-09-13', 'images/dreamGirl.jpg', 'https://www.youtube.com/watch?v=nf39Jpi3ZQ4', 0),
(8, 3, 'Chhichhore', 'Sushant Singh Rajput, Shraddha Kapoor', 'Chhichhore takes you on an exuberant and hilarious journey through college life where you meet a bunch of interesting `losers`: Anni, Maya, Sexa, Derek, Mummy, Acid, and Bevda. They as a group go through a seamless transition from past to present and end up at a reunion they could never have thought of.', '2019-09-06', 'images/chhichhore.jpg', 'https://www.youtube.com/watch?v=tsxemFX0a7k', 0),
(10, 3, 'The Sky is Pink', 'Priyanka Chopra Jonas, Farhan Akhtar', 'An incredible true love story of a couple spanning 25 years, told through the lens of their teenage sassy, sardonic, spunky and also dead daughter. A fact she nonchalantly mentions at the outset - \"Get over it. It`s quite cool actually. You`ll see when you get here (which you do know you will right?!)\"', '2019-10-11', 'images/sky.jpg', 'https://www.youtube.com/watch?v=prwUFBsDRLk', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_news`
--

CREATE TABLE IF NOT EXISTS `tbl_news` (
  `news_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cast` varchar(100) NOT NULL,
  `news_date` date NOT NULL,
  `description` varchar(200) NOT NULL,
  `attachment` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_news`
--

INSERT INTO `tbl_news` (`news_id`, `name`, `cast`, `news_date`, `description`, `attachment`) VALUES
(3, 'Housefull 4', 'Akshay Kumar, Kriti Sanon, Ritesh Deshmukh, Pooja Hegde', '2019-10-25', 'When 6 lovers are parted because of conspiracy and revenge in the year 1419, the characters cross paths again in 2019. However, in the present life the 3 boys are about to marry their sisters-in-law a', 'news_images/housefull.jpg'),
(5, 'Made in China', 'Rajkummar Rao, Mouni ROy', '2019-10-25', 'A middle-aged Gujarati businessman (Rajkummar Rao), dejected by his failures, goes to China in the hopes of better prospects. There, he embarks on an unusual and comical journey and finds something mu', 'news_images/china.jpg'),
(6, 'Terminator: Dark Fate', 'Arnold Schwarzenegger', '2019-11-01', 'Skynet`s next target is a young girl named Dani Ramos, and a new Terminator prototype (Rev-9) from the future is sent to kill her. In order to protect Dani from Rev-9, Sarah Connor (Linda Hamilton) te', 'news_images/terminator.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_registration`
--

CREATE TABLE IF NOT EXISTS `tbl_registration` (
  `user_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `age` int(2) NOT NULL,
  `gender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_registration`
--

INSERT INTO `tbl_registration` (`user_id`, `name`, `email`, `phone`, `age`, `gender`) VALUES
(4, 'Parth', 'parthshah3121999@gmail.com', '7977610210', 21, 'gender');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_screens`
--

CREATE TABLE IF NOT EXISTS `tbl_screens` (
  `screen_id` int(11) NOT NULL,
  `t_id` int(11) NOT NULL COMMENT 'theatre id',
  `screen_name` varchar(110) NOT NULL,
  `seats` int(11) NOT NULL COMMENT 'number of seats',
  `charge` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_screens`
--

INSERT INTO `tbl_screens` (`screen_id`, `t_id`, `screen_name`, `seats`, `charge`) VALUES
(1, 3, 'Screen 1', 100, 70),
(2, 3, 'Screen 2', 150, 60),
(3, 4, 'Screen 1', 200, 75),
(4, 14, 'Screen1', 34, 120);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shows`
--

CREATE TABLE IF NOT EXISTS `tbl_shows` (
  `s_id` int(11) NOT NULL,
  `st_id` int(11) NOT NULL COMMENT 'show time id',
  `theatre_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `status` int(11) NOT NULL COMMENT '1 means show available',
  `r_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_shows`
--

INSERT INTO `tbl_shows` (`s_id`, `st_id`, `theatre_id`, `movie_id`, `start_date`, `status`, `r_status`) VALUES
(1, 9, 4, 1, '2017-05-01', 1, 1),
(2, 10, 4, 1, '2017-05-01', 1, 1),
(3, 11, 4, 2, '2017-05-01', 1, 1),
(4, 12, 4, 2, '2017-05-01', 1, 1),
(5, 1, 3, 1, '2017-05-01', 1, 1),
(6, 2, 3, 1, '2017-05-01', 1, 1),
(7, 3, 3, 1, '2017-05-01', 1, 1),
(8, 4, 3, 1, '2017-05-01', 1, 1),
(9, 5, 3, 2, '2017-05-01', 1, 1),
(10, 6, 3, 2, '2017-05-01', 1, 1),
(11, 7, 3, 2, '2017-05-01', 1, 1),
(12, 8, 3, 2, '2017-05-01', 1, 1),
(13, 1, 3, 10, '2017-02-25', 1, 0),
(14, 2, 3, 10, '2017-02-25', 1, 0),
(15, 9, 4, 8, '2017-05-28', 1, 0),
(16, 10, 4, 8, '2017-05-28', 1, 0),
(17, 11, 4, 8, '2017-05-28', 1, 0),
(18, 12, 4, 8, '2017-05-28', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_show_time`
--

CREATE TABLE IF NOT EXISTS `tbl_show_time` (
  `st_id` int(11) NOT NULL,
  `screen_id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL COMMENT 'noon,second,etc',
  `start_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_show_time`
--

INSERT INTO `tbl_show_time` (`st_id`, `screen_id`, `name`, `start_time`) VALUES
(1, 1, 'Noon', '10:00:00'),
(2, 1, 'Matinee', '14:00:00'),
(3, 1, 'First', '18:00:00'),
(4, 1, 'Second', '21:00:00'),
(5, 2, 'Noon', '10:00:00'),
(6, 2, 'Matinee', '14:00:00'),
(7, 2, 'First', '18:00:00'),
(8, 2, 'Second', '21:00:00'),
(9, 3, 'Noon', '10:00:00'),
(10, 3, 'Matinee', '14:00:00'),
(11, 3, 'First', '18:00:00'),
(12, 3, 'Second', '21:00:00'),
(14, 4, 'Noon', '12:03:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_theatre`
--

CREATE TABLE IF NOT EXISTS `tbl_theatre` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `place` varchar(100) NOT NULL,
  `state` varchar(50) NOT NULL,
  `pin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_theatre`
--

INSERT INTO `tbl_theatre` (`id`, `name`, `address`, `place`, `state`, `pin`) VALUES
(2, 'Miraj Thakur Cinema', 'No 120, Thakur Mall, D P Road, Thakur Village, Kandivali East, Near Mcdonalds Family Restaurant, Opp', 'Mumbai', 'Maharashtra', 400101),
(3, 'PVR: Andheri(E)', 'Cinemax, Andheri-Kurla Road, Andheri(E), Behind Gurunanak Petrol Pump, Mumbai, Maharashtra 400059, I', 'Andheri', 'Maharashtra', 400059),
(4, 'INOX: Megaplex, Inorbit Mall', 'Inorbit Mall, Goregaon Malad Link Road, Near Shoppers Stop, Malad West, Mumbai, Maharashtra 400064, ', 'Malad', 'Maharashtra', 400064),
(5, 'INOX: Megaplex, Inorbit Mall', 'Inorbit Mall, Goregaon Malad Link Road, Near Shoppers Stop, Malad West, Mumbai, Maharashtra 400064, ', 'Malad', 'Maharashtra', 691523),
(6, 'rty', 'ryty', 'rty', 'tryt', 545),
(7, 'rty', 'ryty', 'rty', 'tryt', 545),
(8, 'rty', 'ryty', 'rty', 'tryt', 545),
(9, 'dgd', 'dgf', 'Mannady, Chennai, Tamil Nadu, India', 'Tamil Nadu', 600001),
(10, 'vxcv', 'sdfs', 'Mannady, Prakasam Road, George Town, Chennai, Tamil Nadu, India', 'Tamil Nadu', 600001),
(11, '', '', '', '', 0),
(12, '', '', '', '', 0),
(13, 'rye', 'yetyy', 'Yeyeye Hotel, Changchun, Jilin, China', 'Jilin Sheng', 130012),
(14, 'Trinity Movies', 'Pathanamthtta', 'Pathanamthitta, Kerala, India', 'Kerala', 691554);




--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--

--
-- Indexes for table `tbl_bookings`
--
ALTER TABLE `tbl_bookings`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `tbl_login`
--
ALTER TABLE `tbl_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_movie`
--
ALTER TABLE `tbl_movie`
  ADD PRIMARY KEY (`movie_id`);

--
-- Indexes for table `tbl_news`
--
ALTER TABLE `tbl_news`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `tbl_registration`
--
ALTER TABLE `tbl_registration`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tbl_screens`
--
ALTER TABLE `tbl_screens`
  ADD PRIMARY KEY (`screen_id`);

--
-- Indexes for table `tbl_shows`
--
ALTER TABLE `tbl_shows`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `tbl_show_time`
--
ALTER TABLE `tbl_show_time`
  ADD PRIMARY KEY (`st_id`);

--
-- Indexes for table `tbl_theatre`
--
ALTER TABLE `tbl_theatre`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_bookings`
--
ALTER TABLE `tbl_bookings`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_login`
--
ALTER TABLE `tbl_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_movie`
--
ALTER TABLE `tbl_movie`
  MODIFY `movie_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_news`
--
ALTER TABLE `tbl_news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_registration`
--
ALTER TABLE `tbl_registration`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_screens`
--
ALTER TABLE `tbl_screens`
  MODIFY `screen_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_shows`
--
ALTER TABLE `tbl_shows`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_show_time`
--
ALTER TABLE `tbl_show_time`
  MODIFY `st_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_theatre`
--
ALTER TABLE `tbl_theatre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;


CREATE TABLE IF NOT EXISTS `user` (
  
  `username` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone_no` (11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `user` (`username`, `name`, `password`, `email`, `phone_no`) VALUES
('nimitharia', 'Nimit', '12345678', 'nimitharia007@gmail.com', '9987207076'); 

ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



