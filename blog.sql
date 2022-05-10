-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2022 at 12:28 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog_manager`
--

CREATE TABLE `blog_manager` (
  `id` int(123) NOT NULL,
  `manager_first_name` varchar(20) DEFAULT NULL,
  `manager_last_name` varchar(20) DEFAULT NULL,
  `manager_contact` varchar(15) DEFAULT NULL,
  `manager_email` varchar(90) DEFAULT NULL,
  `manager_password` varchar(100) DEFAULT NULL,
  `manager_gender` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blog_manager`
--

INSERT INTO `blog_manager` (`id`, `manager_first_name`, `manager_last_name`, `manager_contact`, `manager_email`, `manager_password`, `manager_gender`) VALUES
(1, 'Bendy', 'Paul', '08080602373', 'admin@admin.com', 'e10adc3949ba59abbe56e057f20f883e', 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `news_catigories`
--

CREATE TABLE `news_catigories` (
  `id` int(11) NOT NULL,
  `catigory_name` varchar(40) DEFAULT NULL,
  `date_created` datetime(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `news_catigories`
--

INSERT INTO `news_catigories` (`id`, `catigory_name`, `date_created`) VALUES
(4, 'Technology', '2022-04-30 19:09:58.338221'),
(5, 'Society', '2022-04-30 20:31:18.731247'),
(8, 'Culture', '2022-05-07 14:18:48.571156');

-- --------------------------------------------------------

--
-- Table structure for table `news_gallery`
--

CREATE TABLE `news_gallery` (
  `id` int(225) NOT NULL,
  `image_name` varchar(44) DEFAULT NULL,
  `date_created` datetime(6) DEFAULT current_timestamp(6),
  `image_file` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `news_gallery`
--

INSERT INTO `news_gallery` (`id`, `image_name`, `date_created`, `image_file`) VALUES
(22, 'Hotel Image2', '2022-05-01 23:16:00.973689', 'ITEM-626f06a0dab433.65541492.jpg'),
(24, 'Oil And Gas Image', '2022-05-01 23:38:42.784744', 'ITEM-626f0bf2beb433.37036640.jpg'),
(27, 'fire', '2022-05-03 14:20:23.531041', 'ITEM-62712c1780e6a5.94095583.jpg'),
(28, 'Kakashi', '2022-05-04 10:11:54.957411', 'ITEM-6272435ae8f216.86019904.webp'),
(29, 'Naruto', '2022-05-05 17:29:43.423630', 'ITEM-6273fb7765a842.73121927.jpg'),
(30, 'Hotel Image', '2022-05-07 14:43:51.360702', 'ITEM-627677973aee56.15534781.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `news_posts`
--

CREATE TABLE `news_posts` (
  `id` int(225) NOT NULL,
  `news_title` varchar(40) DEFAULT NULL,
  `news_content` mediumtext DEFAULT NULL,
  `news_catigory` varchar(60) DEFAULT NULL,
  `news_sub_catigory` varchar(60) DEFAULT NULL,
  `news_cover_img` varchar(60) DEFAULT NULL,
  `news_type` varchar(70) DEFAULT NULL,
  `no_of_views` varchar(9000) NOT NULL DEFAULT '0',
  `news_status` varchar(70) NOT NULL DEFAULT 'Disabled',
  `date_created` datetime(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `news_posts`
--

INSERT INTO `news_posts` (`id`, `news_title`, `news_content`, `news_catigory`, `news_sub_catigory`, `news_cover_img`, `news_type`, `no_of_views`, `news_status`, `date_created`) VALUES
(10, 'My Second Post', '<p style=\"text-align:center\"><span style=\"font-family:monospace\"><span style=\"font-size:28px\"><u>This Is My First Post Title</u></span></span></p>\r\n\r\n<div>\r\n<p><span style=\"font-size:24px\"><span style=\"color:#e74c3c\"><samp>&nbsp; &nbsp;</samp></span></span><span style=\"font-size:18px\"><span style=\"color:#e74c3c\"><samp> &nbsp;</samp></span>Lorem ipsum doit autem error inventore rerum porro praesentium ullam aliquid nulla deserunt ipsam t nemo a placeat in architecto quos nihil eius facere provident natus consequuntur cupiditate ratione pariatur? Iure, fugiat labore ex nulla eum molestias adipisci repudiandae </span></p>\r\n\r\n<p style=\"margin-left:40px\"><iframe frameborder=\"0\" height=\"550\" scrolling=\"yes\" src=\"https://www.thenetnaija.co/embed\" tabindex=\"-1\" width=\"50%\"></iframe></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:18px\">eatae harum doloremque ipsam nobis possimus unde fugit error dictamaxime blanditiis non. Animi<img alt=\"\" src=\"../blog_manager/images/ITEM-6272435ae8f216.86019904.webp\" style=\"float:right; height:280px; width:370px\" />&nbsp;dignissimonostrum s voluptatum, modi quo quaerat repudiandae b at, alias necessitatibus praesentium autem ratione quisquam! Quo vero sit quis repellendus.<strong> A cum sit corrupti, ipsum molliti</strong>a quidem quasi aut illo sapiente, amet ullam laborum ducimus dolorem. Atque ex harum exercitationem nemo neque! Doloremque pariatur facilis ullam ducimus eligendi nisi laborum expedita amet veritatis nulla, asperiores numquam, <u>qui quae non blanditiis?</u>&nbsp; Consequuntur, dolores, repellat naprovident aspernatur mollitia quaerat non voluptatem laudantium facere sunt necessitatibus a officiis, accusamus eligendi et consequatur cum placeat! Rerum, cum distinctio? Dolor omnis fuga vero sapiente, harum perferendis adipisci aliquid quis. Explicabo est, voluptatem quas quam tempora suscipit minima. Saepe doloribus, nostrum, modi similique ullam quibusdam deserunt amet eaque molestias nemo, odio earum dolorum fugiat recusandae eius quasi sequi. Voluptatem nostrum aspernatur quas</span></p>\r\n</div>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"../blog_manager/images/ITEM-6273fb7765a842.73121927.jpg\" style=\"height:400px; width:50%\" /></p>\r\n\r\n<p style=\"margin-left:40px; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n', 'Society', 'Politics', 'COVER-6271a7b4397409.23975270.jpg', 'Latest News', '1', 'Disabled', '2022-05-03 22:14:13.750126');

-- --------------------------------------------------------

--
-- Table structure for table `news_types`
--

CREATE TABLE `news_types` (
  `id` int(225) NOT NULL,
  `dtype_name` varchar(44) DEFAULT NULL,
  `date_created` datetime(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `news_types`
--

INSERT INTO `news_types` (`id`, `dtype_name`, `date_created`) VALUES
(4, 'Latest News', '2022-05-03 20:22:20.249667'),
(6, 'Football News', '2022-05-05 17:55:11.435763');

-- --------------------------------------------------------

--
-- Table structure for table `sub_catigories`
--

CREATE TABLE `sub_catigories` (
  `id` int(225) NOT NULL,
  `sub_catigory_name` varchar(100) DEFAULT NULL,
  `catigory_name` varchar(70) DEFAULT NULL,
  `date_created` datetime(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sub_catigories`
--

INSERT INTO `sub_catigories` (`id`, `sub_catigory_name`, `catigory_name`, `date_created`) VALUES
(4, 'Politics', 'Society', '2022-05-02 18:51:19.778144'),
(5, 'Future', 'Technology', '2022-05-02 22:54:27.605163'),
(6, 'Art', 'Culture', '2022-05-07 14:21:55.548031');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog_manager`
--
ALTER TABLE `blog_manager`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news_catigories`
--
ALTER TABLE `news_catigories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news_gallery`
--
ALTER TABLE `news_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news_posts`
--
ALTER TABLE `news_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news_types`
--
ALTER TABLE `news_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_catigories`
--
ALTER TABLE `sub_catigories`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog_manager`
--
ALTER TABLE `blog_manager`
  MODIFY `id` int(123) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `news_catigories`
--
ALTER TABLE `news_catigories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `news_gallery`
--
ALTER TABLE `news_gallery`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `news_posts`
--
ALTER TABLE `news_posts`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `news_types`
--
ALTER TABLE `news_types`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sub_catigories`
--
ALTER TABLE `sub_catigories`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
