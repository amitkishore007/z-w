-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 06, 2017 at 10:36 AM
-- Server version: 5.5.57-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `zedex_wallet`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `password` varchar(32) NOT NULL,
  `passphrase` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `wallet_address` varchar(255) NOT NULL,
  `current_wallet` varchar(10) DEFAULT 'ZEDX',
  `wallet_name` varchar(10) NOT NULL DEFAULT 'ZedexCoin',
  `wallet_private_key` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=111 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `phone`, `password`, `passphrase`, `is_active`, `wallet_address`, `current_wallet`, `wallet_name`, `wallet_private_key`, `created_at`) VALUES
(1, 'amit', 'kishoreamit5@gmail.com', '8800417260', 'b7247ff84671026e4f9419c85b09801d', NULL, 0, 'LQpNyHENg4Hrk4g2udsNSsXMrxULbQcp8N', 'ZEDX', 'ZedexCoin', NULL, '2017-09-30 05:10:13'),
(2, 'akm', 'akm@gmail.com', '8800417260', 'b7247ff84671026e4f9419c85b09801d', NULL, 0, 'LaBUbjjFdvH6KvQNajqMz9hGVy2kzAkKff', 'ZEDX', 'ZedexCoin', NULL, '2017-09-30 08:46:49'),
(3, 'amit1', 'amit1@gmail.com', '8800417260', 'b7247ff84671026e4f9419c85b09801d', NULL, 0, 'LUmLSQF4kGURcFh793eLGndcGggEg9jMvH', 'ZEDX', 'ZedexCoin', NULL, '2017-09-30 08:52:32'),
(4, 'kunal_insta', 'kunalsharma30798@gmail.com', '9555457807', '7028bd9ee91b5864e03acbd562d1d292', NULL, 0, 'LhZeDqXQPRvs7sWieGCQcDuTDuMJ7oSXc6', 'ZEDX', 'ZedexCoin', NULL, '2017-09-30 12:33:49'),
(5, 'Pramod khullar', 'ayuraherbsfarming@gmail.com', '9654892907', 'c1f9cff068e650a64d13536366764377', NULL, 0, 'LUJYQQZ1V1cnt3WLAgSCAU7Erav2pn6zFk', 'ZEDX', 'ZedexCoin', NULL, '2017-09-30 19:43:51'),
(6, 'Scooby', 'isuzu297297@gmail.com', '9654892907', '5bf4fa56e758b787649abaf729b282a3', NULL, 0, 'LMVcNqY9QsQT1TjXZD3VTc1sLL8TJbrG6s', 'ZEDX', 'ZedexCoin', NULL, '2017-10-01 01:46:28'),
(7, 'Shivaji The Boss', 'coinscare@gmail.com', '9652880095', 'e2c55eed0f5cc48ee260d9aaf3fcdfb0', NULL, 0, 'LhScdGSg25f9VJ5pVzkcEs1DZhLVg3Q1pT', 'ZEDX', 'ZedexCoin', NULL, '2017-10-01 06:07:08'),
(8, 'babasai', 'kamlakhera@gmail.com', '9599728859', '188f29b43563c702bd2e46738abbfcee', NULL, 0, 'LiGenx2ktAMEkbwhXi8LzPmT2e1yAAHUuz', 'ZEDX', 'ZedexCoin', NULL, '2017-10-01 06:09:55'),
(9, 'Shailesh1', 'yogiraj10175@gmail.com', '8460510175', '8d088c9ae974dce7d261868d20fc91c4', NULL, 0, 'LLpicbn4ERiDMDXWDU5qttH3bDsC4fGn5U', 'ZEDX', 'ZedexCoin', NULL, '2017-10-01 08:36:48'),
(10, 'rajesh', 'abmaijeetunga@gmail.com', '9313233336', '14c6ea1343df505ebe5691f0c7c37072', NULL, 0, 'Lg3UYwkQuUkJP3fNHjRt7WDkvdAoC32VCG', 'ZEDX', 'ZedexCoin', NULL, '2017-10-01 10:24:47'),
(11, 'Praduman', 'pradumanprasad@gmail.com', '9015161750', 'a70222b1b120fc05de5a5d969034a86d', NULL, 0, 'LgSWrrvcCxzXW7M8ETycJ3YmXVGW1k5Jkq', 'ZEDX', 'ZedexCoin', NULL, '2017-10-01 10:45:57'),
(12, 'Dhaval', 'voradhaval06@gmail.com', '9725075035', '8eb0e4d505be2911b521db7f572cae19', NULL, 0, 'LUFP3e2AnmhYW8cQpCWu7piA3NQqQFT8We', 'ZEDX', 'ZedexCoin', NULL, '2017-10-01 13:21:03'),
(13, 'yogeshjadhav', 'yogesh@softwin.co.in', '7755911222', 'dd205984a57ee12652d5c26699b39b3c', NULL, 0, 'LWjK1H3H1AsCRoVHUYRuLD1FtX4e5NFMLd', 'ZEDX', 'ZedexCoin', NULL, '2017-10-01 16:50:19'),
(14, 'Monika Sharma', 'naturopathajaysharma@gmail.com', '9350944393', '9885f14d44886644706d3503c6635d9f', NULL, 0, 'LKjg4TU63Wmo8XS7LYf2ud9Rib6fTEZkJB', 'ZEDX', 'ZedexCoin', NULL, '2017-10-01 17:05:36'),
(15, 'india', 'ukbuntyg@gmail.com', '9818817781', '0344672794950b66c322cc8c8c6835f8', NULL, 0, 'LKRZTL1P8TxkVq9GrJ3f9LEttiEoiCCNyK', 'ZEDX', 'ZedexCoin', NULL, '2017-10-01 17:40:20'),
(16, 'Akshay87', 'medicines.sma@gmail.com', '9991360300', '41fa46614aed9265db61608589147545', NULL, 0, 'LbfdWyCuvyEu7CHAx5ds1LhxG8bSNzD9Vj', 'ZEDX', 'ZedexCoin', NULL, '2017-10-01 18:01:50'),
(17, 'MUSKAN', 'Dilipsinhrana@hotmail.com', '9924915567', '70e135d262029190bdc6d6c074a3122d', NULL, 0, 'LarnGZJvf83UAs7XRD59vy3drqXjsnHxD8', 'ZEDX', 'ZedexCoin', NULL, '2017-10-02 01:33:42'),
(18, 'Raj123', 'rajsinghraj842@gmail.com', '8010402493', 'd929b9c2d289f25f329b1c7c10e68be1', NULL, 0, 'LcVQ5HnQCdHZVjLdgv5jDLftPkcuiLcQoR', 'ZEDX', 'ZedexCoin', NULL, '2017-10-02 03:12:34'),
(19, 'Virender thakur', 'virendersingh9898@gmail.com', '9871459060', 'afeb394d0a816d24d62296442f5c33a0', NULL, 0, 'LSzH1qyXtAHjyVbyH9ekjCegvXxCLaG3dc', 'ZEDX', 'ZedexCoin', NULL, '2017-10-02 04:04:35'),
(20, 'sarser786', 'sandeep.sarser2@gmail.com', '9812860880', 'dd278e87a09af241cf808093581729a8', NULL, 0, 'LeiZu53ayVGw6xKUxm5z1KopJG1MLpBV8m', 'ZEDX', 'ZedexCoin', NULL, '2017-10-02 04:28:52'),
(21, 'Ajitbhullar', 'Asbhullar0708@gmail.com', '9068190681', '44248f4e6fab20bf448ab66027496408', NULL, 0, 'LZ1J1dzHwkfXUzL9CRxMGfFuL6oc2v12jC', 'ZEDX', 'ZedexCoin', NULL, '2017-10-02 04:39:52'),
(22, 'Alpesh Kidecha', 'alpeshkidecha@yahoo.com', '9904639602', '096bfb25df6682436ecec957d2e351a2', NULL, 0, 'LgAZT6R7J7US6mUVpw4esYAWkhCmpXCsXQ', 'ZEDX', 'ZedexCoin', NULL, '2017-10-02 05:06:09'),
(23, 'Ashish Kumar ', 'ashishkaler@gmail.com', '8510828911', '5c10461ed0ed6aec9057884ce184496a', NULL, 0, 'LKMgkdwGTLQzpuATgsBJDewAGbzobnRNNg', 'ZEDX', 'ZedexCoin', NULL, '2017-10-02 05:33:24'),
(24, 'Jaivir singh panchal', 'panchaljaivir12@gmail.com', '9540754949', '4f7a74c3f0648ada71130b916376b19b', NULL, 0, 'LQGJcUab8nXSMgJ4bYP9JWXeqQBBbyqxhv', 'ZEDX', 'ZedexCoin', NULL, '2017-10-02 05:38:00'),
(25, 'Gold', 'sspashoka@gmail.com', '9996955328', '7e53f6b75185d6e06fa6ffad26c7f7be', NULL, 0, 'LLSshcshF1GcH5Es9DnoQ5n8X2KbnSjLnd', 'ZEDX', 'ZedexCoin', NULL, '2017-10-02 05:54:15'),
(26, 'Rahul Shukla', 'rahul.shukla1981@gmail.com', '9136715178', 'cf637abe6c579b3cb4afec5d603ffb53', NULL, 0, 'LQevTYzeAgY4CWhFe52Gkqf141cv2XqNit', 'ZEDX', 'ZedexCoin', NULL, '2017-10-02 07:16:33'),
(27, 'Surajlohan ', 'Surajlohanjind@gmail.com', '9992161300', 'df27f12901ecfb3e3a9614e93eec3712', NULL, 0, 'LYqwLRddxh36VWLWoY4nNtxXPkJWv4Fg6F', 'ZEDX', 'ZedexCoin', NULL, '2017-10-02 07:49:22'),
(28, 'sun79110', 'star.associates79@gmail.com', '9871376170', 'a894951a648a06a0e30200f86e58a5fa', NULL, 0, 'LeFN6hc8jn53SJEifDqj4Eymgkbet4fA53', 'ZEDX', 'ZedexCoin', NULL, '2017-10-02 08:07:10'),
(29, 'ZED12201', 'Naveen59004@gmail.com', '9812059004', 'dfacd5dd9df01ec5e01c780862efb9db', NULL, 0, 'LRw46W3sjjEBM7tuY2JoxcgHzmwGgyhPYj', 'ZEDX', 'ZedexCoin', NULL, '2017-10-02 08:12:09'),
(30, 'shree100', 'rajeshpatil4404@gmail.com', '8669159551', '5abcc239446324473a747a8172447c84', NULL, 0, 'LbL2VgU1hP35DfueQ29P6W1PZpXr4RuCFr', 'ZEDX', 'ZedexCoin', NULL, '2017-10-02 08:45:15'),
(31, 'watson', 'maharajsingh12@gmail.com', '9548310303', '3a3c2a732619da49ef662e549f634e84', NULL, 0, 'LSjpmKCrCnEqjAhWHCGv2gCu5hTftr2otp', 'ZEDX', 'ZedexCoin', NULL, '2017-10-02 09:20:06'),
(32, 'RAJESHKUMAR', 'humsabekhei@gmail.com', '9313233336', '5cba98fcaba99172394bbb927517aa77', NULL, 0, 'LPeJne32gUM173sHJFL1MNRaPdQkrJ3wgn', 'ZEDX', 'ZedexCoin', NULL, '2017-10-02 09:23:14'),
(33, 'Diamond ', 'diamond.pradeepchauhan@gmail.com', '9990156016', 'a22a8bee50bb94d5de5c8f3376938d39', NULL, 0, 'LTYRJKKkZ7NnwsCDZ4LsWKkSpXZHpSfYGi', 'ZEDX', 'ZedexCoin', NULL, '2017-10-02 09:54:47'),
(34, 'jaisaini', 'singhjaisingh412@gmail.com', '9896874475', '2b52fd41459808fe13aa7710804bb2e1', NULL, 0, 'LWXbu9mwC8E38RMwpohxeVdaSJyyhuZw4X', 'ZEDX', 'ZedexCoin', NULL, '2017-10-02 09:56:04'),
(35, 'SKUMAR', 'sanjeevveer1979@yahoo.in', '9871376168', 'b71c70f55f109d4231b4f6cd6c30d913', NULL, 0, 'LRrbkUivyVBorrfvTFpEzKFyRiCzcn2Fio', 'ZEDX', 'ZedexCoin', NULL, '2017-10-02 10:41:01'),
(36, 'daaie', 'daaieshakil@gmail.com', '9824142827', 'a187ae861b7b892550cadeb065bfddc1', NULL, 0, 'LUzLqLkTjrPpJPm2ugsDp4wBWf9CVJpLgM', 'ZEDX', 'ZedexCoin', NULL, '2017-10-02 10:57:33'),
(37, 'Komal', 'Karthiksystems@gmail.com', '9212191928', '5ce3ce88694a6369598d2bdc11f7836b', NULL, 0, 'LNokSkgfdo2KCwRdHvBksLMxC7htCnLaij', 'ZEDX', 'ZedexCoin', NULL, '2017-10-02 11:27:11'),
(38, 'Stbpg', 'sudhir21271@gmail.com', '8700922845', '1576f06e503aa7f90481fdb5434b7fd8', NULL, 0, 'LZ8qCSSVRVFFKDWwkAHfAwFBezZQ4z1bWo', 'ZEDX', 'ZedexCoin', NULL, '2017-10-02 11:40:45'),
(39, 'ZED47503', 'Shriom.chauhan@gmail.com', '8571067067', 'cbc44f23ba1bfb09fae3606631b5d59f', NULL, 0, 'Lb6asjaHXmifgUiVipefLZhNEicxeL6VyG', 'ZEDX', 'ZedexCoin', NULL, '2017-10-02 11:54:37'),
(40, 'Star', 'ns786060@gmail.com', '9813023248', 'c02876b0eef08b1c40f82ce71dc64da1', NULL, 0, 'LgWwcwpYaZKBF7ZLwKEK7BbzEXAZTAUrUr', 'ZEDX', 'ZedexCoin', NULL, '2017-10-02 12:10:15'),
(41, 'Nancy137', 'Mk1981r@gmail.com', '7698203232', '675afa7c02ad54236a7ad5eec6859b27', NULL, 0, 'LQk7Bmb4uRWdi2R7EjRKCMHNEzcHyx55M8', 'ZEDX', 'ZedexCoin', NULL, '2017-10-02 12:59:49'),
(42, 'aslam786', 'aslamshaikh.3m@gmail.com', '9974780315', '885c22b07e0d3441a48116bafe84e049', NULL, 0, 'LVv8pi2bBR2rwdpHekkWsSRhAT91d2zJiL', 'ZEDX', 'ZedexCoin', NULL, '2017-10-02 13:01:11'),
(43, 'Shreeja', 'Ashishsutariya2301@gmail.com', '9825997454', '160fe86d90ee18dc28de24007c6efbe8', NULL, 0, 'LfsFNEV2PMK8VQTPK5Twt16L1hCUYMQBAL', 'ZEDX', 'ZedexCoin', NULL, '2017-10-02 13:09:43'),
(44, 'virender lamba', 'vklamba1008@gmail.com', '8376946742', 'dff95b04b5f9526250d8ae0a8c282de3', NULL, 0, 'LU5tLwZjeP2PKYhQUKad6eQAi4SEPAmGnZ', 'ZEDX', 'ZedexCoin', NULL, '2017-10-02 13:20:50'),
(45, 'Jai bhole ', 'harjeetdhariwal@gmail.com', '8076737644', '5ce3ce88694a6369598d2bdc11f7836b', NULL, 0, 'LVEipVDNVCzPNLdGnLUPkSAMaanQ841S8M', 'ZEDX', 'ZedexCoin', NULL, '2017-10-02 14:27:18'),
(46, 'Ajay ware', 'ajayware777@gmail.com', '9767286517', '27dabfbfbb4dd34730719c1e8ca44fdc', NULL, 0, 'LVo9EgrEVGdJiJnaYfLt3PNqJGgVF4muvn', 'ZEDX', 'ZedexCoin', NULL, '2017-10-02 14:45:56'),
(47, 'Rajiv123', 'sainirajiv927@gmail.com', '9350902282', 'c12c11eefdbc5c4836c931c4d1508b9d', NULL, 0, 'LU4QoVoFjbvHFrEbjU8N6vSozaBUd8vKYQ', 'ZEDX', 'ZedexCoin', NULL, '2017-10-02 14:52:37'),
(48, 'Sushil', 'Sushilsrivastava190@gmail.com', '8800421360', '075dd04c37f788f143651be130c8a7bb', NULL, 0, 'LRGSCTnJnPnwtQjCJhyXPFZLgLRDMdcZHZ', 'ZEDX', 'ZedexCoin', NULL, '2017-10-02 15:23:22'),
(49, 'Ddeeppu', 'fanbeindia@gmail.com', '7011120837', '7ffc86bdb867b138a24bc6337e07b37d', NULL, 0, 'LeUYEMRcRGoQ5FWyGuKHiuBHEoHvERMnCP', 'ZEDX', 'ZedexCoin', NULL, '2017-10-02 15:33:09'),
(50, 'Ravindra', 'swapnilprtikpp736@gmail.com', '8401789589', '7b18f2743aa891a57b0dc6994c062c5d', NULL, 0, 'LUhQVRJWaMbVRdwJ9eGRVVxCv1ta7TeE42', 'ZEDX', 'ZedexCoin', NULL, '2017-10-02 15:47:36'),
(51, 'TOM', 'kuldeepsinghnain.13@gmail.com', '9212363579', '8e47876033924348e7888be182722a38', NULL, 0, 'LUTuWxqdS2k9tMwhwrHtGaPw6ZTf3dV6p5', 'ZEDX', 'ZedexCoin', NULL, '2017-10-02 17:23:51'),
(52, 'Sumit111', 'sumitlather92@gmail.com', '9813820006', '637534835cb265c5e844f6d2e76a79b0', NULL, 0, 'LgKhKxMA1Gzf1NeUkNUzosR3aH97zEJDLC', 'ZEDX', 'ZedexCoin', NULL, '2017-10-02 18:33:13'),
(53, 'ZED13500', 'gcsutariya79@gmail.com', '9723796701', 'd206c3a9bf4b0be51eba9465c931d0a3', NULL, 0, 'LNDzqgTzbdchfBEmDemzYkwjxoHJrA46vf', 'ZEDX', 'ZedexCoin', NULL, '2017-10-03 05:52:36'),
(54, 'Vijayckg', 'vijayckg@gmail.com', '9873004050', 'e464c95bfb9e914d996e4e4acfc8448b', NULL, 0, 'LSD3YhBUkKuWRthT3Rp5tkiHaGCvpFtUbu', 'ZEDX', 'ZedexCoin', NULL, '2017-10-03 06:17:37'),
(55, 'pooja', 'saharanpoojajulani@gmail.com', '7206761891', '5f6d8d0d980a6772bdedae80163cb4eb', NULL, 0, 'Lb5GtAzr3GMXjCKyh3rAWSRcyjxvaKphtc', 'ZEDX', 'ZedexCoin', NULL, '2017-10-03 07:08:01'),
(56, 'Nancy11377', 'mkraj6363@gmail.com', '7698203232', '675afa7c02ad54236a7ad5eec6859b27', NULL, 0, 'LKW1LujmDwQEUwMy9qdwJDoHSfHLZmXaUx', 'ZEDX', 'ZedexCoin', NULL, '2017-10-03 08:21:27'),
(57, 'is421umar ', 'shahirfan4141@gmail.com', '8160655937', '0c3df959bd041da3d131a9cb68431c89', NULL, 0, 'Lgd3drGDinf6q8TtuPF8mjA5gjG99zRzY1', 'ZEDX', 'ZedexCoin', NULL, '2017-10-03 08:41:57'),
(58, 'Rajeshl', 'rblohiya618@gmail.com', '9890356318', 'f5f0faa166d5487879fe53cc03086e3a', NULL, 0, 'LRcfyoDNUPeM9cmYjdiYu2Rgf6NbAbToLc', 'ZEDX', 'ZedexCoin', NULL, '2017-10-03 09:33:58'),
(59, 'PMBARAIYA', 'pmbaraiya@gmail.com', '9824164953', '69664780ba1c0ff28b4d2cb63a793e0c', NULL, 0, 'LPMPsBThWqFrLHMhGHeC7xzNJzPBjcQ67W', 'ZEDX', 'ZedexCoin', NULL, '2017-10-03 09:41:03'),
(60, 'zed77309', 'sheelesh2009kumar@gmail.com', '7500683126', '617691119476254f294e95b17999e654', NULL, 0, 'LfyC7iC9AAeVKWSxdDDmm4wLm89AFa2rdy', 'ZEDX', 'ZedexCoin', NULL, '2017-10-03 10:04:20'),
(61, 'ZED73629', 'Ompaldahiya@gmail.com', '8930000480', '393f1361f453531e36f2bb581212bcef', NULL, 0, 'LhT3QLZvRGwyxCC1qgiNn7PJkYE7VcJ4nk', 'ZEDX', 'ZedexCoin', NULL, '2017-10-03 10:24:55'),
(62, 'Bitzed90', 'deepakbains.bains123@gmail.com', '8750468445', '87c6f39d9e3a53ac66cf4df5c163f8b1', NULL, 0, 'LMUsdC2ggsbTx1XYjreBaLuSYyvFm1ZW4P', 'ZEDX', 'ZedexCoin', NULL, '2017-10-03 10:28:54'),
(63, 'amit69', 'darkhorse3064@gmail.com', '9910285163', 'fc9225cfe7a73c3ea9f7e9775ab55c75', NULL, 0, 'LUEiAGUtASKpymvysk2HHpRFcE1otS3r4W', 'ZEDX', 'ZedexCoin', NULL, '2017-10-03 10:54:59'),
(64, 'zedextushar', 'btc7291857529@gmail.com', '7291857529', 'bc0d256e932802ce319c43c36761903e', NULL, 0, 'LXr5CX9RkWousP7WTgN9E1ySDYJ1CWdAAF', 'ZEDX', 'ZedexCoin', NULL, '2017-10-03 11:23:58'),
(65, 'ZED82921', 'narendrasutar12@gmail.com', '9998514455', 'c0349c1cd692f86e34ec6075429fc2bd', NULL, 0, 'LRJDcLXGyBF8AadtKobwXPPfp59JDQEdH9', 'ZEDX', 'ZedexCoin', NULL, '2017-10-03 12:21:36'),
(66, 'anirudh', 'anjuansh2006@gmail.com', '9999399845', 'f8af7348cb0ab0cec199b05aad16c399', NULL, 0, 'LcDoB3SimNFCwrjnfA1mgJcykhbke3VCuM', 'ZEDX', 'ZedexCoin', NULL, '2017-10-03 12:44:33'),
(67, 'manojbali ', 'manojbali10@gmail.com', '8744941003', 'f9a37f8f8d1a81337ddb41ed17b2c9e0', NULL, 0, 'LYn9uahVpyYgLNuXLWzg1ADKTnn3VGSMFW', 'ZEDX', 'ZedexCoin', NULL, '2017-10-03 14:35:46'),
(68, 'dhiraj3218', 'mullerpatel7@gmail.com', '9737082205', 'f5a818bb272b8191e5f214ebcc147915', NULL, 0, 'LcrW5Lyu6AUFsecY5AHfQrBUdJFc7pw31x', 'ZEDX', 'ZedexCoin', NULL, '2017-10-03 15:09:49'),
(69, 'Zed13080', 'nalingajera2017@gmail.com', '9374861601', '1d89b5e8cd20b6b8c17030013c82ff7b', NULL, 0, 'LR3vuvvjfD6gyFxJCSQXMdQATCQYFwXar2', 'ZEDX', 'ZedexCoin', NULL, '2017-10-04 03:32:58'),
(70, 'Nip', 'lakkarharaindia@gmail.com', '9999157730', '11e3e35fd813fc7fcb3ee938b9ce36d5', NULL, 0, 'LMVjB4uN9wtQVNwQd2dSsvYtyz1Dus8eKW', 'ZEDX', 'ZedexCoin', NULL, '2017-10-04 03:56:56'),
(71, 'gpsali', 'gpsali8866@gmail.com', '8866548201', 'df18c64ec085286f94a73bdabf790d32', NULL, 0, 'Le6gqbq5k4eapfisjMRWaq7tvMJTwT1q15', 'ZEDX', 'ZedexCoin', NULL, '2017-10-04 06:24:31'),
(72, 'anmolji', 'jkanmolji@gmail.com', '9999365799', 'e812959eadae1aa4d32101cf1d92c3e2', NULL, 0, 'LegJQEaTGCTSc85qRhhyStVPu1GQHvQzfq', 'ZEDX', 'ZedexCoin', NULL, '2017-10-04 11:00:42'),
(73, 'sairam', 'sirdisainath@gmail.com', '9599728859', '188f29b43563c702bd2e46738abbfcee', NULL, 0, 'LN88xSAzPPTQEC794Hb5bht6t1B5UzrUHm', 'ZEDX', 'ZedexCoin', NULL, '2017-10-04 11:14:10'),
(74, 'Aman', 'amanshaikhmlm@gmail.com', '8287362193', '987123e2c3154fdef903be9fb4410e27', NULL, 0, 'LZnsYoLP5ifcknsGFas4Pe4z9y2VrEwkG6', 'ZEDX', 'ZedexCoin', NULL, '2017-10-04 11:34:46'),
(75, 'Paresh111', 'pareshvekariya1983@gmail.com', '9909461409', '03b3d5c60aa6e1f81d9a2923f8636456', NULL, 0, 'LdBfSxiU4RRmNKecAoQ8catVUzg79Z4WJV', 'ZEDX', 'ZedexCoin', NULL, '2017-10-04 13:09:35'),
(76, 'vision1', 'arupsampa@gmail.com', '9818928776', '9e056bcc320299f6e96e865e8191b943', NULL, 0, 'LiCYHSNyUnAJseFaVHqhT7XwQ7f28qrvEx', 'ZEDX', 'ZedexCoin', NULL, '2017-10-04 14:21:41'),
(77, 'jaiguruji', 'bigboymvt@gmail.com', '9911478193', '33e2702f2937925c2d24d5a61baa23b0', NULL, 0, 'LdnbFcwn1aqkauHFvPBa7e6YdmyHmhCecQ', 'ZEDX', 'ZedexCoin', NULL, '2017-10-04 17:04:12'),
(78, 'Aftabat', 'aftabalam3726@gmail.com', '7042103738', 'c528916b5ce7bc35fdcfb179a8dee98c', NULL, 0, 'Lc7H2cbmmhxtEuJwpFdTGJMU3QfXiAX3ym', 'ZEDX', 'ZedexCoin', NULL, '2017-10-04 17:31:30'),
(79, 'bholu', 'nmsolanki73@gmail.com', '8733083216', 'a32e7ceea2862b1d04b24e8a5d215b12', NULL, 0, 'LfCHfnguhpRSNnTHTqfZn8kLhV8WNccDjo', 'ZEDX', 'ZedexCoin', NULL, '2017-10-04 17:58:51'),
(80, 'holistic', 'holisticmlm@gmail.com', '9718990202', '82cf0a777657f6d040f1036f330b3e1c', NULL, 0, 'LgmwTyG5z5XbuQSeLFtBzhL221uGYhymCY', 'ZEDX', 'ZedexCoin', NULL, '2017-10-04 18:04:56'),
(81, 'nirala1', 'nirala.niralam@gmail.com', '8210560520', 'cf941765c425dd94d8c9db96d73bdb03', NULL, 0, 'LNZCHEygmN9ZHL39fqWa2Z4Y8ir1wesnmt', 'ZEDX', 'ZedexCoin', NULL, '2017-10-05 02:55:24'),
(82, 'sgzed1972', 'hexacare1972@gmail.com', '9871254722', '6a1ca04562205254da001ae9b3e531db', NULL, 0, 'LKPpxAce1FQrV1GJtnW8Dd94tUXAatKzkd', 'ZEDX', 'ZedexCoin', NULL, '2017-10-05 03:14:17'),
(83, 'Moudgil ', 'ashwanimoudgil@gmail.com', '9896086301', 'a291456e9ab044f39a6c345e8d0ccc05', NULL, 0, 'LcZ6JTVJJigf8qFm6vz2pyRuG6cRNnCGYX', 'ZEDX', 'ZedexCoin', NULL, '2017-10-05 03:21:28'),
(84, 'Mohd kasim', 'kasim.smart02@gmail.com', '8604941005', 'd1137f5e0e0dc15529033b1d5ccb3add', NULL, 0, 'LT4HViQdh7YZmUedRd3u9hRi1mesRH6tT2', 'ZEDX', 'ZedexCoin', NULL, '2017-10-05 03:22:44'),
(85, 'Sumit punia', 'Sumitkumar54236@gmail.com', '9812954236', '638e3157cfc9999e9a71a3649539c310', NULL, 0, 'LMaxgJPSArFWwyNf7AgxDVQUMnNXdnynkf', 'ZEDX', 'ZedexCoin', NULL, '2017-10-05 03:25:17'),
(86, 'lakshmi', 'lakshayuma@gmail.com', '9354123510', '6ea45e1889fabca15603dda039cd77e1', NULL, 0, 'LSBA6hD5MRLMzE4yzh1mrU7GwbbXRFyhyE', 'ZEDX', 'ZedexCoin', NULL, '2017-10-05 04:41:13'),
(87, 'grover', 'escapendiscover@yahoo.com', '9818697720', '0344672794950b66c322cc8c8c6835f8', NULL, 0, 'LWxs8CamwRPZydQ4RV4StLEJk8ReHN42rM', 'ZEDX', 'ZedexCoin', NULL, '2017-10-05 05:09:02'),
(88, 'Ravinder', 'cuteurlook@gmail.com', '9034730173', '5a3901575738d32fbd948296c85d1d04', NULL, 0, 'Ldx3thCSMVLJHHSzuG5i5x4dAJE9baPe18', 'ZEDX', 'ZedexCoin', NULL, '2017-10-05 05:24:50'),
(89, 'Somnath', 'Skumarsone7@gmail.com', '8320820695', '6946217d4f5a8fc0fce32c245b5296bc', NULL, 0, 'LVyWXYwJKmEazMaubCA9V4QDHxp8whq4RH', 'ZEDX', 'ZedexCoin', NULL, '2017-10-05 05:58:18'),
(90, 'avtarzx', 'avtar.ecurrency@gmail.com', '9990163066', 'bf5984f87471c2fc9e8b39edef572cf3', NULL, 0, 'La5uX96LoXnvBaU62XSR8b86DAaQZv3qfn', 'ZEDX', 'ZedexCoin', NULL, '2017-10-05 05:59:39'),
(91, 'siddhi', 'rsbarate@gmail.com', '7741821199', '8dd43ae0638e1ce2690e2e3cfa653923', NULL, 0, 'LLVJ8aMBTvDfaiCNz73L43C8J3Q7csxwJ2', 'ZEDX', 'ZedexCoin', NULL, '2017-10-05 06:04:57'),
(92, 'Asha dudhat', 'dudhatasha0@gmail.com', '9624056055', '229ba49e190721d4110e2ee190e445a9', NULL, 0, 'LMEDBkoucuCPQtKqpHGba9pcXbLwg3sE5R', 'ZEDX', 'ZedexCoin', NULL, '2017-10-05 06:08:58'),
(93, 'Ajayshine7923', 'Ajayshine7923@gmail.com', '8800627923', '0b3bc9ce555f07d127c6da44337e364f', NULL, 0, 'LgJA9Pyh1EeEaosef3VsbGxm4JACR6nYSS', 'ZEDX', 'ZedexCoin', NULL, '2017-10-05 06:12:53'),
(94, 'rameshramromeo', 'rameshramromeo.rb19@gmail.com', '7738797597', '2034cb4c19b0f6559350ce0f4411d677', NULL, 0, 'LKV89ui1w8RcFvcZ2j7BYKAgupk6U5sAi1', 'ZEDX', 'ZedexCoin', NULL, '2017-10-05 06:49:12'),
(95, 'BANGERSHAB', 'surenderbanger76@gmail.com', '9355797778', '24f03c2a11bcbf55c5d1d644b1ae06ff', NULL, 0, 'LXEAkxmjLi6v3pgcTT5TXz7iT4MM1aFx6w', 'ZEDX', 'ZedexCoin', NULL, '2017-10-05 06:58:09'),
(96, 'winnerdelhi', 'aman_tahzib@yahoo.com', '8287362193', '987123e2c3154fdef903be9fb4410e27', NULL, 0, 'LKhcdwFx6zauVZ1EC5Hjs5J92obxJoeWgN', 'ZEDX', 'ZedexCoin', NULL, '2017-10-05 08:31:57'),
(97, 'smit10cr', 'sanjeevfirke@gmail.com', '9657861980', '6c13efcf464c253cdf76c749a0e9a572', NULL, 0, 'LPSqB3kYJkHMyCPoChATM4na48svNPxxH4', 'ZEDX', 'ZedexCoin', NULL, '2017-10-05 10:33:39'),
(98, 'arfil', 'sahin.pahat96@gmail.com', '7011947632', '9fef476df3a3db2adeb572e4e5110472', NULL, 0, 'LMxe1DN6futM1oePrubS5TmjicUEme3a9R', 'ZEDX', 'ZedexCoin', NULL, '2017-10-05 10:50:13'),
(99, 'Vansh01', 'rajuk9990258041@gmail.com', '9990258041', '5b0dc31bbfd2dc87e10f713e3ea1e96e', NULL, 0, 'LXxyXystBwuggsox419MZYjo948w9pADrj', 'ZEDX', 'ZedexCoin', NULL, '2017-10-05 10:58:45'),
(100, 'ZED49641', 'sandhusandeep0684@gmail.com', '9992223534', '075efa4d1ac0461dcf6b1a97ff01b7d3', NULL, 0, 'LQJAz2b7SzSxQyW3BwfkpBZCudCLttgjW2', 'ZEDX', 'ZedexCoin', NULL, '2017-10-05 11:52:58'),
(101, 'samadhiya', 'anilsamadhiya1975@gmail.com', '7000826035', '404cd65c6794da43e8c10de8c9bce522', NULL, 0, 'LdEeEeWyayUNgLRgzXbJcZLprL3EvHPdHB', 'ZEDX', 'ZedexCoin', NULL, '2017-10-05 12:57:32'),
(102, 'mydata', 'mydata1984@gmail.com', '9136778074', 'bd81863fdada2ee86a60eb2159cbfe24', NULL, 0, 'LQpa9Cn4Kcf7tbRbdMuy2mrXzf9Y7FgpTu', 'ZEDX', 'ZedexCoin', NULL, '2017-10-05 14:46:56'),
(103, 'tulsibhai', 'tulsisavani1@gmail.com', '9574571775', '4211215b4be8a5ce2572a85ad75b46f7', NULL, 0, 'LSCDtvk5CQZ7Sqtyc5XeY33WJJaWqvi1vR', 'ZEDX', 'ZedexCoin', NULL, '2017-10-05 14:56:13'),
(104, 'NILESH', 'nileshhrp987@gmail.com', '9825354844', '412134f251683973df3dcdf8da754d3e', NULL, 0, 'LdxgBr3pZ1WSHvfmkUXL28d8qTYTTsmQYB', 'ZEDX', 'ZedexCoin', NULL, '2017-10-05 15:09:33'),
(105, 'Hitesh Kumar', 'hk40534@gmail.com', '8954192344', '75e5482540953a6f679c5237bfc57123', NULL, 0, 'LKWpuXVdGoPegL3tamhL4Va53XBCgnQXmV', 'ZEDX', 'ZedexCoin', NULL, '2017-10-05 15:09:48'),
(106, 'ANSARI786', 'aslamshaikh.123007@gmail.com', '9974185916', '281168abc1c145c562ccdbbd3deecf1f', NULL, 0, 'LL6v6juKRqK5rCiZyonEqhgYT1Wx2jqBjL', 'ZEDX', 'ZedexCoin', NULL, '2017-10-05 16:39:33'),
(107, 'Sandhu', 'parveensandhu0007@gmail.com', '9958603381', '9b5a49bb67659d45d67277d1d4999b80', NULL, 0, 'LcqSvJVLr3qWu3QhDtYQagmyS8Fnr9QZAE', 'ZEDX', 'ZedexCoin', NULL, '2017-10-06 01:11:33'),
(108, 'Hisar', 'balrajsinghbeniwal77@yahoo.com', '9466684069', 'e5ed12c1bdf04f006f3a8fa7a441ea37', NULL, 0, 'LPabjcy7bnUiXhavK5KhNak7w3Rrz6U2q6', 'ZEDX', 'ZedexCoin', NULL, '2017-10-06 04:03:19'),
(109, 'RamRam', 'sntbeniwal@gmail.com', '9466684079', 'e5ed12c1bdf04f006f3a8fa7a441ea37', NULL, 0, 'LVmQQCSJrd3PsChNF8ae4DFmwvohzQRcHm', 'ZEDX', 'ZedexCoin', NULL, '2017-10-06 04:23:44'),
(110, 'vinambra', 'kbpawar2015@gmail.com', '7709806995', '9dac169aa1f8ce9a83a1d66dd579da04', NULL, 0, 'LXyN4GS7Wn3oHtAdrd9QVcM1gKKWJrEek4', 'ZEDX', 'ZedexCoin', NULL, '2017-10-06 05:59:13');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
