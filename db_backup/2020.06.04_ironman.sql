-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2020 at 10:52 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ironman`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `categoryname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categorydescription` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `categoryimage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default_category.jpg',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categoryname`, `categorydescription`, `user_id`, `categoryimage`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Smart Watch', 'All types of smart watch', 1, '1.jpg', '2020-06-02 20:19:25', '2020-06-03 20:17:02', NULL),
(2, 'HeadPhone', 'All types of Headphone and Headsets', 1, '2.jpg', '2020-06-02 20:19:33', '2020-06-03 20:14:07', NULL),
(3, 'Wallet', 'Good Quality Leather', 1, '3.jpg', '2020-06-03 20:20:27', '2020-06-03 20:20:28', NULL),
(4, 'Speaker', 'All types of bluetooth and jack speaker system', 1, '4.jpg', '2020-06-03 20:21:09', '2020-06-03 20:21:09', NULL),
(5, 'Power Bank', 'Different brand and different capacity power bank', 1, '5.jpg', '2020-06-03 20:21:42', '2020-06-03 20:21:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `firstname`, `lastname`, `email_address`, `mobile_number`, `city`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Darien', 'Labadie', 'xgleichner@example.com', '584.930.7843 x1834', 'West Wellingtonview', '1988-11-01 20:18:58', NULL, NULL),
(2, 'Muriel', 'Wintheiser', 'hugh.conn@example.net', '1-339-455-5988 x5599', 'Hillsmouth', '2019-03-24 06:15:57', NULL, NULL),
(3, 'Patricia', 'Schneider', 'gsporer@example.net', '(821) 647-6674 x65061', 'Boehmside', '2005-12-16 18:43:34', NULL, NULL),
(4, 'Brody', 'Kub', 'bashirian.travon@example.org', '283-543-6858', 'Rebecashire', '1983-01-31 00:08:08', NULL, NULL),
(5, 'Roxane', 'Luettgen', 'chandler70@example.com', '(930) 585-8138 x73149', 'South Maximilian', '2012-10-21 03:23:08', NULL, NULL),
(6, 'Cedrick', 'Macejkovic', 'trycia79@example.net', '1-681-773-6476 x09649', 'Christiansenfort', '1990-06-18 20:10:10', NULL, NULL),
(7, 'Karley', 'Schinner', 'larkin.berenice@example.com', '(703) 336-1924 x00125', 'Lake Mafaldashire', '1972-09-25 20:35:14', NULL, NULL),
(8, 'Marilyne', 'Koelpin', 'deonte.prosacco@example.net', '628.977.5324', 'Tylerport', '1997-04-27 10:10:24', NULL, NULL),
(9, 'Marcia', 'Doyle', 'wkrajcik@example.com', '(267) 861-4373 x79795', 'D\'Amoreside', '1997-04-05 14:57:29', NULL, NULL),
(10, 'Melvin', 'Hoppe', 'heller.lizzie@example.net', '672-714-3819', 'East Jewell', '2014-06-26 02:13:38', NULL, NULL),
(11, 'Cornelius', 'Gislason', 'roselyn39@example.org', '732-235-2407 x114', 'Schummburgh', '2003-09-27 00:12:36', NULL, NULL),
(12, 'Aaron', 'Walker', 'brown.shirley@example.net', '(206) 557-5217', 'Mertzstad', '2017-04-26 15:57:34', NULL, NULL),
(13, 'Tyreek', 'Reichert', 'maureen.gusikowski@example.org', '610.974.0348 x39475', 'Jeffchester', '2002-10-03 03:14:08', NULL, NULL),
(14, 'Monique', 'Gleichner', 'gideon.auer@example.net', '1-906-844-4189', 'South Lulu', '1983-02-04 11:13:16', NULL, NULL),
(15, 'Lora', 'Turner', 'rylee.zieme@example.com', '1-562-235-3486', 'Port Johanmouth', '2005-03-09 05:48:59', NULL, NULL),
(16, 'Mable', 'Mitchell', 'pschaden@example.com', '(513) 926-3351 x744', 'New Hazelmouth', '1976-09-25 07:23:40', NULL, NULL),
(17, 'Hassie', 'Torphy', 'collier.ward@example.com', '1-370-364-1796', 'McLaughlinmouth', '1974-01-30 14:41:22', NULL, NULL),
(18, 'Travon', 'Wolf', 'tessie.bogisich@example.com', '1-348-393-2697', 'North Naomimouth', '2016-04-18 18:32:53', NULL, NULL),
(19, 'Dion', 'Cummings', 'johns.jose@example.com', '498.817.5324 x0181', 'West Miracleside', '1985-04-20 11:24:54', NULL, NULL),
(20, 'Ardith', 'Heathcote', 'moen.ettie@example.org', '+18526427734', 'Joycestad', '1972-05-10 13:56:57', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(17, '2014_10_12_000000_create_users_table', 1),
(18, '2014_10_12_100000_create_password_resets_table', 1),
(19, '2019_08_19_000000_create_failed_jobs_table', 1),
(20, '2020_03_30_095516_create_todos_table', 1),
(21, '2020_04_08_005758_create_categories_table', 1),
(22, '2020_04_17_185613_create_contacts_table', 1),
(23, '2020_05_20_233702_create_products_table', 1),
(24, '2020_06_04_004904_create_testimonials_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_breif_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_long_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` double(8,2) NOT NULL,
  `product_stock` int(10) UNSIGNED NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default_product.jpg',
  `additional_info` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `product_breif_description`, `product_long_description`, `product_code`, `product_price`, `product_stock`, `product_image`, `additional_info`, `category_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Xiaomi A1915 Amazfit Bip Lite Touch Bluetooth Smart Watch Black (Global Version)', 'Model: A1915 Amazfit Bip Lite (Global Version)\r\nPPG heart-rate & 3-axis acceleration sensor\r\nLightweight smartwatch\r\n45-day Battery Life\r\nSwim Proof with 3 ATM', 'Xiaomi Amazfit Bip Lite Smart Watch is comes with Global Version. This smart watch is Fit Longer which powered for 1.5 month to keep up with your active lifestyle. That save the trouble of frequent charging with the whopping 45 days battery life on a single charge to keep up. And also. if this watch use only for steps counting and sleep monitoring on, the watch can last up to 4 months.The watch is Swim Proof with 3 ATM, the watch can resist to any of your daily activities and can even be worn while swimming (up to 30 meters’ water pressure). This Smart watch is comes with Ultra Lightweight and comfortable and the weight is about 32g, that including a highly stretchy and light strap make the watch comfortable to wear day & night and during sports. This Smart watch\'s display is built with Transflective Screen, Readable Under Intense Sunlight with the 1.28‘’ reflective always-on display, your health & sports data can be seen clearly even under bright sunlight by simply raising your hand. In this smart watch, the Corning Gorilla glass and anti-fingerprint coating make it scratch resistant and easy to keep clean.', 'IR: 1001', 4200.00, 5, '1.jpg', 'Display	- 1.28-inchAlways-On display,\r\n- Reflective 8 Color TFT\r\n- Resolution: 176x176\r\n- Corning Gorilla 3 reinforced glass\r\n- Anti-fingerprint coating\r\nBattery	- Battery200mAh lithium-polymer battery\r\n\r\n- Battery life:\r\nUsage time: Up to 45 days in a typical use scenario\r\nStandby time: Up to 120 days\r\n- Charging time: ~ 2.5 hours\r\nConnectivity	Bluetooth 4.1 BLE\r\nMaterial	Wristband type and material: Quick release, silicone\r\nWatch body material: Polycarbonate casing\r\nSpecialFeatures	Accessories: USB charger and user manual\r\nSensors: PPG heart-rate sensor3-axis acceleration sensor\r\nWaterproof grade: 3 ATM (up to 30 meters water depth)\r\nDial diameter: 43mm\r\nWristband width: 20mm\r\nWristband length: 11 + 8.5cm\r\nAPP: Amazfit APPIOS: Apple Music, Spotify, SoundCloud\r\nSupported devices: Devices with Android 4.4 or iOS 9.0 and above\r\nExterior\r\nWeight	32g (including strap)\r\nColor	Balck', 1, '2020-06-03 20:36:02', '2020-06-03 20:36:02', NULL),
(2, 'Xiaomi Amazfit A1818 Verge Lite Touch Bluetooth Gray Smart Watch (Global Version)', 'Model: Amazfit A1818 Verge (Global Version)\r\n1.3-inch AMOLED display with a panoramic view\r\n20-day Battery Life\r\nCustomized Vibrations\r\nSmart Notifications', 'Xiaomi Amazfit Verge Lite Smart Watch is comes with Global Version. This smart watch has AMOLED Display & 20-day Battery Life. In this smart watch, The display has always been a crucial part of any smartwatch. That\'s why the AMAZFIT Verge Lite features a 1.3-inch AMOLED display with a panoramic view of all important information, and the lively colors deliver a crystal-clear viewing experience. The Smart watch has low-power consumption sensors and an optimized algorithm, which enable a 20-day1 battery life. You can also travel without a charger and never worry about the battery. With the built-in ultra-low power Sony 28nm GPS chip, the watch will achieve a 40-hour lifetime with the continuous GPS mode on. This exclusive smart watch has, multiple sports modes that can fully tap your potential and the real-time data during your exercise will help you develop good habits.The GPS+GLONASS dual-mode positioning makes the search for satellite signals fast and accurate to track your routes and distances while running, walking or cycling. This smart is equipped with high-precision optical sensors and professional algorithms, so it supports full-day automatic heart-rate detection and the daily heart rate zone can be a guiding metric for better exercise. It also supports heart-rate warning, the watch will vibrate when it detects a heart rate that exceeds the warning value. This smart watch is built with so many special features, like- Sedentary Reminders, Sleep Tracking, Customizable Watch Face, Music Control, Silent Alarms With Customized Vibrations, Event Reminder, Smart Notifications of emails, messages and other smartphone apps directly on the screen of your AMAZFIT Verge Lite, Comfortable Wristband With Fashionable Touch.', 'IR: 1002', 9500.00, 4, '2.jpg', 'Display	1.3-inch AMOLED\r\nResolution: 360 x 360\r\nCorning Gorilla 3 reinforced glass\r\nAnti-fingerprint coating\r\nBattery	390mAh lithium-polymer battery\r\nBattery life: More than 20 days in typical use scenarios\r\nConnectivity	Bluetooth 5.0 BLE\r\nMaterial	Wristband materials: Silicone + polycarbonate\r\nWatch body material: Glass fiber and reinforced polycarbonate\r\nSpecialFeatures	Supported devices: Devices with Android 4.4 or iOS9.0 and above, and with Bluetooth 4.0 and above\r\nWaterproof grade: IP68\r\nExterior\r\nDimension	Package size (L x W x H): 16.00 x 10.00 x 4.00 cm / 6.3 x 3.94 x 1.57 inches\r\nWeight	Product weight: 0.0460 kg\r\nPackage weight: 0.2750 kg\r\nColor	Blue/Gray', 1, '2020-06-03 20:36:55', '2020-06-03 20:36:55', NULL),
(3, 'Apple Smart Watch Series 3 (MQL12LL/A) 42mm - Space Gray', 'Model: MQL12LL/A\r\nAluminum Chassis with Ion-X Glass\r\n1.65\" 390 x 312 1000-Nit Display\r\nActivity and Heart Rate Monitoring\r\nChangeable Faces with Widgets', 'Apple MQL12LL/A Smart Watch connects to your iPhone via Bluetooth 4.2 and displays notifications, apps, and more on its 1.65\" OLED Resolution (312 x 390) display. It can also connect directly to the Internet thanks to 802.11b/g/n Wi-Fi. The internal battery lasts for up to 18 hours of normal use and is recharged with an included inductive magnetic charger. It has 768 MB Ram , 8 GB Storage capacity, Apple S3 Dual-Core CPU,Accelerometer, Altimeter, Barometer, Compass, Gyroscope, Heart Rate, Light Sensor. In additional,Apple Watch senses how much pressure you use when you tap on its face, adding a new dimension to the ways you can interact with it. Press firmly to see additional controls, change watch faces, and more.You Can Connect with other Apple Watch  with Digital Touch. Users can send drawings with Sketch, gentle tap patterns with Tap, and even your heartbeat.Take a call with your Apple Watch\'s built-in speakerphone or transfer it to your iPhone.Activating your Apple Watch requires your iCloud Apple ID and password, so your information will stay safe even if your Watch is lost or stolen.', 'IR: 1003', 32500.00, 3, '3.jpg', 'CPU	Apple S3 Dual-Core\r\nGPU	PowerVR\r\nRam	768 MB\r\nStorage	8 GB\r\nSensors	Accelerometer, Altimeter, Barometer, Compass, Gyroscope, Heart Rate, Light Sensor\r\nOperating System	watchOS 4.0\r\nBattery	Normal Use: Up to 18 hours\r\nDisplay\r\nDial Shape	Rectangle\r\nDial Size	1.65\" / 41.9 mm\r\nTechnology	OLED\r\nResolution	312 x 390\r\nBacklight	326 ppi\r\nConnectivity\r\nWi-Fi	Wi-Fi 4\r\nBluetooth	4.2\r\nGPS	Yes\r\nPhysical Dimension\r\nCase Dimensions	42.5 x 36.4 x 11.4 mm\r\nWeight	1.1 oz / 32.3 g\r\nMaterial	Aluminum\r\nCrystal Material	Aluminosilicate Glass\r\nWater Rating	5 ATM', 1, '2020-06-03 20:38:02', '2020-06-03 20:38:02', NULL),
(4, 'Gamdias EROS E2 Gaming Headphone', 'Model: Gamdias EROS E2\r\n40 mm drivers provide realistic sounds\r\nMulti-color Breathing Lighting\r\nOmnidirectional Flexible Microphone\r\nQuick access Controller', 'Gamdias EROS E2 Headphone 40 mm HD driver unit – 40 mm drivers provide realistic sounds effect and rich bass.Multi-color Breathing Lighting - Unique lighting effects for gaming headset.Best for console gameplay – Support PS4 and XBOX Omnidirectional Flexible Microphone - with noise-cancelling function can be adjusted to your preference. Oversized ear cups are designed to fit around most ears without applying pressure on soft tissues.Quick access Controller. This exclusive Gaming Headphone has 01 year warranty.', 'IR: 2001', 1650.00, 5, '4.jpg', 'Dimensions	182 x 90 x 231 mm\r\nCable Length	2.0m\r\nTechnical Specification\r\nDriver Magnet	NdFeB\r\nImpedance	32 Ohm + / ​​- 15%\r\nSensitivity	118±3dB\r\nInput Jack	USB for powering lighting + 3.5mm Stereo\r\nDriver Diameter	40mm\r\nConnectivity	Wired\r\nOther Features\r\nSystem Requirements	Application UI- No\r\nWarranty Information\r\nManufacturing Warranty	01 Year\r\nMicrophone\r\nMicrophone Size	Φ4*1.5mm\r\nSensitivity	-42db±3db\r\nPick-up Pattern	Omnidirectional', 2, '2020-06-03 20:39:45', '2020-06-03 20:39:45', NULL),
(5, 'Logitech G PRO 3.5mm Single & Dual port Gaming Headphone Black', 'Model: Logitech G PRO\r\nPRO-G Drivers\r\nNoise Isolation: up to 16DB\r\nFrequency response: 20 Hz-20 KHz\r\nPRO-GRADE Condenser Microphon', 'Logitech G PRO Gaming Headset is built with the highest quality materials and advanced technologies to provide audio performance that is second to none. You can hear everything with greater precision, from quiet footsteps to gunshot audio signatures to voice comms. Hybrid-mesh Pro-G audio drivers solve common distortion problems to deliver booming bass and precise clarity. In this headset, the Premium leatherette ear pads were selected for Logitech G PRO Headset to create a seal around the ears for improved passive noise isolation. you will get incredible comfort with soft foam padding and reduce distractions with up to 50% more sound isolation than other ear pads and lso included in the package are soft micro suede ear pads. This Gaming Headset is compatible with Windows 10 surround sound features like Windows Sonic for headphones and Dolby Atmos for headphones for accurate positional audio and the directional audio combined with exceptional clarity provides precise awareness of everything that\'s happening around you. This G PRO Headset performs with wider frequency response, lower signal to noise ratio and higher sensitivity. PRO headset is built to be extremely lightweight, strong and extremely comfortable. To achieve that, PRO headset uses advanced materials including TR90 nylon in the headband, stainless steel sliders, and glass fiber reinforced nylon joints. The lightweight construction with polymer shell and fork is perfect for long periods of wear and competitive gaming. This stylish headset comes with 02 years of warranty.', 'IR: 2002', 10000.00, 5, '5.jpg', 'Dimensions	Height: 172 mm\r\nWidth: 81.7 mm\r\nDepth: 182 mm\r\nWeight	(w/o cable): 259 g\r\nColor	Black\r\nCable Length	2 m\r\nTechnical Specification\r\nDriver Magnet	Driver: Hybrid mesh PRO-G\r\nMagnet: Neodymium\r\nFrequency Range	20 Hz-20 KHz\r\nImpedance	32 Ohms\r\nSensitivity	107 dB@1KHz SPL 30 mW/1cm\r\nOthers	Arm: Full-range flex\r\nOther Features\r\nSystem Requirements	PC, PS4, Nintendo Switch, Xbox One, VR\r\nWarranty Information\r\nManufacturing Warranty	02 Years Warranty\r\nMicrophone\r\nFrequency	100 Hz-10 KHz\r\nMicrophone Size	4 mm\r\nPick-up Pattern	Cardioid (Unidirectional)', 2, '2020-06-03 20:41:04', '2020-06-03 20:41:04', NULL),
(6, 'JBL Tune 600BT Wireless Bluetooth Headphone', 'Model: JBL Tune 600BT\r\nDetachable Cable\r\nJBL Pure Bass Sound\r\nActive Noise Cancelling\r\nWireless Bluetooth Streaming', 'JBL Tune 600BT Wireless Bluetooth Headphone keeps the noise out and enjoy your music. For over 70 years, JBL has engineered the precise, impressive sound found in big venues around the world. These headphones reproduce that same JBL sound, punching out bass that’s both deep and powerful. Wirelessly stream high-quality sound from your smartphone or tablet without messy cords. Introducing the JBL TUNE600BTNC active noise-cancelling wireless on-ear headphones, a flat-folding lightweight and compact solution for everyday use. The JBL TUNE600BTNC feature 32mm JBL drivers that helps deliver JBL Pure Bass sound. Sound that can be enjoyed without unnecessary noise for more than 12 hours wirelessly and can be fully recharged in only 2 hours. And thanks to the additional detachable cable, music can be enjoyed endlessly in wired mode, with or without Active Noise-Cancelling. Made with durable materials and designed in four fresh colors, the JBL TUNE600BTNC allow you to connect to your world quickly thanks to buttons on the ear cups that allow for easy hands-free management of calls and music.', 'IR: 2003', 8500.00, 0, '6.jpg', 'Weight	173 g\r\nColor	Black\r\nCable Length	120 cm\r\nTechnical Specification\r\nFrequency Range	20Hz – 20kHz\r\nImpedance	32Ω\r\nSensitivity	100dB\r\nInput Jack	3.5mm\r\nDriver Diameter	32 mm\r\nConnectivity	Bluetooth/ Wired\r\nOthers	Battery type: Polymer Li-ion Battery\r\n(3.7 V, 610 mAh)\r\nCharging time: 2 hours\r\nTalk time with BT on: 22 hours\r\nMusic playtime with BT on and ANC off:\r\n22 hours\r\nMusic playtime with BT on and ANC on: 12 hours\r\nMusic playtime with BT off and ANC on: 30 hours\r\nBluetooth transmitted power: 0-4 dbm\r\nBluetooth transmitted modulation:\r\nGFSK, π/4DQPSK, 8DPSK\r\nBluetooth frequency: 2.402 GHz–2.48 GHz\r\nBluetooth profiles: HFP v1.6, HSP v1.2,\r\nA2DP v1.2, AVRCP v1.5\r\nBluetooth version: V4.1\r\nWarranty Information\r\nManufacturing Warranty	6 Months Warranty\r\nMicrophone\r\nSensitivity	@1 kHz – 24 dBV/Pa', 2, '2020-06-03 20:42:06', '2020-06-03 20:42:06', NULL),
(7, 'GOLDEN FIELD U-20F Multimedia Bluetooth Speaker', 'Model: GOLDEN FIELD U-20F\r\nFrequency response : 40Hz~20KH\r\nDriver Unit : Sub 6.5″ & 3”*10\r\nS/N : >=70dB\r\nUSB,FM,Remote & Bluetooth', 'GOLDEN FIELD U-20F Multimedia Bluetooth Speaker comes with 5:1 set of speaker. It will bring full audio range music to your life. Beautiful finish design GOLDEN FIELD U-20F has the stylish black colors design, which is super beautiful for your personal space decoration and display. It is a Great sound solution for daily life and provides clean and detailed quality sound for most of your music needs. It is ideal for watching movies, playing games and listening to high definition music. Easy music control provides convenient control solution to every music lovers. GOLDEN FIELD U-20F 5:1 Speaker has built in 40Hz~20KH frequency Response, >=70dBSeparation.There are some other joss features are also comes with this device like USB port, FM and Bluetooth connectivity.', 'IR: 3001', 9000.00, 5, '7.jpg', 'Subwoofer	Yes\r\nSignal / noise ratio	>=70dB\r\nFrequency response	40Hz~20KH\r\nDrivers	Sub 6.5″ & 3”*10\r\nPhysical Spec\r\nDimension	Front Satellites size : W272*H940*D210mm\r\nCent satellites size : W320*H103*D91mm\r\nBluetooth	Yes\r\nUSB	Yes\r\nPower Source\r\nPower	110W\r\nWarranty\r\nManufacturing Warranty	01 Year Warranty', 4, '2020-06-03 20:45:34', '2020-06-03 20:45:34', NULL),
(8, 'Microlab M108BT Bluetooth 2.1 Speaker', 'Model: Microlab M108BT\r\nNoise Ratio 70 dB\r\nSatellite Speaker 2 Satellite\r\nSubwoofer 1 Subwoofer\r\nFrequency 40 Hz – 18 kHz', 'Microlab M108BT Bluetooth 2.1 Speaker comes from M series. It will bring full audio range music to your life. It\'s Beautiful finish design M-108BT has the stylish black colors design ,which is super beautiful for your personal space decoration. The wooden materials can also be kept for a long period. Microlab M-108BT Great sound solution provides clean and high quality sound for most of your music needs. It is ideally for watching movies, playing games and listening high definition music. Easy music control M-108BT provides conveniet control solution to every music liker. It features the front volume control for quick sound adjustment. \r\nThis Microlab M108BT Speaker comes with 01 year of warranty.', 'IR: 3002', 1900.00, 10, '8.jpg', 'jack	3.5mm\r\nSubwoofer	1 Subwoofer\r\nSignal / noise ratio	70 dB\r\nFrequency response	40 Hz – 18 kHz\r\nDrivers	Tweeter driver : 2.5″\r\nPower Source\r\nPower	11 Watt RMS Power Output\r\nWarranty\r\nManufacturing Warranty	01 year warranty', 4, '2020-06-03 20:46:31', '2020-06-03 20:46:31', NULL),
(9, 'Logitech Surround Sound Z506 Speaker', 'Model: Logitech Surround Sound Z506\r\nFrequency 45 Hz–20 kHz\r\nSatellites: 48 watts RMS\r\nRCA audio out', 'Logitech Surround Sound Z506 Speaker , Computers, music players, TVs, DVD players and other audio sources with 3.5 mm or RCA audio out PlayStation®2, PLAYSTATION®3, Xbox 360® or Wii™ using the AV cable that comes with your console 75 watts RMS, Satellites: 48 watts RMS (2 x 8 W front, 16 W center, 2 x 8 W rear), Subwoofer: 27 watts RMS, Total peak power: 150 watts, Frequency response: 45 Hz–20 kHz, Cables Front: 2 meters, Rear: 5 meters, Center: 2.7 meters, Accessory cables: 2 meters, Weight 5.1 kg. Warranty - 2 Year.', 'IR: 3003', 12000.00, 7, '9.png', 'Frequency	45 Hz–20 kHz\r\nTotal Speakers	5:1', 4, '2020-06-03 20:47:57', '2020-06-03 20:47:57', NULL),
(10, 'ADATA P5000 5000mAh Power Bank', 'Model: ADATA P5000\r\nAccessories: Micro USB cable, User manual\r\nCapacity: 5000mAh\r\nReveal Watermarks\r\nReveal UV Security Markings', 'ADATA P5000 Power Bank is featuring an ultra-compact form factor. It is portable mobile power and has a handy built-in counterfeit money detector. This power bank provides 5000mAh capacity and has enough power to charge your smartphone from empty to full one time. The P5000 power bank can reveal UV security markings and watermarks to help you spot a fake with a built-in ultraviolet (UV) counterfeit money detector. The P5000’s design sports minimalist sensibilities and a textured, leather-inspired exterior that won’t pick up messy fingerprints and unsightly smudges. This stylish power bank employs many safety mechanisms that counter over-discharging, over-charging, short-circuiting, over-voltage, and over-current. The P5000 comes with 01 year of warranty.', 'IR: 4001', 700.00, 15, '10.jpg', 'Capacity	5000mAh (Rechargeable Li-ion battery)\r\nInput	DC 5V/1.0A\r\nOutput	DC 5V / 1.0A\r\nPhysical Specification\r\nDimension	99 x 43 x 22mm / 3.9 x 1.7 x 0.8\" (L x W x H)\r\nWeight	117g / 4.1oz\r\nManufacture Warranty\r\nWarranty	01 year warranty', 5, '2020-06-03 20:49:22', '2020-06-03 20:49:22', NULL),
(11, 'Awei P77K 12000mAh Fast Charge Power Bank', 'Model: Awei P77K\r\nBatt.Capacity: 12000mah\r\n2.0A Intelligent fast charge\r\nMicro interface\r\nInput: 5V-0.2A(max)', 'This Awei P77K Power Bank is mainly designed for portable digital devices, such as mobile phone, Tablet PC, MP3, MP4 and game player etc. It comes with 12000mah Batt.Capacity, 5V-0.2A(max) Input, 5V -2A(max) Output 1 & 2, 10oc to 60oc Operating Temperature and 20oc to 50oc Storage Temperature. This power bank has high capacity, so it can provide enough power for your phone or other devices. It is a great accompany for you when you travel or have an outdoor gathering. You can Charge with more devices at the same time. This power bank is featuires with 2.0A Intelligent fast charge. Here use the Micro interface input of constant pressure constant current with LED light display indicates battery capacity.', 'IR: 4002', 1050.00, 9, '11.jpg', 'Capacity	12000mah\r\nInput	5V-0.2A(max)\r\nOutput	Output1: 5V -2A(max)\r\nOutput2: 5V -2A(max)\r\nInterface	Micro interface\r\nPhysical Specification\r\nColor	Black and White', 5, '2020-06-03 20:50:18', '2020-06-03 20:50:18', NULL),
(12, 'Xiaomi Mi Redmi PB200LZM 20000mAh Quick Charging Power Bank', 'Model: Xiaomi Mi Redmi PB200LZM Power Bank\r\nHigh Quality Circuit Chip\r\nTwo USB-A Output Interface\r\nMicro USB & USB-C Dual Input Interface\r\n20000mAh Big Power, 2-Ways fast Charging', 'Keep phones, tablets, cameras and electronic devices powered on travels with the massive 20000mAh Mi Power Bank. Its premium lithium-ion polymer batteries supplied by Panasonic/LG have energy densities of up to 728Wh/L. Charge two devices at once with dual USB ports. The new Texas Instruments control chip in each 20000mAh Mi Power Bank supports rapid charging. Compatible with 5V/2A, 9V/2A and 12V/1.5A charging, the power bank takes just 3 hours to charge 11000mAh and 7 hours to charge fully that\'s 44% faster than two 10000mAh Mi Power Banks combined. It maximises time on-the-go so you spend less downtime on charging. At just 338g, the 20000mAh Mi Power Bank is 414g lighter than two 10000mAh Mi Power Banks combined.Enter a whole new level of high-speed of charging with dual USB ports with up to 5.1V/3.6A output. Not only is the output significantly larger than ordinary chargers, 20000mAh Mi Power Bank also automatically adjusts output level based on the connected device. It is compatible with smartphones and tablets from Mi 4, Apple, Samsung, HTC, Google and BlackBerry, as well as a variety of digital cameras and handheld gaming devices. Mi Power Bank\'s adopted USB smart-control and charging/discharging chips from Texas Instruments provide nine layers of circuit chip protection while enhancing efficiency.', 'IR: 4003', 1950.00, 2, '12.jpg', 'Capacity	Over 20000mAh\r\nBattery Voltage: 3.7V\r\nBattery Current: 3.6A\r\nInput	Micro-USB/USB-C\r\nInput: 5V 2.1A / 9V 2.1A / 12V 1.5A\r\nOutput	2 x USB-A\r\noutput: 5.1V 2.4A / 9V 2A max. 12V 1.5A max. Dual port output: 5.1V 3.6A\r\nInterface	Battery Type: Li-Polymer Battery\r\nButton	1\r\nPhysical Specification\r\nDimension	15.40 x 7.36 x 2.73 cm\r\nWeight	420 g\r\nColor	White', 5, '2020-06-03 20:51:46', '2020-06-03 20:51:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default_client.jpg',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `client_name`, `client_message`, `client_position`, `client_image`, `created_at`, `updated_at`) VALUES
(1, 'Antone Bogisich', 'Ad repudiandae veniam saepe qui.', 'Fugit enim delectus deserunt perferendis.', 'default_client.jpg', '2020-06-03 19:00:47', '2020-06-03 19:00:47'),
(2, 'Neva Runolfsdottir', 'Consectetur ratione exercitationem earum totam aliquid enim.', 'Illum voluptatem sit sit ipsum.', 'default_client.jpg', '2020-06-03 19:00:47', '2020-06-03 19:00:47'),
(3, 'Mrs. Allie Schimmel', 'Ut dolorem repellendus molestiae rem delectus.', 'Sequi quo reprehenderit a et quidem iste.', 'default_client.jpg', '2020-06-03 19:00:47', '2020-06-03 19:00:47'),
(4, 'Mr. Khan', 'very good', 'eng', '4.jpg', '2020-06-03 19:07:40', '2020-06-03 19:51:46'),
(5, 'Celestino Veum', 'Aut ducimus aliquid dolorum natus quia rerum aut.', 'Rerum sit fugit repudiandae est accusantium.', 'default_client.jpg', '2020-06-03 19:07:40', '2020-06-03 19:07:40'),
(6, 'Darrion O\'Hara', 'Ut occaecati enim unde nihil est aspernatur.', 'Quas qui impedit corporis magni.', 'default_client.jpg', '2020-06-03 19:07:40', '2020-06-03 19:07:40'),
(7, 'Ismat', 'good', 'Eng', '7.jpg', '2020-06-03 19:52:44', '2020-06-03 19:52:45');

-- --------------------------------------------------------

--
-- Table structure for table `todos`
--

CREATE TABLE `todos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `taskName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `taskDescription` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `taskStatus` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `todos`
--

INSERT INTO `todos` (`id`, `taskName`, `taskDescription`, `user_id`, `taskStatus`, `created_at`, `updated_at`) VALUES
(1, 'Quo aut voluptatem voluptatem voluptates.', 'Rem omnis fugiat non illo vitae.', 9, 0, '1975-08-03 19:20:20', NULL),
(2, 'Est totam officiis quod omnis a et esse iste.', 'Voluptas unde sit atque libero.', 7, 0, '2009-01-08 12:15:29', NULL),
(3, 'Pariatur similique quia iusto eos omnis.', 'Enim voluptate quia nam.', 9, 0, '2016-05-10 00:27:26', NULL),
(4, 'Exercitationem quibusdam quae neque voluptate magni.', 'Quis velit dolores ut expedita.', 4, 1, '2000-10-14 18:23:51', NULL),
(5, 'Exercitationem consequuntur possimus voluptas quam molestias.', 'Excepturi non aut vero possimus.', 1, 0, '2002-05-20 13:16:36', NULL),
(6, 'Eos et repellendus qui aliquam modi enim exercitationem.', 'Fuga totam aliquid sed dignissimos esse a qui.', 3, 1, '2014-09-03 04:25:42', NULL),
(7, 'Possimus minima aut molestiae est dolores sint officia.', 'Et sed nisi fugiat ab.', 9, 1, '1995-02-21 14:29:29', NULL),
(8, 'Explicabo ea voluptatem quod id magni.', 'Ut est omnis et libero et vitae.', 9, 0, '1974-06-26 12:52:51', NULL),
(9, 'Sunt voluptas et quia atque incidunt consequatur provident.', 'Occaecati deleniti dolore ut ducimus qui.', 7, 1, '1986-05-22 20:27:08', NULL),
(10, 'Eligendi aut sunt ipsam voluptates corrupti autem quia.', 'Qui et facere aut quod nesciunt itaque.', 1, 0, '2006-08-22 08:10:04', NULL),
(11, 'Rerum magni numquam iste nisi.', 'Sequi earum est alias excepturi nemo.', 1, 1, '1980-12-29 20:25:03', NULL),
(12, 'Earum rem rerum voluptatem aut consectetur pariatur molestias.', 'Sed libero est quisquam ipsa.', 5, 1, '1988-08-17 13:51:05', NULL),
(13, 'Veritatis itaque excepturi ut ab aut.', 'Sit est non autem incidunt sequi.', 7, 1, '2005-05-02 12:05:09', NULL),
(14, 'Ad et nesciunt deleniti dolor et perferendis dolorem optio.', 'Qui qui quos voluptatem nobis.', 6, 0, '1989-01-01 17:19:26', NULL),
(15, 'Voluptatem sunt voluptas aut veritatis voluptatem quia.', 'Aut nemo quis non.', 6, 1, '1974-11-05 13:00:29', NULL),
(16, 'Ratione enim omnis et magni non voluptatum.', 'In ipsum pariatur praesentium aut voluptate.', 7, 0, '2001-04-08 12:05:15', NULL),
(17, 'Minus cupiditate earum aspernatur magni id libero.', 'Eaque amet quas eius rerum ab quo.', 10, 0, '2017-02-03 08:39:20', NULL),
(18, 'Ut recusandae beatae debitis sed.', 'Vel corrupti cum reprehenderit et.', 10, 0, '2008-07-03 04:20:17', NULL),
(19, 'Et illum eos debitis dolores pariatur.', 'Itaque veniam quos voluptas odio provident.', 1, 1, '1975-12-07 04:59:58', NULL),
(20, 'Voluptate quae sapiente eius quia autem.', 'Earum consequatur recusandae vitae asperiores.', 4, 0, '1975-04-04 15:13:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.jpg',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `profile_image`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mahmud Ibrahim', 'mahmud.ibrahim021@gmail.com', '2020-06-03 19:07:23', '$2y$10$Wy2oiVP0ACiddPkEoZAWB.5eplBHxrQbIOm.DqOTaKLQDOKvkMq9C', '1.jpg', 'p0iq5gG5o7', '2020-06-03 19:07:23', '2020-06-03 19:07:23'),
(2, 'Roderick Tromp III', 'wilmer.hegmann@example.org', '2020-06-03 19:07:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'default.jpg', 'Gmfu962wHD', '2020-06-03 19:07:23', '2020-06-03 19:07:23'),
(3, 'Miss Odessa Senger', 'edwardo.dickens@example.com', '2020-06-03 19:07:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'default.jpg', 'sEmiOoSqHg', '2020-06-03 19:07:23', '2020-06-03 19:07:23'),
(4, 'Mrs. Ramona Kub', 'pasquale83@example.org', '2020-06-03 19:07:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'default.jpg', '4zCANCQExu', '2020-06-03 19:07:23', '2020-06-03 19:07:23'),
(5, 'Wilford Veum PhD', 'krogahn@example.com', '2020-06-03 19:07:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'default.jpg', 'z5pApYWGv5', '2020-06-03 19:07:23', '2020-06-03 19:07:23'),
(6, 'Dr. Destany Renner IV', 'teresa04@example.net', '2020-06-03 19:07:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'default.jpg', 'T8EyoSjVVq', '2020-06-03 19:07:23', '2020-06-03 19:07:23'),
(7, 'Florencio Leuschke', 'oprosacco@example.org', '2020-06-03 19:07:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'default.jpg', 'B272AcId1D', '2020-06-03 19:07:23', '2020-06-03 19:07:23'),
(8, 'Kamryn Becker', 'pfannerstill.ernie@example.org', '2020-06-03 19:07:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'default.jpg', 'AM5b1TJRRZ', '2020-06-03 19:07:23', '2020-06-03 19:07:23'),
(9, 'Karson Runte', 'tate.ortiz@example.com', '2020-06-03 19:07:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'default.jpg', 'l10MinmF1m', '2020-06-03 19:07:23', '2020-06-03 19:07:23'),
(10, 'Alexa Schiller', 'friesen.rasheed@example.org', '2020-06-03 19:07:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'default.jpg', 'loEy26KqNO', '2020-06-03 19:07:23', '2020-06-03 19:07:23'),
(11, 'Shany Aufderhar', 'roosevelt86@example.net', '2020-06-03 19:07:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'default.jpg', 'KdsNfqwAjD', '2020-06-03 19:07:23', '2020-06-03 19:07:23'),
(12, 'Alvera Aufderhar', 'wilderman.cody@example.net', '2020-06-03 19:07:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'default.jpg', 'sNOlLIKlzI', '2020-06-03 19:07:23', '2020-06-03 19:07:23'),
(13, 'Quentin Lemke', 'mgorczany@example.com', '2020-06-03 19:07:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'default.jpg', 'gG0nLYM8qn', '2020-06-03 19:07:23', '2020-06-03 19:07:23'),
(14, 'Elroy Toy DDS', 'tokeefe@example.org', '2020-06-03 19:07:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'default.jpg', 'VZBD87r7gQ', '2020-06-03 19:07:23', '2020-06-03 19:07:23'),
(15, 'Sally Considine', 'breanne58@example.org', '2020-06-03 19:07:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'default.jpg', 'zXLoJvaviM', '2020-06-03 19:07:23', '2020-06-03 19:07:23'),
(16, 'Miss Katelyn Stanton', 'cgreenfelder@example.net', '2020-06-03 19:07:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'default.jpg', 'dbQcRuRSQl', '2020-06-03 19:07:23', '2020-06-03 19:07:23'),
(17, 'Kristoffer Vandervort', 'liana.barton@example.com', '2020-06-03 19:07:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'default.jpg', 'aoMh86rVNX', '2020-06-03 19:07:23', '2020-06-03 19:07:23'),
(18, 'Ms. Elisabeth Bechtelar', 'qhane@example.com', '2020-06-03 19:07:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'default.jpg', 'xRMOFaTOHH', '2020-06-03 19:07:23', '2020-06-03 19:07:23'),
(19, 'Cristian Weimann', 'jazmyne50@example.com', '2020-06-03 19:07:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'default.jpg', 'Nk217BYmiw', '2020-06-03 19:07:23', '2020-06-03 19:07:23'),
(20, 'Miss Florence Howe', 'evie.rutherford@example.org', '2020-06-03 19:07:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'default.jpg', '92grYRWrjB', '2020-06-03 19:07:23', '2020-06-03 19:07:23'),
(21, 'Mrs. Antonina Roob PhD', 'ihirthe@example.org', '2020-06-03 19:07:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'default.jpg', 'ivZe8Mixeh', '2020-06-03 19:07:23', '2020-06-03 19:07:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `todos`
--
ALTER TABLE `todos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `todos_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `todos`
--
ALTER TABLE `todos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `todos`
--
ALTER TABLE `todos`
  ADD CONSTRAINT `todos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
