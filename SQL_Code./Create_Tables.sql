
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `DataBaseForDummmies`
--

-- --------------------------------------------------------

--
-- Table structure for table `Deliverable`
--

CREATE TABLE `Deliverable` (
  `Deliverable_Title` varchar(200) NOT NULL,
  `Project_Title` varchar(100) NOT NULL,
  `Deliverable_Summary` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Deliverable`
--

INSERT INTO `Deliverable` (`Deliverable_Title`, `Project_Title`, `Deliverable_Summary`) VALUES
('David Copperfield', 'Plains zebra', 'zebra zebra zebra'),
('Emma', 'Endometrin', 'A new fact'),
('Gulliver\'s Travels', 'Cherry Birch Pollen', 'Travel stories'),
('Hamlet', 'American badger', 'another all time classic'),
('Harry Potter and The Chamber of Secrets', 'Softlips Peach Mango', 'The continuation of the story about the boy who lived'),
('Harry Potter and The Philosopher\'s Stone', 'Softlips Peach Mango', 'A story about the boy who lived'),
('Inferno ', 'Stila Hydrating Primer Oil-Free SPF 30', 'Two sides of the same coin'),
('Invisible Man', 'Goose, snow', 'Moonwalk'),
('Lolita', 'NovoLog', 'Investing time '),
('Lord of the Flies', 'Tropical buckeye butterfly', 'human\'s true nature'),
('Madame Bovary', 'Asian foreset tortoise', 'weird stuff'),
('Nineteen Eighty Four', 'Nike, Inc.', 'Big Brother Sees Everything'),
('Oedipus	', 'Blesbok', 'Proin eu mi.'),
('One Hundred Years of Solitude', 'Jaguar', 'Morbi non lectus.'),
('One Thousand and One Nights', 'Golub Capital BDC, Inc.', 'Something large'),
('Pride and Prejudice', 'Pine siskin', 'Something about something else'),
('Tess of the d\'Urbervilles', 'Indian jackal', 'Learning how to speak french'),
('The Catcher In The Rye', 'Pigeon, wood', 'In interesting point of view'),
('The DaVinci Code', 'European wild cat', 'A revelation'),
('The Divine Comedy', 'American badger', 'stories that would rather be unheard'),
('The Divine Comedy', 'Tsakos Energy Navigation Ltd', 'Report about energy sufficiency of specific center'),
('The Flowers of Evil', 'Wild boar', 'Donec quis orci eget orci vehicula condimentum.'),
('The Grapes of Wrath', 'Cormorant, king', 'something something something'),
('The Handmaid\'s Tale', 'Dove, mourning collared', 'an old history fact'),
('The Holy Blood and the Holy Grail', 'Pain Relief PM', 'A massive dig on history '),
('The Island of the Day Before', 'Hornbill, southern ground', 'Another long, hard to read story'),
('The Lord of The Rings', 'Francolin, swainson\'s', 'One of the biggest masterpieces of all time'),
('The Metamorphosis', 'Detrol LA', 'Something about change '),
('The Name of The Rose', 'Lion, asian', 'A true eye-opening masterpiece'),
('The Odyssey', 'Antelope ground squirrel', 'Multiple things'),
('The Prague Cemetery', 'European wild cat', 'A historian\'s research'),
('The Scarlet Letter', 'Great kiskadee', 'A red letter'),
('The Sound Of Music', 'Asian foreset tortoise', 'Ut at dolor quis odio consequat varius.'),
('The Sun Also Rises', 'European beaver', 'something else something else something else'),
('Ulysses', 'Red lava crab', 'A tragedy'),
('Wuthering Heights', 'European beaver', 'an old time classic');

-- --------------------------------------------------------

--
-- Table structure for table `executive`
--

CREATE TABLE `executive` (
  `exec_id` int(100) NOT NULL,
  `full_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `executive`
--

INSERT INTO `executive` (`exec_id`, `full_name`) VALUES
(1, 'Jack Nickelson'),
(2, 'Betty Andrews'),
(3, 'Jerry Seinfeld'),
(4, 'Anthony Wayne'),
(5, 'Isabella Blake'),
(6, 'Elaine Bennes'),
(7, 'Thomas Shelby'),
(8, 'David Copperfield'),
(9, 'Samwell Tarly'),
(10, 'Ellen Pompeo');

-- --------------------------------------------------------

--
-- Table structure for table `Is_Company`
--

CREATE TABLE `Is_Company` (
  `Org_Name` varchar(100) NOT NULL,
  `Equity` bigint(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Is_Company`
--

INSERT INTO `Is_Company` (`Org_Name`, `Equity`) VALUES
('Aufderhar Inc', 387961),
('Connelly LLC', 397665),
('Cummerata LLC', 957119),
('Deckow and Sons', 546554),
('Deckow LLC', 826468),
('Doyle Inc', 967256),
('Klein Inc', 194471),
('Kuhn Inc', 742600),
('Mills Inc', 446587),
('O\'Kon LLC', 239498),
('Walker and Sons', 392302),
('Zboncak Group', 686163);

-- --------------------------------------------------------

--
-- Table structure for table `Is_ResearchCenter`
--

CREATE TABLE `Is_ResearchCenter` (
  `Org_Name` varchar(100) NOT NULL,
  `BudgetFromMinistry` bigint(255) DEFAULT NULL,
  `PrivateFunds` bigint(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Is_ResearchCenter`
--

INSERT INTO `Is_ResearchCenter` (`Org_Name`, `BudgetFromMinistry`, `PrivateFunds`) VALUES
('Beahan, Hessel and Trantow', 711480, 723188),
('Beatty-Carter', 566924, 566924),
('Cummerata-Bahringer', 566924, 566924),
('Dickens-Daniel', 211640, 631165),
('Dicki-Walker', 126269, 126269),
('Durgan, Homenick and Rowe', 731774, 247277),
('Glover Group', 424551, 13036),
('Hammes, Friesen and Vandervort', 803583, 543768),
('Johnston-Lemke', 128372, 262057),
('Legros-Gerhold', 951123, 622682),
('Lesch-Kertzmann', 893613, 35353),
('Marquardt-McGlynn', 512754, 145596),
('Mayert, Schoen and Cremin', 147687, 330875),
('Morar-Streich', 496794, 184769),
('Mueller-Abernathy', 702661, 634791),
('Mueller-Gerhold', 631715, 620745),
('Ortiz, Dietrich and Blanda', 705637, 599337),
('Robel-Hand', 522940, 355588),
('Wilkinson-Maggio', 393405, 341475);

-- --------------------------------------------------------

--
-- Table structure for table `Is_University`
--

CREATE TABLE `Is_University` (
  `Org_Name` varchar(100) NOT NULL,
  `BudgetFromMinistry` bigint(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Is_University`
--

INSERT INTO `Is_University` (`Org_Name`, `BudgetFromMinistry`) VALUES
('Bergstrom, Schoen and Feest', 922867),
('Brown, Rempel and Auer', 508538),
('Connelly-Douglas', 313327),
('Greenholt-Pollich', 672245),
('Jones-Berge', 668361),
('Medhurst, Raynor and Koch', 649575),
('Parisian-Mann', 531025),
('Rowe, Crist and Beier', 847281);

-- --------------------------------------------------------

--
-- Table structure for table `organizations`
--

CREATE TABLE `organizations` (
  `org_name` varchar(250) NOT NULL,
  `acronym` varchar(50) NOT NULL,
  `street_name` varchar(50) NOT NULL,
  `street_number` varchar(100) NOT NULL,
  `city` varchar(50) NOT NULL,
  `postal_code` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `organizations`
--

INSERT INTO `organizations` (`org_name`, `acronym`, `street_name`, `street_number`, `city`, `postal_code`) VALUES
('Aufderhar Inc', 'A.I', 'Spenser', '0', 'Ioannina', ''),
('Beahan, Hessel and Trantow', 'BHT', 'Dwight', '6', 'Budapest', '606525'),
('Beatty-Carter', 'BC', 'Kingsford', '446', 'Prague', ''),
('Bergstrom, Schoen and Feest', 'BSF', 'Ronald Regan', '6195', 'Seattle', ''),
('Brown, Rempel and Auer', 'faucibus', 'Grayhawk', '90', 'Milan', ''),
('Connelly LLC', 'C LLC', 'Morning', '9762', 'Cairo', '5509'),
('Connelly-Douglas', 'CD', 'Orin', '59', 'New Jersey', ''),
('Cummerata LLC', 'CLLC', 'Bunting', '365', 'Mexico', ''),
('Cummerata-Bahringer', 'C.B', 'Kings', '1', 'Heraklion', ''),
('Deckow and Sons', 'D&S', 'Butterfield', '8', 'Barcelona', '35150'),
('Deckow LLC', 'D.LLC', 'Morning', '8330', 'Turin', '9885'),
('Dickens-Daniel', 'D-D', 'Meadow Ridge', '234', 'Brighton', '879-2413'),
('Dicki-Walker', 'DW', 'Lindbergh', '5082', 'Dublin ', '472 01'),
('Doyle Inc', 'lacinia', 'Hauk', '207', 'Geneva', '29950'),
('Durgan, Homenick and Rowe', 'DHR', 'Oxford', '38790', 'Munich', ''),
('Glover Group', 'GG', 'Eagan', '40723', 'Bath', '71151'),
('Greenholt-Pollich', 'PF', 'Walton', '24', 'Minsk', ''),
('Hammes, Friesen and Vandervort', 'H.F.V', 'Village', '15', 'Chalkida', 'K6K'),
('Johnston-Lemke', 'JL', 'Helena', '13710', 'Los Angeles', ''),
('Jones-Berge', 'JB', 'Bonner', '379', 'Berlin', '733048'),
('Kessler Inc', 'KI', 'Debra', '92', 'Instabul', '756 56'),
('Klein Inc', 'praesent', 'Schurz', '49', 'London', '155526'),
('Kuhn Inc', 'KI', 'Aberg', '9905', 'Toronto', '85708'),
('Legros-Gerhold', 'L-G', 'Meadow Vale', '9619', 'Kalamata', '4312'),
('Lesch-Kertzmann', 'LK', 'Schlimgen', '65', 'Houston', ''),
('Marquardt-McGlynn', 'M.Mc.', 'Schlimgen', '808', 'Venice', ''),
('Mayert, Schoen and Cremin', 'MSC', 'Elmside', '9639', 'Boston', ''),
('Medhurst, Raynor and Koch', 'MRK', 'Golf Course', '24062', 'Nashville', '771 31'),
('Mills Inc', 'M.I', 'Emmet', '63', 'Athens', '64080 CEDEX'),
('Morar-Streich', 'M.S', 'Dwight', '35456', 'New York', '86-260'),
('Mueller-Abernathy', 'MA ', 'Bartelt', '6839', 'Bratislava', ''),
('Mueller-Gerhold', 'M.G.', 'Logan', '5224', 'Thessaloniki', ''),
('O\'Kon LLC', 'OKLLC', 'Del Mar', '76611', 'Oslo', ''),
('Ortiz, Dietrich and Blanda', 'O.D.B', 'Scofield', '460', 'Areopoli', ''),
('Parisian-Mann', 'P.M.', 'Farmco', '3', 'Nafplio', ''),
('Robel-Hand', 'tincidunt', 'Sauthoff', '93222', 'Paris', '29830-000'),
('Rowe, Crist and Beier', 'risus', 'Banding', '92601', 'Coppenhagen', '58175'),
('Walker and Sons', 'W&S', 'West', '12', 'Florence', ''),
('Wilkinson-Maggio', 'duis', 'Butterfield', '86', 'Rome', '2525-105'),
('Zboncak Group', 'ZG', 'Harper', '13', 'Atlanta', '');

-- --------------------------------------------------------

--
-- Table structure for table `program`
--

CREATE TABLE `program` (
  `prog_name` varchar(200) NOT NULL,
  `funds` varchar(250) NOT NULL,
  `address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `program`
--

INSERT INTO `program` (`prog_name`, `funds`, `address`) VALUES
('Ambrosia Leaf Bur Ragweed', '590538', '575 Lakeland Circle'),
('American Beachgrass', '282591', '0466 Scofield Drive'),
('American Wisteria', '715963', '682 Forest Dale Trail'),
('Bluejoint', '516411', '67 Scoville Junction'),
('Canadian White Violet', '177065', '9 Moland Crossing'),
('Charming Centaury', '224490', '15 Bartillon Lane'),
('Chisos Mountain Crested Coralroot', '22478', '7237 Sugar Street'),
('Coastal Wattle', '346966', '5 Algoma Trail'),
('Dense False Gilyflower', '496883', '39621 Warner Road'),
('Gray Mangrove', '399390', '37248 Old Shore Junction'),
('Hemp Agrimony', '129281', '53159 Clarendon Drive'),
('Jared\'s Pepperweed', '546153', '05 Lindbergh Court'),
('Johnny-tuck', '688908', '267 Toban Terrace'),
('Koolau Range Colicwood', '575492', '9545 Truax Crossing'),
('Largeflower Tickseed', '74526', '986 Mcguire Circle'),
('Locoto', '815432', '32026 Fuller Trail'),
('Lycianthes', '75818', '34 Holmberg Park'),
('Mat Vetch', '66956', '577 Towne Street'),
('Mcallister\'s Phlox', '419528', '236 Meadow Ridge Point'),
('New Mexico Goosefoot', '940119', '446 Nobel Pass'),
('Oracle Oak', '682136', '7283 Oneill Drive'),
('Paleyellow Tidytips', '391444', '80940 Jay Trail'),
('Prairie Gentian', '515438', '26925 Colorado Street'),
('Rhizome Bluegrass', '512503', '86673 Sunfield Street'),
('San Carlos Buckwheat', '748359', '1 Dahle Crossing'),
('Sierra Woodrush', '723453', '77480 Westend Avenue'),
('Sphagnum', '676291', '54657 Hauk Drive'),
('Straight Bladderpod', '615800', '13117 Mockingbird Place'),
('Suksdorf\'s Buttercup', '61895', '61 Kinsman Avenue'),
('Tehachapi Ragwort', '591434', '12 Talmadge Way');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `project_title` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `funds` varchar(100) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `supervision_duration` int(5) NOT NULL,
  `evaluation_date` date NOT NULL,
  `evaluation` int(11) NOT NULL,
  `exec_id` int(11) NOT NULL,
  `supervisor_id` int(100) NOT NULL,
  `evaluator_id` int(100) NOT NULL,
  `org_name` varchar(200) NOT NULL,
  `prog_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`project_title`, `description`, `funds`, `start_date`, `end_date`, `supervision_duration`, `evaluation_date`, `evaluation`, `exec_id`, `supervisor_id`, `evaluator_id`, `org_name`, `prog_name`) VALUES
('African ground squirrel (unidentified)', 'tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse', '143448', '2020-06-03', '2026-07-03', 1, '2021-03-06', 10, 6, 36, 13, 'Glover Group', 'Chisos Mountain Crested Coralroot'),
('American badger', 'nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere', '216332', '2004-10-08', '2012-12-14', 3, '2009-04-16', 5, 5, 25, 13, 'Jones-Berge', 'Mcallister\'s Phlox'),
('Antelope ground squirrel', 'varius ut blandit non interdum in ante vestibulum ante ipsum primis in', '856065', '2008-03-20', '2022-06-24', 2, '2009-08-24', 6, 5, 15, 14, 'Morar-Streich', 'Sierra Woodrush'),
('Arthritazin Pain Relieving', 'laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus', '682063', '2007-06-06', '2011-06-03', 4, '2010-09-01', 4, 6, 6, 12, 'Hammes, Friesen and Vandervort', 'Paleyellow Tidytips'),
('Asian foreset tortoise', 'tempus semper est quam pharetra', '988639', '2017-07-26', '2026-09-05', 4, '2017-10-22', 10, 3, 13, 12, 'Ortiz, Dietrich and Blanda', 'Suksdorf\'s Buttercup'),
('Bandicoot, southern brown', 'mattis pulvinar nulla pede ullamcorper augue', '652217', '2009-01-03', '2009-04-27', 3, '2009-02-27', 8, 4, 4, 14, 'Wilkinson-Maggio', 'San Carlos Buckwheat'),
('Blesbok', 'vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus', '953419', '2012-11-02', '2025-04-04', 1, '2013-08-27', 0, 1, 1, 11, 'Klein Inc', 'Jared\'s Pepperweed'),
('Bontebok', 'proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum', '130522', '2018-04-23', '2026-06-27', 2, '2020-04-15', 9, 8, 9, 15, 'Parisian-Mann', 'Locoto'),
('California sea lion', 'lectus in est risus auctor', '540893', '2012-07-19', '2021-05-07', 2, '2014-09-25', 0, 7, 27, 15, 'Beatty-Carter', 'Mat Vetch'),
('Cefepime', 'imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris', '669594', '2021-11-04', '2027-11-21', 4, '2022-01-06', 9, 8, 8, 2, 'Rowe, Crist and Beier', 'Sphagnum'),
('Cherry Birch Pollen', 'pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula', '542354', '2018-08-18', '2025-09-24', 4, '2019-12-30', 0, 3, 3, 12, 'Hammes, Friesen and Vandervort', 'Koolau Range Colicwood'),
('Ciprofloxacin', 'non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate', '679829', '2017-11-07', '2028-04-15', 4, '2018-11-24', 3, 4, 4, 13, 'Ortiz, Dietrich and Blanda', 'Rhizome Bluegrass'),
('Clindamycin in 5 Percent Dextrose', 'vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget', '438760', '2003-03-21', '2004-05-17', 1, '2004-03-02', 9, 2, 2, 2, 'Rowe, Crist and Beier', 'Bluejoint'),
('Cohu, Inc.', 'Praesent blandit.', '492151', '2002-06-09', '2014-12-07', 4, '2010-12-29', 8, 7, 11, 16, 'Aufderhar Inc', 'Paleyellow Tidytips'),
('Cormorant, king', 'et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante', '905398', '2018-12-01', '2020-06-19', 1, '2019-05-09', 2, 8, 38, 15, 'Medhurst, Raynor and Koch', 'Lycianthes'),
('Deer, mule', 'mattis odio donec vitae nisi nam', '307785', '2004-08-12', '2006-08-26', 2, '2005-10-08', 5, 10, 30, 18, 'Deckow LLC', 'Dense False Gilyflower'),
('Deer, white-tailed', 'ut ultrices vel augue vestibulum ante ipsum primis in faucibus', '627997', '2005-06-27', '2015-11-30', 1, '2014-04-17', 2, 3, 3, 13, 'Robel-Hand', 'American Beachgrass'),
('Detrol LA', 'suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper', '152025', '2016-06-11', '2028-04-30', 4, '2019-12-02', 0, 9, 9, 12, 'Hammes, Friesen and Vandervort', 'American Wisteria'),
('Dove, mourning collared', 'orci vehicula condimentum curabitur in libero ut massa', '668211', '2020-11-13', '2024-10-11', 4, '2021-08-18', 5, 1, 31, 19, 'Beahan, Hessel and Trantow', 'Jared\'s Pepperweed'),
('Enalapril Maleate', 'cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere', '589991', '2005-10-31', '2015-02-12', 4, '2012-01-12', 7, 9, 9, 11, 'Aufderhar Inc', 'Locoto'),
('Endometrin', 'tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed', '932425', '2011-10-08', '2016-03-17', 1, '2015-11-08', 6, 10, 10, 12, 'Hammes, Friesen and Vandervort', 'New Mexico Goosefoot'),
('Etomidate', 'vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent', '909993', '2017-12-29', '2024-07-23', 2, '2019-07-18', 10, 5, 5, 1, 'Klein Inc', 'Charming Centaury'),
('European beaver', 'potenti cras in purus eu magna vulputate luctus cum sociis natoque', '456697', '2011-05-03', '2017-05-03', 3, '2013-07-16', 3, 9, 39, 16, 'Zboncak Group', 'Largeflower Tickseed'),
('European wild cat', 'velit vivamus vel nulla eget eros elementum', '206061', '2003-09-28', '2007-07-19', 1, '2006-04-12', 6, 6, 7, 13, 'Mills Inc', 'Oracle Oak'),
('Fanapt', 'turpis sed ante vivamus tortor duis mattis egestas metus aenean', '244556', '2003-06-23', '2018-03-22', 0, '2010-12-05', 5, 2, 2, 11, 'Aufderhar Inc', 'Gray Mangrove'),
('Francolin, swainson\'s', 'nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis', '760211', '2020-12-05', '2027-05-14', 3, '2021-03-30', 8, 8, 18, 17, 'Bergstrom, Schoen and Feest', 'Sphagnum'),
('Golub Capital BDC, Inc.', 'Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', '646160', '2020-07-23', '2028-08-04', 3, '2021-10-19', 5, 4, 12, 12, 'Ortiz, Dietrich and Blanda', 'Koolau Range Colicwood'),
('Goose, snow', 'felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec', '433644', '2021-01-10', '2028-06-18', 4, '2021-11-05', 9, 2, 3, 20, 'Robel-Hand', 'Suksdorf\'s Buttercup'),
('Great kiskadee', 'non quam nec dui luctus rutrum nulla', '879641', '2005-07-27', '2025-12-28', 4, '2019-01-28', 10, 10, 11, 17, 'Aufderhar Inc', 'Ambrosia Leaf Bur Ragweed'),
('Greater blue-eared starling', 'commodo placerat praesent blandit nam nulla integer pede justo lacinia eget', '504423', '2002-09-29', '2009-01-13', 4, '2005-01-31', 6, 5, 5, 15, 'Brown, Rempel and Auer', 'Charming Centaury'),
('Green vine snake', 'in felis donec semper sapien a libero nam dui proin leo odio', '811767', '2011-06-30', '2019-04-07', 1, '2012-03-14', 4, 8, 28, 16, 'Cummerata LLC', 'Johnny-tuck'),
('Halcion', 'bibendum morbi non quam nec dui luctus rutrum nulla tellus in', '460197', '2012-07-25', '2019-12-12', 0, '2007-02-17', 0, 4, 4, 2, 'Rowe, Crist and Beier', 'San Carlos Buckwheat'),
('honey bee hymenoptera venom', 'elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor', '958356', '2019-08-17', '2027-03-23', 2, '2018-03-04', 5, 1, 1, 1, 'Klein Inc', 'Jared\'s Pepperweed'),
('Hornbill, southern ground', 'consequat dui nec nisi volutpat eleifend donec', '839283', '2020-09-26', '2024-10-14', 2, '2021-10-15', 2, 1, 11, 21, 'Aufderhar Inc', 'Tehachapi Ragwort'),
('IF Bancorp, Inc.', 'Suspendisse accumsan tortor quis turpis.', '539993', '2002-05-04', '2015-10-02', 4, '2011-05-28', 3, 3, 12, 20, 'Ortiz, Dietrich and Blanda', 'Gray Mangrove'),
('Indian jackal', 'morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis', '680431', '2017-11-29', '2023-02-27', 4, '2018-10-03', 0, 6, 16, 15, 'Mayert, Schoen and Cremin', 'Straight Bladderpod'),
('Jaguar', 'aenean lectus pellentesque eget nunc donec quis', '388790', '2016-01-16', '2019-04-17', 1, '2017-07-31', 3, 9, 9, 19, 'Parisian-Mann', 'Largeflower Tickseed'),
('Kiskadee, great', 'imperdiet et commodo vulputate justo in blandit', '933593', '2019-10-18', '2029-05-19', 1, '2021-03-20', 2, 10, 10, 20, 'Legros-Gerhold', 'Hemp Agrimony'),
('LACTULOSE', 'justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo', '434938', '2013-05-25', '2019-07-21', 1, '2016-01-21', 4, 3, 3, 1, 'Klein Inc', 'Suksdorf\'s Buttercup'),
('Leeks', 'morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate', '424892', '2001-03-27', '2023-09-07', 0, '2005-07-08', 10, 10, 10, 2, 'Rowe, Crist and Beier', 'Hemp Agrimony'),
('Legaan, ground', 'odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede', '123433', '2018-03-19', '2025-06-30', 4, '2019-02-28', 5, 3, 33, 21, 'Greenholt-Pollich', 'American Beachgrass'),
('Levofloxacin', 'vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus', '276677', '2001-08-07', '2005-08-22', 0, '2004-01-10', 10, 8, 8, 2, 'Rowe, Crist and Beier', 'Lycianthes'),
('Lion, asian', 'amet eleifend pede libero quis orci nullam molestie', '146435', '2012-04-21', '2015-02-27', 1, '2014-02-24', 2, 4, 5, 11, 'Brown, Rempel and Auer', 'Sierra Woodrush'),
('Lydall, Inc.', 'Nunc nisl.', '544084', '2018-07-24', '2023-05-13', 1, '2021-03-04', 6, 6, 11, 13, 'Aufderhar Inc', 'Mcallister\'s Phlox'),
('METHADONE HYDROCHLORIDE', 'pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est', '499193', '2016-11-28', '2021-10-06', 4, '2017-11-06', 0, 5, 5, 1, 'Klein Inc', 'Sierra Woodrush'),
('Native cat', 'justo in blandit ultrices enim lorem ipsum dolor sit', '759060', '2014-05-12', '2018-11-26', 2, '2015-12-20', 0, 1, 21, 20, 'Marquardt-McGlynn', 'Ambrosia Leaf Bur Ragweed'),
('Nike, Inc.', 'Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', '506889', '2006-10-22', '2024-06-22', 4, '2021-01-12', 1, 10, 1, 16, 'Klein Inc', 'American Wisteria'),
('NovoLog', 'in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum', '753823', '2013-04-18', '2017-04-22', 1, '2016-11-19', 9, 7, 7, 13, 'Ortiz, Dietrich and Blanda', 'Mat Vetch'),
('Olay Fresh Effects Soak Up the Sun Protection', 'amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis', '689462', '2015-10-06', '2025-03-27', 2, '2016-12-19', 1, 1, 1, 13, 'Ortiz, Dietrich and Blanda', 'Ambrosia Leaf Bur Ragweed'),
('Pain Relief PM', 'leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue', '546606', '2018-01-09', '2023-06-29', 3, '2021-12-29', 9, 2, 2, 2, 'Rowe, Crist and Beier', 'Prairie Gentian'),
('Parakeet, rose-ringed', 'fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis', '901879', '2001-06-20', '2026-12-31', 1, '2017-01-10', 1, 10, 20, 19, 'Walker and Sons', 'New Mexico Goosefoot'),
('Phalarope, red', 'facilisi cras non velit nec nisi vulputate', '782905', '2016-12-06', '2021-10-25', 2, '2019-09-17', 7, 5, 35, 12, 'Dicki-Walker', 'Charming Centaury'),
('Pigeon, wood', 'in consequat ut nulla sed accumsan', '603913', '2007-03-17', '2024-01-14', 3, '2008-12-01', 5, 9, 10, 16, 'Legros-Gerhold', 'New Mexico Goosefoot'),
('Pine siskin', 'eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue', '373480', '2008-11-18', '2017-01-31', 2, '2012-04-07', 5, 1, 1, 18, 'Klein Inc', 'Tehachapi Ragwort'),
('Pintail, white-cheeked', 'sodales sed tincidunt eu felis fusce posuere felis', '507299', '2014-12-17', '2024-10-29', 1, '2016-01-03', 1, 9, 29, 17, 'Kuhn Inc', 'American Wisteria'),
('Plains zebra', 'dolor vel est donec odio justo sollicitudin ut suscipit a', '714401', '2018-05-18', '2025-03-30', 2, '2019-01-02', 4, 7, 7, 17, 'Mills Inc', 'Canadian White Violet'),
('PREP (AND) PRIME CC COLOR CORRECT SPF30 BROAD SPECTRUM', 'nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat', '595821', '2013-08-15', '2017-04-12', 3, '2014-12-08', 8, 10, 10, 13, 'Ortiz, Dietrich and Blanda', 'Dense False Gilyflower'),
('Proparacaine Hydrochloride', 'ultrices posuere cubilia curae nulla dapibus dolor vel est donec', '884549', '2020-03-21', '2027-10-25', 2, '2020-12-10', 6, 4, 4, 2, 'Rowe, Crist and Beier', 'Coastal Wattle'),
('Red and blue macaw', 'vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra', '249468', '2013-03-30', '2019-10-21', 1, '2014-02-04', 0, 10, 40, 17, 'Kessler Inc', 'Hemp Agrimony'),
('Red brocket', 'dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum', '674838', '2021-04-30', '2027-12-27', 4, '2022-03-09', 4, 2, 2, 12, 'Rowe, Crist and Beier', 'Bluejoint'),
('Red lava crab', 'maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien', '396500', '2015-01-25', '2017-03-22', 1, '2016-03-15', 2, 4, 24, 12, 'O\'Kon LLC', 'Rhizome Bluegrass'),
('Red phalarope', 'orci luctus et ultrices posuere', '781742', '2012-10-06', '2018-11-03', 3, '2013-03-02', 8, 2, 32, 20, 'Mueller-Abernathy', 'Bluejoint'),
('Red sheep', 'ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla', '470555', '2005-05-09', '2016-05-31', 2, '2005-12-22', 3, 7, 17, 16, 'Lesch-Kertzmann', 'Oracle Oak'),
('RXi Pharmaceuticals Corporation', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio.', '946205', '2009-12-11', '2015-02-25', 2, '2010-12-09', 8, 5, 11, 21, 'Aufderhar Inc', 'Rhizome Bluegrass'),
('Snake, tiger', 'commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus', '917230', '2017-06-29', '2027-09-25', 2, '2019-03-29', 8, 3, 23, 11, 'Johnston-Lemke', 'Koolau Range Colicwood'),
('Softlips Peach Mango', 'pede ac diam cras pellentesque volutpat dui maecenas tristique est et', '810004', '2017-06-22', '2019-10-14', 2, '2018-01-09', 10, 7, 7, 1, 'Klein Inc', 'Canadian White Violet'),
('Starfish, crown of thorns', 'odio curabitur convallis duis consequat dui nec nisi volutpat eleifend', '309511', '2008-07-13', '2024-07-27', 4, '2018-07-21', 2, 4, 34, 11, 'Connelly-Douglas', 'San Carlos Buckwheat'),
('Stila Hydrating Primer Oil-Free SPF 30', 'nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta', '166984', '2019-01-09', '2022-04-25', 1, '2021-10-17', 0, 6, 6, 2, 'Rowe, Crist and Beier', 'Chisos Mountain Crested Coralroot'),
('Surmontil', 'vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia', '148630', '2006-12-12', '2013-04-27', 2, '2007-12-12', 5, 8, 8, 11, 'Aufderhar Inc', 'Johnny-tuck'),
('Tecfidera', 'orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin', '351760', '2002-03-22', '2005-08-13', 3, '2004-11-21', 8, 7, 7, 1, 'Klein Inc', 'Oracle Oak'),
('Theophylline in Dextrose', 'vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac', '697758', '2017-01-07', '2019-02-27', 2, '2018-06-14', 0, 5, 5, 11, 'Aufderhar Inc', 'Mcallister\'s Phlox'),
('TLB-Matrix', 'posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec', '868566', '2011-02-15', '2014-06-04', 1, '2011-08-12', 7, 9, 9, 1, 'Klein Inc', 'Largeflower Tickseed'),
('Tortoise, radiated', 'euismod scelerisque quam turpis adipiscing lorem vitae', '491776', '2020-06-20', '2026-07-14', 1, '2021-08-07', 8, 1, 2, 19, 'Rowe, Crist and Beier', 'Prairie Gentian'),
('Tropical buckeye butterfly', 'nunc viverra dapibus nulla suscipit ligula in lacus curabitur', '677021', '2006-10-14', '2014-06-04', 4, '2011-01-05', 10, 7, 8, 14, 'Mueller-Gerhold', 'Sphagnum'),
('Tsakos Energy Navigation Ltd', 'Donec dapibus.', '388501', '2006-10-08', '2013-11-07', 3, '2007-04-04', 4, 1, 9, 11, 'Hammes, Friesen and Vandervort', 'New Mexico Goosefoot'),
('Tsessebe', 'curabitur gravida nisi at nibh', '603151', '2014-12-13', '2021-05-12', 3, '2015-01-11', 8, 6, 26, 14, 'Durgan, Homenick and Rowe', 'Paleyellow Tidytips'),
('Two-toed sloth', 'pulvinar nulla pede ullamcorper augue a suscipit', '444879', '2011-05-26', '2017-04-10', 3, '2015-12-18', 10, 7, 37, 14, 'Dickens-Daniel', 'Canadian White Violet'),
('Union Bankshares Corporation', 'Nulla ut erat id mauris vulputate elementum.', '927692', '2011-09-16', '2017-02-05', 3, '2012-07-21', 8, 2, 3, 19, 'Hammes, Friesen and Vandervort', 'Ambrosia Leaf Bur Ragweed'),
('Vancomycin Hydrochloride', 'platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis', '418070', '2003-11-01', '2010-02-20', 2, '2009-07-02', 9, 1, 1, 1, 'Klein Inc', 'Tehachapi Ragwort'),
('Wallaby, agile', 'volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc', '880383', '2001-01-28', '2020-08-29', 4, '2007-04-09', 8, 2, 22, 21, 'Connelly LLC', 'Gray Mangrove'),
('WHITE LAVENDER AND MINT ANTIBACTERIAL MOISTURIZING HAND SP', 'quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna', '601962', '2015-04-09', '2016-06-04', 1, '2016-03-26', 9, 6, 6, 2, 'Rowe, Crist and Beier', 'Straight Bladderpod'),
('White-eye, pale', 'ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent', '352560', '2008-09-10', '2015-12-31', 1, '2009-07-21', 9, 4, 14, 13, 'Cummerata-Bahringer', 'Coastal Wattle'),
('White-winged tern', 'ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus', '869816', '2002-04-28', '2008-10-16', 1, '2007-08-30', 7, 5, 6, 12, 'Doyle Inc', 'Straight Bladderpod'),
('Wild boar', 'orci nullam molestie nibh in', '822343', '2018-07-23', '2022-10-27', 1, '2021-04-10', 3, 2, 12, 11, 'Hammes, Friesen and Vandervort', 'Prairie Gentian'),
('Wombat, common', 'a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id', '141068', '2017-05-18', '2026-04-01', 2, '2021-06-13', 6, 3, 4, 21, 'Wilkinson-Maggio', 'Coastal Wattle'),
('Wombat, southern hairy-nosed', 'sed justo pellentesque viverra pede ac diam', '780046', '2017-01-07', '2023-08-06', 1, '2018-12-09', 7, 9, 19, 18, 'Deckow and Sons', 'Locoto'),
('XEROSTOM', 'malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin', '813608', '2020-06-19', '2024-08-08', 3, '2019-11-24', 10, 3, 3, 1, 'Klein Inc', 'American Beachgrass'),
('XG Technology, Inc', 'Proin interdum mauris non ligula pellentesque ultrices.', '167898', '2014-12-17', '2028-02-17', 3, '2016-11-11', 8, 8, 11, 21, 'Aufderhar Inc', 'Mat Vetch');

-- --------------------------------------------------------

--
-- Stand-in structure for view `projects_per_organizations_and_per_programs`
-- (See below for the actual view)
--
CREATE TABLE `projects_per_organizations_and_per_programs` (
`organization` varchar(250)
,`program` varchar(200)
,`project_title` varchar(200)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `projects_per_researchers`
-- (See below for the actual view)
--
CREATE TABLE `projects_per_researchers` (
`researcher_name` varchar(91)
,`supervisor_name` varchar(91)
,`project_title` varchar(200)
);

-- --------------------------------------------------------

--
-- Table structure for table `Project_Field`
--

CREATE TABLE `Project_Field` (
  `Project_Title` varchar(100) NOT NULL,
  `Field` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Project_Field`
--

INSERT INTO `Project_Field` (`Project_Title`, `Field`) VALUES
('African ground squirrel (unidentified)', 'Social Sciences'),
('American badger', 'humanities'),
('American badger', 'Social Sciences'),
('Antelope ground squirrel', 'humanities'),
('Antelope ground squirrel', 'Natural Sciences and Technology'),
('Arthritazin Pain Relieving', 'IT and economics'),
('Arthritazin Pain Relieving', 'Social Sciences'),
('Bandicoot, southern brown', 'Social Sciences'),
('Blesbok', 'Natural Sciences and Technology'),
('Bontebok', 'Natural Sciences and Technology'),
('California sea lion', 'humanities'),
('California sea lion', 'IT and economics'),
('California sea lion', 'Natural Sciences and Technology'),
('Cefepime', 'humanities'),
('Cherry Birch Pollen', 'humanities'),
('Cherry Birch Pollen', 'IT and economics'),
('Ciprofloxacin', 'IT and economics'),
('Ciprofloxacin', 'Social Sciences'),
('Clindamycin in 5 Percent Dextrose', 'Natural Sciences and Technology'),
('Cohu, Inc.', 'natural sciences and technology'),
('Cormorant, king', 'Natural Sciences and Technology'),
('Cormorant, king', 'Social Sciences'),
('Deer, mule', 'Natural Sciences and Technology'),
('Deer, white-tailed', 'IT and economics'),
('Detrol LA', 'IT and economics'),
('Detrol LA', 'Natural Sciences and Technology'),
('Dove, mourning collared', 'humanities'),
('Dove, mourning collared', 'Social Sciences'),
('Enalapril Maleate', 'Natural Sciences and Technology'),
('Enalapril Maleate', 'Social Sciences'),
('Endometrin', 'Social Sciences'),
('Etomidate', 'humanities'),
('European beaver', 'humanities'),
('European beaver', 'IT and economics'),
('European beaver', 'Natural Sciences and Technology'),
('European beaver', 'Social Sciences'),
('European wild cat', 'Natural Sciences and Technology'),
('European wild cat', 'Social Sciences'),
('Fanapt', 'Natural Sciences and Technology'),
('Francolin, swainson\'s', 'IT and economics'),
('Francolin, swainson\'s', 'Social Sciences'),
('Golub Capital BDC, Inc.', 'it and economics'),
('Goose, snow', 'Social Sciences'),
('Great kiskadee', 'IT and economics'),
('Greater blue-eared starling', 'humanities'),
('Green vine snake', 'IT and economics'),
('Green vine snake', 'Natural Sciences and Technology'),
('Halcion', 'Natural Sciences and Technology'),
('Halcion', 'Social Sciences'),
('honey bee hymenoptera venom', 'humanities'),
('honey bee hymenoptera venom', 'Natural Sciences and Technology'),
('Hornbill, southern ground', 'humanities'),
('IF Bancorp, Inc.', 'natural sciences and technology'),
('Indian jackal', 'humanities'),
('Indian jackal', 'Social Sciences'),
('Jaguar', 'IT and economics'),
('Jaguar', 'Natural Sciences and Technology'),
('Kiskadee, great', 'humanities'),
('Kiskadee, great', 'IT and economics'),
('LACTULOSE', 'Natural Sciences and Technology'),
('Leeks', 'IT and economics'),
('Leeks', 'Natural Sciences and Technology'),
('Legaan, ground', 'Social Sciences'),
('Levofloxacin', 'Natural Sciences and Technology'),
('Lion, asian', 'humanities'),
('Lion, asian', 'IT and economics'),
('Lion, asian', 'Natural Sciences and Technology'),
('Lydall, Inc.', 'social sciences'),
('METHADONE HYDROCHLORIDE', 'IT and economics'),
('METHADONE HYDROCHLORIDE', 'Natural Sciences and Technology'),
('Native cat', 'humanities'),
('Native cat', 'Natural Sciences and Technology'),
('Native cat', 'Social Sciences'),
('Nike, Inc.', 'natural sciences and technology'),
('NovoLog', 'Natural Sciences and Technology'),
('Olay Fresh Effects Soak Up the Sun Protection', 'humanities'),
('Pain Relief PM', 'humanities'),
('Parakeet, rose-ringed', 'Social Sciences'),
('Phalarope, red', 'humanities'),
('Phalarope, red', 'Social Sciences'),
('Pigeon, wood', 'IT and economics'),
('Pigeon, wood', 'Natural Sciences and Technology'),
('Pintail, white-cheeked', 'Social Sciences'),
('Plains zebra', 'IT and economics'),
('PREP (AND) PRIME CC COLOR CORRECT SPF30 BROAD SPECTRUM', 'IT and economics'),
('Proparacaine Hydrochloride', 'Natural Sciences and Technology'),
('Red and blue macaw', 'Natural Sciences and Technology'),
('Red and blue macaw', 'Social Sciences'),
('Red brocket', 'humanities'),
('Red brocket', 'Social Sciences'),
('Red lava crab', 'IT and economics'),
('Red lava crab', 'Natural Sciences and Technology'),
('Red phalarope', 'humanities'),
('Red sheep', 'humanities'),
('RXi Pharmaceuticals Corporation', 'humanities'),
('Snake, tiger', 'IT and economics'),
('Softlips Peach Mango', 'humanities'),
('Softlips Peach Mango', 'Natural Sciences and Technology'),
('Starfish, crown of thorns', 'humanities'),
('Starfish, crown of thorns', 'IT and economics'),
('Stila Hydrating Primer Oil-Free SPF 30', 'Social Sciences'),
('Surmontil', 'Natural Sciences and Technology'),
('Tecfidera', 'humanities'),
('Tecfidera', 'Social Sciences'),
('Theophylline in Dextrose', 'Social Sciences'),
('TLB-Matrix', 'IT and economics'),
('TLB-Matrix', 'Natural Sciences and Technology'),
('Tortoise, radiated', 'humanities'),
('Tortoise, radiated', 'Natural Sciences and Technology'),
('Tortoise, radiated', 'Social Sciences'),
('Tropical buckeye butterfly', 'Natural Sciences and Technology'),
('Tsakos Energy Navigation Ltd', 'humanities'),
('Tsessebe', 'Social Sciences'),
('Two-toed sloth', 'humanities'),
('Two-toed sloth', 'Social Sciences'),
('Union Bankshares Corporation', 'social sciences'),
('Vancomycin Hydrochloride', 'IT and economics'),
('Vancomycin Hydrochloride', 'Natural Sciences and Technology'),
('Wallaby, agile', 'humanities'),
('Wallaby, agile', 'IT and economics'),
('WHITE LAVENDER AND MINT ANTIBACTERIAL MOISTURIZING HAND SP', 'IT and economics'),
('WHITE LAVENDER AND MINT ANTIBACTERIAL MOISTURIZING HAND SP', 'Natural Sciences and Technology'),
('White-eye, pale', 'Natural Sciences and Technology'),
('White-eye, pale', 'Social Sciences'),
('White-winged tern', 'humanities'),
('Wombat, common', 'humanities'),
('Wombat, common', 'IT and economics'),
('Wombat, southern hairy-nosed', 'humanities'),
('XEROSTOM', 'Natural Sciences and Technology'),
('XG Technology, Inc', 'it and economics');

-- --------------------------------------------------------

--
-- Table structure for table `Researcher`
--

CREATE TABLE `Researcher` (
  `Researcher_ID` int(11) NOT NULL,
  `First_Name` varchar(45) DEFAULT NULL,
  `Last_Name` varchar(45) DEFAULT NULL,
  `DOB` varchar(45) DEFAULT NULL,
  `Gender` varchar(45) DEFAULT NULL,
  `Org_Name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Researcher`
--

INSERT INTO `Researcher` (`Researcher_ID`, `First_Name`, `Last_Name`, `DOB`, `Gender`, `Org_Name`) VALUES
(1, 'Sara', 'Clowton', '1975-04-03', 'Female', 'Klein Inc'),
(2, 'Jesselyn', 'Cranke', '2000-04-25', 'Female', 'Rowe, Crist and Beier'),
(3, 'Micaela', 'Freke', '1985-04-20', 'Female', 'Robel-Hand'),
(4, 'Cristiano', 'Eustes', '1976-12-09', 'Male', 'Wilkinson-Maggio'),
(5, 'Lucais', 'Sawtell', '1996-02-27', 'Male', 'Brown, Rempel and Auer'),
(6, 'Mel', 'Borley', '1987-05-31', 'Male', 'Doyle Inc'),
(7, 'Jenica', 'Kirimaa', '1979-12-03', 'Female', 'Mills Inc'),
(8, 'Nadean', 'Weekley', '1987-11-27', 'Female', 'Mueller-Gerhold'),
(9, 'Steward', 'Mearing', '1982-01-28', 'Male', 'Parisian-Mann'),
(10, 'Dode', 'De Biaggi', '1986-04-17', 'Female', 'Legros-Gerhold'),
(11, 'Mohandis', 'Lucock', '1987-08-04', 'Male', 'Aufderhar Inc'),
(12, 'Kevyn', 'Widdowson', '1985-02-03', 'Female', 'Hammes, Friesen and Vandervort'),
(13, 'Athene', 'Aumerle', '1981-04-05', 'Female', 'Ortiz, Dietrich and Blanda'),
(14, 'Trish', 'De Gregario', '1995-10-09', 'Female', 'Cummerata-Bahringer'),
(15, 'Katherine', 'Trowsdale', '1989-10-25', 'Female', 'Morar-Streich'),
(16, 'Lewes', 'Pilkinton', '2000-11-04', 'Male', 'Mayert, Schoen and Cremin'),
(17, 'Sibelle', 'Wallwood', '1964-05-16', 'Female', 'Lesch-Kertzmann'),
(18, 'Lalo', 'Huie', '1963-09-07', 'Male', 'Bergstrom, Schoen and Feest'),
(19, 'Nikki', 'Rame', '1999-06-02', 'Female', 'Deckow and Sons'),
(20, 'Elora', 'Santen', '1976-09-29', 'Female', 'Walker and Sons'),
(21, 'Blancha', 'Comelini', '1970-05-09', 'Female', 'Marquardt-McGlynn'),
(22, 'Zelda', 'Steet', '1991-06-24', 'Female', 'Connelly LLC'),
(23, 'Ophelie', 'Borrow', '1968-05-01', 'Female', 'Johnston-Lemke'),
(24, 'Sampson', 'Rolstone', '1995-02-17', 'Male', 'O\'Kon LLC'),
(25, 'Willetta', 'Charlon', '1995-03-21', 'Female', 'Jones-Berge'),
(26, 'Haven', 'Jenicek', '1979-06-28', 'Male', 'Durgan, Homenick and Rowe'),
(27, 'Katrinka', 'Saenz', '1974-06-06', 'Female', 'Beatty-Carter'),
(28, 'Daniele', 'Ivanishchev', '1991-12-14', 'Female', 'Cummerata LLC'),
(29, 'Sam', 'Maslen', '1982-01-08', 'Female', 'Kuhn Inc'),
(30, 'Jerrie', 'Duggary', '1974-02-04', 'Female', 'Deckow LLC'),
(31, 'Blondie', 'Bemrose', '1975-05-21', 'Female', 'Beahan, Hessel and Trantow'),
(32, 'Brittaney', 'Raycroft', '1996-04-16', 'Female', 'Mueller-Abernathy'),
(33, 'Cirillo', 'Drohun', '2002-06-01', 'Male', 'Greenholt-Pollich'),
(34, 'Colet', 'Ebden', '1990-12-06', 'Male', 'Connelly-Douglas'),
(35, 'Augy', 'Stemp', '1968-11-11', 'Male', 'Dicki-Walker'),
(36, 'Karlis', 'Ferschke', '1979-08-05', 'Male', 'Glover Group'),
(37, 'Glynnis', 'Meaker', '2001-07-09', 'Female', 'Dickens-Daniel'),
(38, 'Steward', 'Criple', '1975-03-01', 'Male', 'Medhurst, Raynor and Koch'),
(39, 'Donella', 'Yoell', '1973-08-16', 'Female', 'Zboncak Group'),
(40, 'Sullivan', 'Wasiel', '1992-10-04', 'Male', 'Kessler Inc'),
(41, 'Babb', 'Mulliner', '2002-04-02', 'Female', 'Klein Inc'),
(42, 'Garret', 'Cahalan', '1973-10-30', 'Male', 'Rowe, Crist and Beier'),
(43, 'Clarie', 'Thackham', '1990-09-03', 'Female', 'Robel-Hand'),
(44, 'Sallyann', 'Kondratovich', '1996-04-13', 'Female', 'Wilkinson-Maggio'),
(45, 'Matt', 'McMaster', '2002-05-17', 'Male', 'Brown, Rempel and Auer'),
(46, 'Alexi', 'O\'Hern', '1967-12-25', 'Female', 'Doyle Inc'),
(47, 'Gunter', 'Minards', '1964-02-17', 'Male', 'Mills Inc'),
(48, 'Cristy', 'Branney', '2000-04-11', 'Female', 'Mueller-Gerhold'),
(49, 'Ekaterina', 'Dodworth', '1963-07-25', 'Female', 'Parisian-Mann'),
(50, 'Man', 'Dobinson', '1967-09-09', 'Male', 'Legros-Gerhold'),
(51, 'Wilie', 'Yoxen', '1965-07-06', 'Female', 'Aufderhar Inc'),
(52, 'Kinsley', 'Sego', '1984-05-27', 'Male', 'Hammes, Friesen and Vandervort'),
(53, 'Andrea', 'Lamberton', '1982-11-02', 'Male', 'Ortiz, Dietrich and Blanda'),
(54, 'Kizzie', 'Gervaise', '1996-04-22', 'Female', 'Cummerata-Bahringer'),
(55, 'Jerrold', 'Otham', '1991-11-05', 'Male', 'Morar-Streich'),
(56, 'Arley', 'Seddon', '1985-09-04', 'Male', 'Mayert, Schoen and Cremin'),
(57, 'Maiga', 'Bernardotti', '1971-09-20', 'Female', 'Lesch-Kertzmann'),
(58, 'Caralie', 'Parratt', '2000-01-24', 'Female', 'Bergstrom, Schoen and Feest'),
(59, 'Normand', 'Southernwood', '1998-02-04', 'Male', 'Deckow and Sons'),
(60, 'Jack', 'Pakenham', '1972-01-06', 'Male', 'Walker and Sons'),
(61, 'Miltie', 'Hynes', '2000-08-02', 'Male', 'Marquardt-McGlynn'),
(62, 'Ailey', 'Wardroper', '1964-03-29', 'Female', 'Connelly LLC'),
(63, 'Sula', 'Manton', '1967-04-24', 'Female', 'Johnston-Lemke'),
(64, 'Thomasina', 'Grealy', '1990-11-19', 'Female', 'O\'Kon LLC'),
(65, 'Trace', 'Vant', '1995-05-17', 'Male', 'Jones-Berge'),
(66, 'Kalil', 'Huddles', '1987-02-04', 'Male', 'Durgan, Homenick and Rowe'),
(67, 'Rianon', 'Heinish', '1991-03-25', 'Female', 'Beatty-Carter'),
(68, 'Ruttger', 'Defries', '1991-03-15', 'Male', 'Cummerata LLC'),
(69, 'Reena', 'Batting', '1972-09-02', 'Female', 'Kuhn Inc'),
(70, 'Pavlov', 'Soggee', '1983-10-09', 'Male', 'Deckow LLC'),
(71, 'Guilbert', 'Oselton', '1992-10-02', 'Male', 'Beahan, Hessel and Trantow'),
(72, 'Sybyl', 'Mac Giolla Pheadair', '1972-06-25', 'Female', 'Mueller-Abernathy'),
(73, 'Elsie', 'Harefoot', '2001-04-19', 'Female', 'Greenholt-Pollich'),
(74, 'Corrine', 'Ible', '1982-10-31', 'Female', 'Connelly-Douglas'),
(75, 'Bird', 'Patnelli', '1993-03-28', 'Female', 'Dicki-Walker'),
(76, 'Vina', 'Bougen', '1977-02-06', 'Female', 'Glover Group'),
(77, 'Nicola', 'Jeppensen', '1994-02-12', 'Male', 'Dickens-Daniel'),
(78, 'Ellissa', 'Kilmary', '1979-12-16', 'Female', 'Medhurst, Raynor and Koch'),
(79, 'Rozelle', 'Dunnico', '1978-06-09', 'Female', 'Zboncak Group'),
(80, 'Caroline', 'Boagey', '1982-06-02', 'Female', 'Kessler Inc'),
(81, 'Bevan', 'Wickendon', '2001-09-04', 'Male', 'Klein Inc'),
(82, 'Herbert', 'Placide', '1967-06-25', 'Male', 'Rowe, Crist and Beier'),
(83, 'Kilian', 'Fonte', '1991-10-25', 'Male', 'Robel-Hand'),
(84, 'Elihu', 'Mousdall', '2002-07-07', 'Male', 'Wilkinson-Maggio'),
(85, 'Geri', 'Bellwood', '1967-06-21', 'Female', 'Brown, Rempel and Auer'),
(86, 'Nicol', 'Sergean', '1989-01-17', 'Male', 'Doyle Inc'),
(87, 'Nerissa', 'Rising', '1991-08-30', 'Female', 'Mills Inc'),
(88, 'Reggi', 'Marklew', '1965-11-13', 'Female', 'Mueller-Gerhold'),
(89, 'Diego', 'Unworth', '1976-10-10', 'Male', 'Parisian-Mann'),
(90, 'Roscoe', 'Fritchley', '1977-04-06', 'Male', 'Legros-Gerhold'),
(91, 'Jo-anne', 'Braiden', '1975-03-13', 'Female', 'Aufderhar Inc'),
(92, 'Leon', 'Littlemore', '1979-04-28', 'Male', 'Hammes, Friesen and Vandervort'),
(93, 'Nathalie', 'Hariot', '1982-09-16', 'Female', 'Ortiz, Dietrich and Blanda'),
(94, 'Anthony', 'Gorick', '1977-12-15', 'Male', 'Cummerata-Bahringer'),
(95, 'Brade', 'Kinkaid', '1965-03-08', 'Male', 'Morar-Streich'),
(96, 'Joline', 'Alp', '2000-02-12', 'Female', 'Mayert, Schoen and Cremin'),
(97, 'Rockie', 'Griston', '1986-10-07', 'Male', 'Lesch-Kertzmann'),
(98, 'Jo', 'O\' Hogan', '1975-09-17', 'Female', 'Bergstrom, Schoen and Feest'),
(99, 'Manny', 'Emney', '1978-09-16', 'Male', 'Deckow and Sons'),
(100, 'Ferdie', 'Simonetto', '1981-03-07', 'Male', 'Walker and Sons'),
(101, 'Karoly', 'Stuckey', '1978-11-01', 'Male', 'Marquardt-McGlynn');

-- --------------------------------------------------------

--
-- Table structure for table `Scientific_Fields`
--

CREATE TABLE `Scientific_Fields` (
  `field` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Scientific_Fields`
--

INSERT INTO `Scientific_Fields` (`field`) VALUES
('Humanities'),
('IT and Economics'),
('Natural Sciences and Technology'),
('Social Sciences');

-- --------------------------------------------------------

--
-- Table structure for table `Telephone_Numbers`
--

CREATE TABLE `Telephone_Numbers` (
  `Telephone_Number` varchar(20) NOT NULL,
  `Org_Name` varchar(100) NOT NULL,
  `type` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Telephone_Numbers`
--

INSERT INTO `Telephone_Numbers` (`Telephone_Number`, `Org_Name`, `type`) VALUES
('102-920-7838', 'Lesch-Kertzmann', 'phone  '),
('111-597-0945', 'Doyle Inc', 'phone  '),
('118-623-8748', 'Wilkinson-Maggio', 'fax'),
('137-297-8358', 'Morar-Streich', 'phone  '),
('140-236-5554', 'Mills Inc', 'phone  '),
('176-872-9737', 'O\'Kon LLC', 'phone  '),
('184-187-3092', 'Klein Inc', 'fax'),
('186-742-8649', 'Cummerata-Bahringer', 'fax'),
('188-565-8905', 'Deckow and Sons', 'phone  '),
('194-598-6585', 'Jones-Berge', 'fax'),
('212-674-8678', 'Hammes, Friesen and Vandervort', 'phone  '),
('214-346-6211', 'Hammes, Friesen and Vandervort', 'fax'),
('224-266-9863', 'Deckow and Sons', 'fax'),
('224-268-9409', 'Johnston-Lemke', 'phone  '),
('243-865-7093', 'O\'Kon LLC', 'fax'),
('253-473-6021', 'Brown, Rempel and Auer', 'fax'),
('254-978-9426', 'Mills Inc', 'phone  '),
('255-939-1250', 'Brown, Rempel and Auer', 'phone  '),
('268-590-6653', 'Jones-Berge', 'phone  '),
('268-639-3846', 'Bergstrom, Schoen and Feest', 'phone  '),
('275-933-9840', 'Mayert, Schoen and Cremin', 'phone  '),
('281-934-8852', 'Wilkinson-Maggio', 'fax'),
('287-847-8047', 'Klein Inc', 'fax'),
('289-879-6848', 'Morar-Streich', 'phone  '),
('291-349-1210', 'Marquardt-McGlynn', 'phone  '),
('302-490-9982', 'Marquardt-McGlynn', 'fax'),
('305-182-1355', 'Connelly LLC', 'fax'),
('317-795-6023', 'Deckow and Sons', 'fax'),
('341-439-7776', 'Doyle Inc', 'fax'),
('344-297-9153', 'Legros-Gerhold', 'fax'),
('344-638-8689', 'Johnston-Lemke', 'fax'),
('347-252-4820', 'Hammes, Friesen and Vandervort', 'fax'),
('349-584-8171', 'Hammes, Friesen and Vandervort', 'fax'),
('372-947-9947', 'Mueller-Gerhold', 'phone  '),
('376-121-9158', 'Doyle Inc', 'phone  '),
('377-240-8012', 'Mueller-Gerhold', 'phone  '),
('379-185-1737', 'Legros-Gerhold', 'phone  '),
('381-331-1025', 'Morar-Streich', 'fax'),
('384-366-3931', 'Doyle Inc', 'phone  '),
('435-888-1044', 'Rowe, Crist and Beier', 'fax'),
('444-971-9246', 'Brown, Rempel and Auer', 'fax'),
('449-146-4883', 'Legros-Gerhold', 'phone  '),
('456-596-7014', 'Lesch-Kertzmann', 'fax'),
('458-310-0832', 'Mayert, Schoen and Cremin', 'fax'),
('464-462-3623', 'Mills Inc', 'fax'),
('468-427-4633', 'Wilkinson-Maggio', 'phone  '),
('476-223-3679', 'Mills Inc', 'fax'),
('493-752-5552', 'Parisian-Mann', 'fax'),
('494-208-5178', 'Ortiz, Dietrich and Blanda', 'phone  '),
('505-129-9133', 'Klein Inc', 'phone  '),
('525-265-9022', 'Legros-Gerhold', 'phone  '),
('532-352-7247', 'Mayert, Schoen and Cremin', 'phone  '),
('547-239-0402', 'Bergstrom, Schoen and Feest', 'fax'),
('547-255-1919', 'Rowe, Crist and Beier', 'phone'),
('552-423-5020', 'Parisian-Mann', 'phone  '),
('553-682-7729', 'Ortiz, Dietrich and Blanda', 'phone  '),
('555-896-2958', 'Ortiz, Dietrich and Blanda', 'fax'),
('560-185-5192', 'Lesch-Kertzmann', 'fax'),
('572-591-7996', 'Robel-Hand', 'phone  '),
('582-283-9524', 'Mills Inc', 'phone  '),
('604-819-2791', 'Bergstrom, Schoen and Feest', 'fax'),
('629-780-9964', 'Aufderhar Inc', 'fax'),
('643-370-0093', 'Morar-Streich', 'fax'),
('652-502-9908', 'Brown, Rempel and Auer', 'phone  '),
('654-396-3996', 'Aufderhar Inc', 'fax'),
('655-778-3828', 'Aufderhar Inc', 'phone  '),
('660-770-9306', 'Aufderhar Inc', 'fax'),
('665-758-6346', 'Lesch-Kertzmann', 'fax'),
('684-708-3846', 'Ortiz, Dietrich and Blanda', 'fax'),
('686-319-8678', 'Lesch-Kertzmann', 'phone  '),
('692-448-6753', 'Parisian-Mann', 'fax'),
('702-945-1700', 'Brown, Rempel and Auer', 'fax'),
('711-387-9632', 'Mueller-Gerhold', 'phone  '),
('718-412-4147', 'Parisian-Mann', 'phone  '),
('718-795-4927', 'Marquardt-McGlynn', 'fax'),
('731-959-7865', 'Cummerata-Bahringer', 'fax'),
('735-922-9767', 'Morar-Streich', 'fax'),
('736-980-4621', 'Walker and Sons', 'fax'),
('740-219-2732', 'Cummerata-Bahringer', 'fax'),
('744-440-2713', 'Ortiz, Dietrich and Blanda', 'fax'),
('748-408-4678', 'Mueller-Gerhold', 'fax'),
('749-458-2320', 'Wilkinson-Maggio', 'phone  '),
('758-289-5141', 'Walker and Sons', 'phone  '),
('759-611-4895', 'Wilkinson-Maggio', 'phone  '),
('759-659-9319', 'Cummerata-Bahringer', 'phone  '),
('790-603-7594', 'Connelly LLC', 'phone  '),
('800-640-8949', 'Durgan, Homenick and Rowe', 'phone  '),
('810-617-0548', 'Cummerata-Bahringer', 'phone  '),
('827-228-6272', 'Robel-Hand', 'phone  '),
('832-449-3538', 'Brown, Rempel and Auer', 'phone  '),
('864-880-5000', 'Doyle Inc', 'fax'),
('867-886-0141', 'Walker and Sons', 'fax'),
('877-639-9703', 'Mayert, Schoen and Cremin', 'fax'),
('889-230-8760', 'Hammes, Friesen and Vandervort', 'phone  '),
('890-453-4689', 'Mayert, Schoen and Cremin', 'fax'),
('939-471-8099', 'Aufderhar Inc', 'phone  '),
('942-920-6646', 'Durgan, Homenick and Rowe', 'fax'),
('948-525-5113', 'Mueller-Gerhold', 'fax'),
('953-876-3409', 'Legros-Gerhold', 'fax'),
('970-340-0254', 'Parisian-Mann', 'phone  ');

-- --------------------------------------------------------

--
-- Table structure for table `WorksOn`
--

CREATE TABLE `WorksOn` (
  `Researcher_ID` int(11) NOT NULL,
  `Project_Title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `WorksOn`
--

INSERT INTO `WorksOn` (`Researcher_ID`, `Project_Title`) VALUES
(1, 'Etomidate'),
(1, 'LACTULOSE'),
(1, 'METHADONE HYDROCHLORIDE'),
(1, 'Softlips Peach Mango'),
(1, 'Tecfidera'),
(1, 'TLB-Matrix'),
(1, 'XEROSTOM'),
(2, 'Cefepime'),
(2, 'Halcion'),
(2, 'Leeks'),
(2, 'Levofloxacin'),
(2, 'Proparacaine Hydrochloride'),
(2, 'Stila Hydrating Primer Oil-Free SPF 30'),
(2, 'WHITE LAVENDER AND MINT ANTIBACTERIAL MOISTURIZING HAND SP'),
(11, 'Enalapril Maleate'),
(11, 'Fanapt'),
(11, 'Surmontil'),
(11, 'Theophylline in Dextrose'),
(12, 'Arthritazin Pain Relieving'),
(12, 'Cherry Birch Pollen'),
(12, 'Detrol LA'),
(12, 'Endometrin'),
(12, 'Tsakos Energy Navigation Ltd'),
(12, 'Union Bankshares Corporation'),
(13, 'Ciprofloxacin'),
(13, 'Golub Capital BDC, Inc.'),
(13, 'IF Bancorp, Inc.'),
(13, 'NovoLog'),
(13, 'Olay Fresh Effects Soak Up the Sun Protection'),
(13, 'PREP (AND) PRIME CC COLOR CORRECT SPF30 BROAD SPECTRUM'),
(41, 'Blesbok'),
(41, 'Etomidate'),
(41, 'honey bee hymenoptera venom'),
(41, 'LACTULOSE'),
(41, 'METHADONE HYDROCHLORIDE'),
(41, 'Nike, Inc.'),
(41, 'Pine siskin'),
(41, 'Softlips Peach Mango'),
(41, 'Tecfidera'),
(41, 'TLB-Matrix'),
(41, 'Vancomycin Hydrochloride'),
(41, 'XEROSTOM'),
(42, 'Cefepime'),
(42, 'Clindamycin in 5 Percent Dextrose'),
(42, 'Halcion'),
(42, 'Leeks'),
(42, 'Levofloxacin'),
(42, 'Pain Relief PM'),
(42, 'Proparacaine Hydrochloride'),
(42, 'Red brocket'),
(42, 'Stila Hydrating Primer Oil-Free SPF 30'),
(42, 'Tortoise, radiated'),
(42, 'WHITE LAVENDER AND MINT ANTIBACTERIAL MOISTURIZING HAND SP'),
(43, 'Deer, white-tailed'),
(43, 'Goose, snow'),
(44, 'Bandicoot, southern brown'),
(44, 'Wombat, common'),
(45, 'Greater blue-eared starling'),
(45, 'Lion, asian'),
(46, 'White-winged tern'),
(47, 'European wild cat'),
(47, 'Plains zebra'),
(48, 'Tropical buckeye butterfly'),
(49, 'Bontebok'),
(49, 'Jaguar'),
(50, 'Kiskadee, great'),
(50, 'Pigeon, wood'),
(51, 'Cohu, Inc.'),
(51, 'Enalapril Maleate'),
(51, 'Fanapt'),
(51, 'Great kiskadee'),
(51, 'Hornbill, southern ground'),
(51, 'Lydall, Inc.'),
(51, 'RXi Pharmaceuticals Corporation'),
(51, 'Surmontil'),
(51, 'Theophylline in Dextrose'),
(51, 'XG Technology, Inc'),
(52, 'Arthritazin Pain Relieving'),
(52, 'Cherry Birch Pollen'),
(52, 'Detrol LA'),
(52, 'Endometrin'),
(52, 'Tsakos Energy Navigation Ltd'),
(52, 'Union Bankshares Corporation'),
(52, 'Wild boar'),
(53, 'Asian foreset tortoise'),
(53, 'Ciprofloxacin'),
(53, 'Golub Capital BDC, Inc.'),
(53, 'IF Bancorp, Inc.'),
(53, 'NovoLog'),
(53, 'Olay Fresh Effects Soak Up the Sun Protection'),
(53, 'PREP (AND) PRIME CC COLOR CORRECT SPF30 BROAD SPECTRUM'),
(54, 'White-eye, pale'),
(55, 'Antelope ground squirrel'),
(56, 'Indian jackal'),
(57, 'Red sheep'),
(58, 'Francolin, swainson\'s'),
(59, 'Wombat, southern hairy-nosed'),
(60, 'Parakeet, rose-ringed'),
(61, 'Native cat'),
(62, 'Wallaby, agile'),
(63, 'Snake, tiger'),
(64, 'Red lava crab'),
(65, 'American badger'),
(66, 'Tsessebe'),
(67, 'California sea lion'),
(68, 'Green vine snake'),
(69, 'Pintail, white-cheeked'),
(70, 'Deer, mule'),
(71, 'Dove, mourning collared'),
(72, 'Red phalarope'),
(73, 'Legaan, ground'),
(74, 'Starfish, crown of thorns'),
(75, 'Phalarope, red'),
(76, 'African ground squirrel (unidentified)'),
(77, 'Two-toed sloth'),
(78, 'Cormorant, king'),
(79, 'European beaver'),
(80, 'Red and blue macaw'),
(81, 'Blesbok'),
(81, 'Etomidate'),
(81, 'honey bee hymenoptera venom'),
(81, 'LACTULOSE'),
(81, 'METHADONE HYDROCHLORIDE'),
(81, 'Nike, Inc.'),
(81, 'Pine siskin'),
(81, 'Softlips Peach Mango'),
(81, 'Tecfidera'),
(81, 'TLB-Matrix'),
(81, 'Vancomycin Hydrochloride'),
(81, 'XEROSTOM'),
(82, 'Cefepime'),
(82, 'Clindamycin in 5 Percent Dextrose'),
(82, 'Halcion'),
(82, 'Leeks'),
(82, 'Levofloxacin'),
(82, 'Pain Relief PM'),
(82, 'Proparacaine Hydrochloride'),
(82, 'Red brocket'),
(82, 'Stila Hydrating Primer Oil-Free SPF 30'),
(82, 'Tortoise, radiated'),
(82, 'WHITE LAVENDER AND MINT ANTIBACTERIAL MOISTURIZING HAND SP'),
(83, 'Deer, white-tailed'),
(83, 'Goose, snow'),
(84, 'Bandicoot, southern brown'),
(84, 'Wombat, common'),
(85, 'Greater blue-eared starling'),
(85, 'Lion, asian'),
(86, 'White-winged tern'),
(87, 'European wild cat'),
(87, 'Plains zebra'),
(88, 'Tropical buckeye butterfly'),
(89, 'Bontebok'),
(89, 'Jaguar'),
(90, 'Kiskadee, great'),
(90, 'Pigeon, wood'),
(91, 'Cohu, Inc.'),
(91, 'Enalapril Maleate'),
(91, 'Fanapt'),
(91, 'Great kiskadee'),
(91, 'Hornbill, southern ground'),
(91, 'Lydall, Inc.'),
(91, 'RXi Pharmaceuticals Corporation'),
(91, 'Surmontil'),
(91, 'Theophylline in Dextrose'),
(91, 'XG Technology, Inc'),
(92, 'Arthritazin Pain Relieving'),
(92, 'Cherry Birch Pollen'),
(92, 'Detrol LA'),
(92, 'Endometrin'),
(92, 'Tsakos Energy Navigation Ltd'),
(92, 'Union Bankshares Corporation'),
(92, 'Wild boar'),
(93, 'Asian foreset tortoise'),
(93, 'Ciprofloxacin'),
(93, 'Golub Capital BDC, Inc.'),
(93, 'IF Bancorp, Inc.'),
(93, 'NovoLog'),
(93, 'Olay Fresh Effects Soak Up the Sun Protection'),
(93, 'PREP (AND) PRIME CC COLOR CORRECT SPF30 BROAD SPECTRUM'),
(94, 'White-eye, pale'),
(95, 'Antelope ground squirrel'),
(96, 'Indian jackal'),
(97, 'Red sheep'),
(98, 'Francolin, swainson\'s'),
(99, 'Wombat, southern hairy-nosed'),
(100, 'Parakeet, rose-ringed'),
(101, 'Native cat');

-- --------------------------------------------------------

--
-- Structure for view `projects_per_organizations_and_per_programs`
--
DROP TABLE IF EXISTS `projects_per_organizations_and_per_programs`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `databasefordummmies`.`projects_per_organizations_and_per_programs`  AS   (select `org`.`org_name` AS `organization`,`prog`.`prog_name` AS `program`,`p`.`project_title` AS `project_title` from (((`databasefordummmies`.`organizations` `org` join `databasefordummmies`.`project` `p` on(`p`.`org_name` = `org`.`org_name`)) join `databasefordummmies`.`project` `p1` on(`p1`.`project_title` = `p`.`project_title`)) join `databasefordummmies`.`program` `prog` on(`prog`.`prog_name` = `p1`.`prog_name`)) order by `org`.`org_name`)  ;

-- --------------------------------------------------------

--
-- Structure for view `projects_per_researchers`
--
DROP TABLE IF EXISTS `projects_per_researchers`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `databasefordummmies`.`projects_per_researchers`  AS   (select concat(`r`.`First_Name`,' ',`r`.`Last_Name`) AS `researcher_name`,concat(`r2`.`First_Name`,' ',`r2`.`Last_Name`) AS `supervisor_name`,`p1`.`project_title` AS `project_title` from ((((`databasefordummmies`.`researcher` `r` join `databasefordummmies`.`workson` `w` on(`w`.`Researcher_ID` = `r`.`Researcher_ID`)) join `databasefordummmies`.`project` `p1` on(`p1`.`project_title` = `w`.`Project_Title`)) join `databasefordummmies`.`project` `p2` on(`p2`.`project_title` = `w`.`Project_Title`)) join `databasefordummmies`.`researcher` `r2` on(`r2`.`Researcher_ID` = `p2`.`supervisor_id`)))  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Deliverable`
--
ALTER TABLE `Deliverable`
  ADD PRIMARY KEY (`Deliverable_Title`,`Project_Title`),
  ADD KEY `project_title` (`Project_Title`);

--
-- Indexes for table `executive`
--
ALTER TABLE `executive`
  ADD PRIMARY KEY (`exec_id`);

--
-- Indexes for table `Is_Company`
--
ALTER TABLE `Is_Company`
  ADD PRIMARY KEY (`Org_Name`);

--
-- Indexes for table `Is_ResearchCenter`
--
ALTER TABLE `Is_ResearchCenter`
  ADD KEY `Org_Name_ResearchCenter` (`Org_Name`);

--
-- Indexes for table `Is_University`
--
ALTER TABLE `Is_University`
  ADD PRIMARY KEY (`Org_Name`);

--
-- Indexes for table `organizations`
--
ALTER TABLE `organizations`
  ADD PRIMARY KEY (`org_name`);

--
-- Indexes for table `program`
--
ALTER TABLE `program`
  ADD PRIMARY KEY (`prog_name`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`project_title`),
  ADD KEY `org_name` (`org_name`),
  ADD KEY `prog_name` (`prog_name`),
  ADD KEY `Exec_ID` (`exec_id`),
  ADD KEY `eval_id` (`evaluator_id`),
  ADD KEY `super_id` (`supervisor_id`);

--
-- Indexes for table `Project_Field`
--
ALTER TABLE `Project_Field`
  ADD PRIMARY KEY (`Project_Title`,`Field`),
  ADD KEY `field` (`Field`);

--
-- Indexes for table `Researcher`
--
ALTER TABLE `Researcher`
  ADD PRIMARY KEY (`Researcher_ID`),
  ADD KEY `Org_Name1` (`Org_Name`);

--
-- Indexes for table `Scientific_Fields`
--
ALTER TABLE `Scientific_Fields`
  ADD PRIMARY KEY (`field`);

--
-- Indexes for table `Telephone_Numbers`
--
ALTER TABLE `Telephone_Numbers`
  ADD PRIMARY KEY (`Telephone_Number`,`Org_Name`),
  ADD KEY `Org_Name2` (`Org_Name`);

--
-- Indexes for table `WorksOn`
--
ALTER TABLE `WorksOn`
  ADD PRIMARY KEY (`Researcher_ID`,`Project_Title`),
  ADD KEY `project_title2` (`Project_Title`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Researcher`
--
ALTER TABLE `Researcher`
  MODIFY `Researcher_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Deliverable`
--
ALTER TABLE `Deliverable`
  ADD CONSTRAINT `project_title` FOREIGN KEY (`Project_Title`) REFERENCES `project` (`project_title`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Is_Company`
--
ALTER TABLE `Is_Company`
  ADD CONSTRAINT `Org_Name_IsCompany` FOREIGN KEY (`Org_Name`) REFERENCES `organizations` (`org_name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Is_ResearchCenter`
--
ALTER TABLE `Is_ResearchCenter`
  ADD CONSTRAINT `Org_Name_ResearchCenter` FOREIGN KEY (`Org_Name`) REFERENCES `organizations` (`org_name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Is_University`
--
ALTER TABLE `Is_University`
  ADD CONSTRAINT `Org_Name_IsUni` FOREIGN KEY (`Org_Name`) REFERENCES `organizations` (`org_name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `Exec_ID` FOREIGN KEY (`exec_id`) REFERENCES `executive` (`exec_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `eval_id` FOREIGN KEY (`evaluator_id`) REFERENCES `Researcher` (`Researcher_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `org_name` FOREIGN KEY (`org_name`) REFERENCES `organizations` (`org_name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `prog_name` FOREIGN KEY (`prog_name`) REFERENCES `program` (`prog_name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `super_id` FOREIGN KEY (`supervisor_id`) REFERENCES `Researcher` (`Researcher_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Project_Field`
--
ALTER TABLE `Project_Field`
  ADD CONSTRAINT `field` FOREIGN KEY (`Field`) REFERENCES `Scientific_Fields` (`field`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `project_title1` FOREIGN KEY (`Project_Title`) REFERENCES `project` (`project_title`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Researcher`
--
ALTER TABLE `Researcher`
  ADD CONSTRAINT `Org_Name1` FOREIGN KEY (`Org_Name`) REFERENCES `organizations` (`org_name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Telephone_Numbers`
--
ALTER TABLE `Telephone_Numbers`
  ADD CONSTRAINT `Org_Name2` FOREIGN KEY (`Org_Name`) REFERENCES `organizations` (`org_name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `WorksOn`
--
ALTER TABLE `WorksOn`
  ADD CONSTRAINT `project_title2` FOREIGN KEY (`Project_Title`) REFERENCES `project` (`project_title`),
  ADD CONSTRAINT `researcher_id1` FOREIGN KEY (`Researcher_ID`) REFERENCES `Researcher` (`Researcher_ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
