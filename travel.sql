-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 05, 2022 at 09:19 AM
-- Server version: 10.3.31-MariaDB-0+deb10u1
-- PHP Version: 7.3.31-1~deb10u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travel`
--

-- --------------------------------------------------------

--
-- Table structure for table `ars`
--

CREATE TABLE `ars` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `dae` varchar(255) NOT NULL,
  `fbx` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ars`
--

INSERT INTO `ars` (`id`, `name`, `dae`, `fbx`) VALUES
(1, 'Удачный дом', 'http://travel.madskill.ru/ar/building_04.dae', 'http://travel.madskill.ru/ar/building_04.fbx'),
(2, 'Шикарная башня', 'http://travel.madskill.ru/ar/Medieval tower_High_2.dae', 'http://travel.madskill.ru/ar/Medieval_tower_High_2.fbx'),
(3, 'Веселый снеговик', 'http://travel.madskill.ru/ar/OLAF.dae', 'http://travel.madskill.ru/ar/OLAF.fbx'),
(4, 'Хороший дом', 'http://travel.madskill.ru/ar/building_04.dae', 'http://travel.madskill.ru/ar/building_04.fbx'),
(5, 'Замок королевский', 'http://travel.madskill.ru/ar/Medieval tower_High_2.dae', 'http://travel.madskill.ru/ar/Medieval_tower_High_2.fbx'),
(6, 'Житель Заполярья', 'http://travel.madskill.ru/ar/OLAF.dae', 'http://travel.madskill.ru/ar/OLAF.fbx'),
(7, 'Деревенский дом', 'http://travel.madskill.ru/ar/building_04.dae', 'http://travel.madskill.ru/ar/building_04.fbx');

-- --------------------------------------------------------

--
-- Table structure for table `attractions`
--

CREATE TABLE `attractions` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(4000) NOT NULL,
  `city` varchar(255) NOT NULL DEFAULT 'Саранск',
  `image` varchar(255) DEFAULT NULL,
  `latitude` varchar(30) DEFAULT NULL,
  `longitude` varchar(30) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attractions`
--

INSERT INTO `attractions` (`id`, `name`, `description`, `city`, `image`, `latitude`, `longitude`, `updated_at`, `created_at`) VALUES
(10, 'Собор Святого Феодора Ушакова', 'Построен в Саранске в начале 2000-х годов. Является кафедральным и заменил прежний храм с тем же статусом, так как имеет большую вместимость. Носит имя канонизированного адмирала. Освящал собор патриарх Алексий II. Архитектурный стиль – ампир, а 12 золочёных куполов, отлитых по технологиям прошлых лет, относятся в неовизантийскому стилю. Иконостас изготовили в Саратове из золочёного дерева.\r\nИсточник: https://must-see.top/dostoprimechatelnosti-mordovii/', 'Саранск', 'https://travel.madskill.ru/filemanager/uploads/sobor-svyatogo-feodora-ushakova.jpg', '54.181432', '45.181617', '2022-03-24 15:34:58', '2022-03-24 15:34:58'),
(11, 'Старая Теризморга', 'Село, ставшее сосредоточением мокшанской культуры и традиций. Проводится фестиваль с участием фино-угорских народов. Есть культурный центр, Свято-Никольский храм, этнографический музей. Проводятся мастер-классы, в том числе учат плести из бисера. Туристам предлагают продегустировать традиционную мокшанскую кухню – пшенные блины и позу. Местный хор, существующий с 1957 года, выступает по всей стране и за границей.', 'Старая Теризморга', 'https://travel.madskill.ru/filemanager/uploads/staraya-terizmorga.jpg', '54.258622', '44.534025', '2022-03-27 12:40:20', '2022-03-27 00:28:40'),
(12, 'Мордовский заповедник', 'Основан в 1936 году на территории более 32 тысяч га Темниковского района. Помимо знакомства с природой, следует осмотреться в местном музее и визит-центре. Заповедник предлагает посетителям 8 экологических туров на любой вкус. Перед визитом сюда нужно получить специальное разрешение. Круглый год работает гостиница. Также можно остановиться на одном из кордонов.', 'Саранск', 'https://travel.madskill.ru/filemanager/uploads/mordovskij-zapovednik.jpg', '54.709326', '43.229676', '2022-03-27 00:30:53', '2022-03-27 00:30:53'),
(13, 'Инсарский Свято-Ольгинский монастырь', 'Возник на базе небольшой гостиницы для монахинь, основанной в 80-х годах XIX века. В 1900 году был освящён храм, пристроенный рядом. У него 12 глав, все небольшие. Цель такой архитектуры – снизить внимание к громоздкому фасаду. В советское время здесь располагался краеведческий музей. С 1988 года монастырь начали возрождать. На момент реставрации в обители проживали 30 сестёр.', 'Саранск', 'https://travel.madskill.ru/filemanager/uploads/insarskij-svyato-olginskij-monastyr.jpg', '53.869368', '44.370028', '2022-03-27 00:32:33', '2022-03-27 00:32:33'),
(14, 'Ключевская пустынь', 'Находится недалеко от границы с Чувашской республикой. Мужской монастырь возник в XVIII веке и берёт своё начало с появления у святого источника иконы. Родник был популярен даже в годы запустения обители. Её стали реставрировать с середины 90-х годов прошлого века. Восстановили прежние здания, построили новую колокольню, купальни с часовней у источника и гостиницу для паломников.', 'Саранск', 'https://travel.madskill.ru/filemanager/uploads/klyuchevskaya-pustyn.jpg', '54.809468', '46.309746', '2022-03-27 00:34:20', '2022-03-27 00:34:20'),
(15, 'Озеро Инерка', 'От него до Саранска примерно 70 км. Площадь – 44 гектара, имеет вытянутую форму. Вода прозрачная с голубоватым оттенком большую часть года. У берегов гнездятся птицы и растут кувшинки. Чуть дальше – леса нескольких типов: хвойные, лиственные, берёзовые. В районе озера проводятся гонки на внедорожниках, соревнования по рыбной ловле, концерты, пляжные вечеринки и прочие мероприятия.\r\nИсточник: https://must-see.top/dostoprimechatelnosti-mordovii/', 'Саранск', 'https://travel.madskill.ru/filemanager/uploads/ozero-inerka.jpg', '54.062840', '45.886906', '2022-03-27 00:35:35', '2022-03-27 00:35:35'),
(16, 'Национальный парк «Смольный»', 'Основан в 1995 году и занимает площадь в 35,5 тысяч га по левому берегу реки Алатырь. В лесном массиве и на пойме гнездятся редкие птицы, эта территория относится к особо значимой для орнитологов мира. Леса здесь как смешанные, так и сосновые, а также лиственные. Луга по большей части пойменные. Национальный парк несёт просветительскую функцию, поэтому тут проложены экомаршруты и проводятся экскурсии.', 'Саранск', 'https://travel.madskill.ru/filemanager/uploads/nacionalnyj-park-smolnyj.jpg', '54.724665', '45.290680', '2022-03-27 06:11:53', '2022-03-27 06:11:53'),
(17, 'Пайгармский Параскево-Вознесенский монастырь', 'Год основания женской обители – 1865. Быстро разрастался, при нём работали мастерские и детский приют. Главная святыня – икона святой мученицы Параскевы, в которой хранится частица её мощей. На территории построены два собора, две церкви и три часовни. У каждого здания свои характерные особенности, но ансамбль выглядит единым целым. Рядом: источник с часовней и купальней и гостиница для паломников.', 'Саранск', 'https://travel.madskill.ru/filemanager/uploads/pajgarmskij-paraskevo-voznesenskij-monastyr.jpg', '54.079768', '44.831544', '2022-03-27 06:12:50', '2022-03-27 06:12:50'),
(18, 'Санаксарский монастырь', 'Построен в Темниковском районе в середине XVII века. Некоторое время мужская обитель считалась одним из духовных центров страны. После 60 лет запустения начал восстанавливаться в 1991 году. Открылись небольшая лесопилка и свечной цех. В лесу неподалёку находится святой источник преподобного Феодора. Территория облагорожена, построены купальни и удобный подход к воде.', 'Саранск', 'https://travel.madskill.ru/filemanager/uploads/sanaksarskij-monastyr.jpg', '54.652958', '43.164672', '2022-03-27 06:13:42', '2022-03-27 06:13:42'),
(19, 'Макаровский Иоанно-Богословский монастырь', 'Основан в середине 90-х прошлого века, при этом большинство храмов и других строений возведено значительно раньше. Они отреставрированы и дополнены необходимыми в современности деталями. В XVIII веке тут был погост. Имеется ряд архитектурных особенностей. Например, колокольня встроена в ограду наравне с башнями. Является резиденцией местного митрополита. На базе обители работает Синодальный отдел по делам молодёжи.\r\nИсточник: https://must-see.top/dostoprimechatelnosti-mordovii/', 'Саранск', 'https://travel.madskill.ru/filemanager/uploads/makarovskij-ioanno-bogoslovskij-monastyr.jpg', '54.160905', '45.254817', '2022-03-27 14:18:35', '2022-03-27 06:14:35'),
(20, 'Ичалковский конный завод', 'Племенной конезавод № 27 «Мордовский» расположен в селе Оброчное с 1778 года. От Саранска – 60 км. Один из самых крупных конезаводов Поволжья. Помимо чистопородных лошадей из разных стран, здесь работают с уникальной породой – мокшанским рысаком. В программу посещения входит знакомство с историей, осмотр конюшен, прогулки на лошадях. Туристов принимают круглый год и каждый день, кроме понедельника.', 'Саранск', 'https://travel.madskill.ru/filemanager/uploads/ichalkovskij-konnyj-zavod.jpg', '54.681313', '45.278172', '2022-03-27 06:55:03', '2022-03-27 06:55:03'),
(21, 'Стадион «Мордовия Арена»', 'Построен в Саранске к ЧМ по футболу, который проходил в России в 2018 году. Имеет по классификации УЕФА 4 категорию. Вместительность – от 30 тысяч до более 43 тысяч человек. Отличный обзор с любого места на стадионе. Современный в техническом плане, что делает матчи более зрелищными, а работу журналистов удобной. Подходит для посещения людьми с ограниченными способностями.', 'Саранск', 'https://travel.madskill.ru/filemanager/uploads/stadion-mordoviya-arena.jpg', '54.181560', '45.203892', '2022-03-27 08:03:27', '2022-03-27 08:03:27'),
(22, 'Красная площадь', 'Красная площадь — это центральная площадь города Москвы, находится она между Кремлем и Китай-городом. Появление и история площади берут свое начало с 15-16 века. Изначально Красная площадь была предназначена для торгов и рынка и называлась Торг или Пожар. В 17 веке эту площадь начали называть Красной, что обозначало «красивая», «прекрасная». Со временем на площади появились различные памятники и достопримечательности. Площадь выложена брусчаткой и является пешеходной зоной. С 1963 года транспортное движение на Красной площади запрещено.', 'Москва', 'https://travel.madskill.ru/filemanager/uploads/Красная-площадь-Москва-Россия-фото.jpg', '55.753544', '37.621211', '2022-03-27 12:45:29', '2022-03-27 09:42:20'),
(23, 'Парк Горького', 'Московский парк культуры и отдыха, столичная рекреационная зона, одна из самых больших и популярных в городе. Партерная часть парка появилась в 1923 году после организации на месте свалки Орловского луга Всероссийской сельскохозяйственной выставки, планировку которой от входа до Нескучного сада выполнил архитектор-авангардист Константин Мельников.', 'Москва', 'https://travel.madskill.ru/filemanager/uploads/park-gorkogo-v-moskve.jpg', '55.731494', '37.603602', '2022-03-27 12:45:36', '2022-03-27 09:45:19'),
(24, 'Кул-Шариф', 'Современный вариант этой мечети был построен в 2005 году и посвящен 1000-летию Казани. Оригинальный вариант был разрушен в 1552 году при наступлении войск Ивана Грозного. Информации о том, как же выглядела эта мечеть, не сохранилось, поэтому современная постройка не является точной копией. Она имеет 4 этажа. Здесь находятся музей, библиотека, издательство. Расположена мечеть на территории Казанского Кремля.', 'Казань', 'https://travel.madskill.ru/filemanager/uploads/kul-sharif-768x512.jpg', '55.798491', '49.105078', '2022-03-27 14:49:22', '2022-03-27 09:47:04'),
(25, 'Памятник Курчатову', 'Памятник прославленному физику-ядерщику открыт в 1986 году. Расположен он на площади Науки. Памятник представляет собой сложную композицию – в ее состав входит статуя Курчатова на постаменте и два высоких пилона по бокам. Пилоны символизируют две половины расщепленного атома. Высота статуи с пьедесталом составляет 11 метров, высота пилонов – 27 метров. Ночью памятник освещается лучами прожекторов.', 'Челябинск', 'https://travel.madskill.ru/filemanager/uploads/Pamyatnik-Kurchatovu.jpg', '55.159262', '61.362561', '2022-03-28 14:06:45', '2022-03-28 04:09:53'),
(26, 'Парк «Алое поле»', 'Парк отдыха, существующий с конца XIX века. Название его связано с митингом 1905 года, во время которого рабочие получили ранения. Теперь уютная прогулочная зона и историческая территория стала для горожан любимым местом встреч. На ней установлено несколько памятников – бюст Ленина, монумент «Орленок», памятник разведчику Ахмерову. Рядом с парком находится парк чудес «Галилео», краеведческий музей и церковь Александра Невского.', 'Челябинск', 'https://travel.madskill.ru/filemanager/uploads/Park-Aloe-pole.jpg', '55.161094', '61.391176', '2022-03-28 14:06:50', '2022-03-28 04:11:36');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `filemanager`
--

CREATE TABLE `filemanager` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ext` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size` double(8,2) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `absolute_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `filemanager`
--

INSERT INTO `filemanager` (`id`, `name`, `ext`, `file_size`, `user_id`, `absolute_url`, `extra`, `created_at`, `updated_at`) VALUES
(2, 'Screenshot 2022-03-19 at 10.05.44.png', 'png', 41721.00, 1, 'https://travel.madskill.ru/filemanager/uploads/Screenshot 2022-03-19 at 10.05.44.png', '{\"width\":1024,\"height\":411}', '2022-03-20 17:44:33', '2022-03-20 17:44:33'),
(3, 'sobor-svyatogo-feodora-ushakova.jpg', 'jpg', 94432.00, 1, 'https://travel.madskill.ru/filemanager/uploads/sobor-svyatogo-feodora-ushakova.jpg', '{\"width\":1024,\"height\":688}', '2022-03-24 15:29:01', '2022-03-24 15:29:01'),
(4, 'staraya-terizmorga.jpg', 'jpg', 106321.00, 1, 'https://travel.madskill.ru/filemanager/uploads/staraya-terizmorga.jpg', '{\"width\":1024,\"height\":680}', '2022-03-27 00:27:49', '2022-03-27 00:27:49'),
(5, 'mordovskij-zapovednik.jpg', 'jpg', 129928.00, 1, 'https://travel.madskill.ru/filemanager/uploads/mordovskij-zapovednik.jpg', '{\"width\":1024,\"height\":682}', '2022-03-27 00:29:31', '2022-03-27 00:29:31'),
(6, 'insarskij-svyato-olginskij-monastyr.jpg', 'jpg', 115236.00, 1, 'https://travel.madskill.ru/filemanager/uploads/insarskij-svyato-olginskij-monastyr.jpg', '{\"width\":1024,\"height\":685}', '2022-03-27 00:31:33', '2022-03-27 00:31:33'),
(7, 'klyuchevskaya-pustyn.jpg', 'jpg', 107562.00, 1, 'https://travel.madskill.ru/filemanager/uploads/klyuchevskaya-pustyn.jpg', '{\"width\":1024,\"height\":682}', '2022-03-27 00:34:08', '2022-03-27 00:34:08'),
(8, 'ozero-inerka.jpg', 'jpg', 59541.00, 1, 'https://travel.madskill.ru/filemanager/uploads/ozero-inerka.jpg', '{\"width\":1024,\"height\":664}', '2022-03-27 00:35:02', '2022-03-27 00:35:02'),
(9, 'nacionalnyj-park-smolnyj.jpg', 'jpg', 64627.00, 1, 'https://travel.madskill.ru/filemanager/uploads/nacionalnyj-park-smolnyj.jpg', '{\"width\":1024,\"height\":672}', '2022-03-27 06:11:14', '2022-03-27 06:11:14'),
(10, 'pajgarmskij-paraskevo-voznesenskij-monastyr.jpg', 'jpg', 119579.00, 1, 'https://travel.madskill.ru/filemanager/uploads/pajgarmskij-paraskevo-voznesenskij-monastyr.jpg', '{\"width\":1024,\"height\":682}', '2022-03-27 06:12:42', '2022-03-27 06:12:42'),
(11, 'sanaksarskij-monastyr.jpg', 'jpg', 90629.00, 1, 'https://travel.madskill.ru/filemanager/uploads/sanaksarskij-monastyr.jpg', '{\"width\":1024,\"height\":671}', '2022-03-27 06:13:35', '2022-03-27 06:13:35'),
(12, 'makarovskij-ioanno-bogoslovskij-monastyr.jpg', 'jpg', 69459.00, 1, 'https://travel.madskill.ru/filemanager/uploads/makarovskij-ioanno-bogoslovskij-monastyr.jpg', '{\"width\":1024,\"height\":681}', '2022-03-27 06:14:26', '2022-03-27 06:14:26'),
(13, 'ichalkovskij-konnyj-zavod.jpg', 'jpg', 114778.00, 1, 'https://travel.madskill.ru/filemanager/uploads/ichalkovskij-konnyj-zavod.jpg', '{\"width\":1024,\"height\":659}', '2022-03-27 06:54:56', '2022-03-27 06:54:56'),
(14, 'stadion-mordoviya-arena.jpg', 'jpg', 105111.00, 1, 'https://travel.madskill.ru/filemanager/uploads/stadion-mordoviya-arena.jpg', '{\"width\":1024,\"height\":681}', '2022-03-27 08:03:18', '2022-03-27 08:03:18'),
(15, 'Красная-площадь-Москва-Россия-фото.jpg', 'jpg', 110448.00, 1, 'https://travel.madskill.ru/filemanager/uploads/Красная-площадь-Москва-Россия-фото.jpg', '{\"width\":1024,\"height\":768}', '2022-03-27 09:42:08', '2022-03-27 09:42:08'),
(16, 'park-gorkogo-v-moskve.jpg', 'jpg', 182261.00, 1, 'https://travel.madskill.ru/filemanager/uploads/park-gorkogo-v-moskve.jpg', '{\"width\":1024,\"height\":682}', '2022-03-27 09:45:09', '2022-03-27 09:45:09'),
(17, 'kul-sharif-768x512.jpg', 'jpg', 78952.00, 1, 'https://travel.madskill.ru/filemanager/uploads/kul-sharif-768x512.jpg', '{\"width\":1024,\"height\":682}', '2022-03-27 09:46:56', '2022-03-27 09:46:56'),
(18, 'fon1_1.jpg', 'jpg', 111281.00, 1, 'https://travel.madskill.ru/filemanager/uploads/fon1_1.jpg', '{\"width\":1024,\"height\":768}', '2022-03-27 12:12:12', '2022-03-27 12:12:12'),
(19, 'hqdefault.jpg', 'jpg', 76060.00, 1, 'https://travel.madskill.ru/filemanager/uploads/hqdefault.jpg', '{\"width\":1024,\"height\":768}', '2022-03-27 12:12:12', '2022-03-27 12:12:12'),
(20, 's600.jpeg', 'jpeg', 198843.00, 1, 'https://travel.madskill.ru/filemanager/uploads/s600.jpeg', '{\"width\":1024,\"height\":1280}', '2022-03-27 13:33:07', '2022-03-27 13:33:07'),
(21, 'Pamyatnik-Kurchatovu.jpg', 'jpg', 75923.00, 1, 'https://travel.madskill.ru/filemanager/uploads/Pamyatnik-Kurchatovu.jpg', '{\"width\":1024,\"height\":695}', '2022-03-28 04:09:42', '2022-03-28 04:09:42'),
(22, 'Park-Aloe-pole.jpg', 'jpg', 159762.00, 1, 'https://travel.madskill.ru/filemanager/uploads/Park-Aloe-pole.jpg', '{\"width\":1024,\"height\":639}', '2022-03-28 04:11:27', '2022-03-28 04:11:27');

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
(10, '2014_10_12_000000_create_users_table', 1),
(11, '2014_10_12_100000_create_password_resets_table', 1),
(12, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(13, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(14, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(15, '2016_06_01_000004_create_oauth_clients_table', 1),
(16, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(17, '2019_08_19_000000_create_failed_jobs_table', 1),
(18, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(19, '2022_03_20_082001_create_permission_tables', 2),
(20, '2020_05_02_100001_create_filemanager_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 9),
(2, 'App\\Models\\User', 10),
(2, 'App\\Models\\User', 11),
(2, 'App\\Models\\User', 12),
(2, 'App\\Models\\User', 13),
(2, 'App\\Models\\User', 14),
(2, 'App\\Models\\User', 15),
(2, 'App\\Models\\User', 16),
(2, 'App\\Models\\User', 17),
(2, 'App\\Models\\User', 18),
(2, 'App\\Models\\User', 19),
(2, 'App\\Models\\User', 20),
(2, 'App\\Models\\User', 21),
(2, 'App\\Models\\User', 77),
(2, 'App\\Models\\User', 78),
(2, 'App\\Models\\User', 79),
(2, 'App\\Models\\User', 80),
(2, 'App\\Models\\User', 81),
(2, 'App\\Models\\User', 82),
(2, 'App\\Models\\User', 83),
(2, 'App\\Models\\User', 84),
(2, 'App\\Models\\User', 85),
(2, 'App\\Models\\User', 86),
(2, 'App\\Models\\User', 87),
(2, 'App\\Models\\User', 88),
(2, 'App\\Models\\User', 89),
(2, 'App\\Models\\User', 90),
(2, 'App\\Models\\User', 91),
(2, 'App\\Models\\User', 92),
(2, 'App\\Models\\User', 114),
(3, 'App\\Models\\User', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('05df030961ac5e5b72c72d820a28ef22f1fb5cc119cfd6e73c616205fa1274e702db789f0c885f35', 1, '95e9ed4b-daa7-4bf4-b587-852e440a52e7', NULL, '[]', 0, '2022-03-27 15:59:07', '2022-03-27 15:59:07', '2022-03-28 18:59:07'),
('0642b4840a7a91e167563329bf618d3d898823703f782fe7a2b035d42b9acb4f1bd516ba0acc50d7', 86, '95f30ed3-ec1e-499b-b051-0d27b057cb3e', NULL, '[]', 0, '2022-03-31 04:31:33', '2022-03-31 04:31:33', '2022-04-01 07:31:33'),
('0b9735a35fc959f0d56c2dcfdc8208beefe1f8ad99a12d7e23a120864d792046e9ebf373f3252c74', 90, '95f53476-616c-4c05-8173-0a0800212550', NULL, '[]', 0, '2022-04-01 06:06:31', '2022-04-01 06:06:31', '2022-04-02 09:06:31'),
('0e48c8c1fec895d8d727bda2d688458da0483f992d15cb96928c963d9738921a1e887dda6d9332ec', 9, '95eb14c3-4305-4923-a9f5-b397d3baa4a8', NULL, '[]', 0, '2022-03-28 03:27:43', '2022-03-28 03:27:43', '2022-03-29 06:27:43'),
('1860c8bc4a983d1cd1f807ba9da90493d6511230a80607404fcc077764660c338873ef5bf21bb5ed', 1, '95ebd205-1fd3-4cd3-9b80-b7ff2c851d04', NULL, '[]', 1, '2022-03-27 16:33:51', '2022-03-27 16:33:51', '2022-03-28 19:33:51'),
('19c42856a51fd5754e50ac2704ccb79ba7d471cf19cd52bba0fc5db93b5853cffdb71752b935fb70', 1, '95ebd205-1fd3-4cd3-9b80-b7ff2c851d04', NULL, '[]', 0, '2022-03-27 16:22:38', '2022-03-27 16:22:38', '2022-03-28 19:22:38'),
('218c0f9d0cefcf48388a9cd3c73742906986da8d7774057b03d1c4bc785e804342c59a26e27c0fec', 1, '95e9ed4b-daa7-4bf4-b587-852e440a52e7', NULL, '[]', 0, '2022-03-28 02:02:40', '2022-03-28 02:02:40', '2022-03-29 05:02:40'),
('21ca998ea7d3656c9d7a1d2136a8c1dffd405e76c0827cf214753f95297abd6406303a5be1d68fc5', 1, '95e9ed4b-daa7-4bf4-b587-852e440a52e7', NULL, '[]', 1, '2022-03-27 16:01:53', '2022-03-27 16:01:53', '2022-03-28 19:01:53'),
('2344f6c8745ad33413eb037d55e65dae43e90661f588ef798dd43613f043e960a3de239b8f7ee6da', 82, '95f31589-561f-4372-b028-9c41dcdcf2f5', NULL, '[]', 0, '2022-03-31 05:07:59', '2022-03-31 05:07:59', '2022-04-01 08:07:59'),
('2e741b9437d8dfc79525a8b3c11bf51477d40313646ed487c58ac57eac0cba60587ffcb5b5b1f4e8', 90, '95f52c77-5088-48cb-9e62-ea69708829ad', NULL, '[]', 0, '2022-04-01 05:44:22', '2022-04-01 05:44:22', '2022-04-02 08:44:22'),
('2ef6140f9399dfeb0ea2beef7caba11118e3529510f27112c20f1f44b943c4999e6af9ed83a0426f', 77, '95f4f31d-5179-4a8a-857c-7e241e6fcb07', NULL, '[]', 0, '2022-04-01 03:01:57', '2022-04-01 03:01:57', '2022-04-02 06:01:57'),
('3a2bda9d02ec33bf0f7f3a7091869ebebd80ffc7627910f23c1d634a2467795d5e4f66c9b33b2e88', 80, '95f320cc-46bd-4230-b643-4ec42fa21f07', NULL, '[]', 0, '2022-04-01 05:42:29', '2022-04-01 05:42:29', '2022-04-02 08:42:29'),
('3d418f9340c0e341282cf5a5cea5cc264cde2b4a1cee1a6569c63a6beeb336d271d538b1a916738b', 13, '95ed3332-ec07-4b92-a78e-17841bd30e7c', NULL, '[]', 0, '2022-03-28 06:33:52', '2022-03-28 06:33:52', '2022-03-29 09:33:52'),
('41ebcd692abd429a771df9feb0d7ea185b413ee7ac00cdfb16150fdc62e6976daaec9bfb1061f833', 92, '95f2feb9-16fa-41f5-a7e0-1827461d67ff', NULL, '[]', 0, '2022-03-31 05:57:24', '2022-03-31 05:57:24', '2022-04-01 08:57:24'),
('47329383fdae32cbe3c670343abcfb1bdd4740519f5767241f81ea4364099a46ae2ed8567f94d873', 9, '95eb14c3-4305-4923-a9f5-b397d3baa4a8', NULL, '[]', 0, '2022-03-28 03:32:06', '2022-03-28 03:32:06', '2022-03-29 06:32:06'),
('48fe66485105bcca741a92ee52021338dc0691abc1386da14a981cd8a0034dce63c756fa443af34b', 91, '95f2f2cf-2768-4dd5-93e3-16858afafd9e', NULL, '[]', 0, '2022-03-31 05:08:28', '2022-03-31 05:08:28', '2022-04-01 08:08:28'),
('4fbab6a0749a38b425d314354fd6d46054f448820aac97a3ac5d361784ba55305d662a290e0bdbc8', 92, '95f2feb9-16fa-41f5-a7e0-1827461d67ff', NULL, '[]', 0, '2022-03-31 05:38:40', '2022-03-31 05:38:40', '2022-04-01 08:38:40'),
('6cf48830c7298a7aa18e000f6b78378790bec68d0f77c41333592187a10ad3e084ee3582cf21dcc5', 10, '95ed140b-4b69-403c-8723-4fb4dcc2630f', NULL, '[]', 0, '2022-03-28 05:24:54', '2022-03-28 05:24:54', '2022-03-29 08:24:54'),
('6f59c7a1d6ec7f82adbd49b1a5c74103ab51066b33b485071a0aacc4f2018781a5d5216eaacbce19', 92, '95f2feb9-16fa-41f5-a7e0-1827461d67ff', NULL, '[]', 0, '2022-03-31 06:23:37', '2022-03-31 06:23:37', '2022-04-01 09:23:37'),
('7060940ac473333961a57af2599b3e0e7163f8ce37c087ae37224f9d970b6c489e7b55be113c30e2', 91, '95f2f2cf-2768-4dd5-93e3-16858afafd9e', NULL, '[]', 0, '2022-03-31 05:13:36', '2022-03-31 05:13:36', '2022-04-01 08:13:36'),
('7a6d5b5391be175e4cf521b7953165746afa8680dc6f0f49fa370a2243b5d2cf55236ddb5b01aff3', 91, '95f2f2cf-2768-4dd5-93e3-16858afafd9e', NULL, '[]', 0, '2022-04-01 03:00:40', '2022-04-01 03:00:40', '2022-04-02 06:00:40'),
('811822b5d71b287eca5e15e15459ff85961958f607188afb0679f669d5cb610c44b2a15ba44d38f1', 13, '95ecf1ea-8bea-48c6-8ae5-4d8121e46e5a', NULL, '[]', 0, '2022-03-28 03:31:03', '2022-03-28 03:31:03', '2022-03-29 06:31:03'),
('8486c9b78d7be0657a30a1fd10c3060e4343db3379dfdf5fc5b0ef013b3aaadf2381d3f0b4047c1e', 1, '95e9ed4b-daa7-4bf4-b587-852e440a52e7', NULL, '[]', 1, '2022-03-27 16:14:38', '2022-03-27 16:14:38', '2022-03-28 19:14:38'),
('85412231d9a084bad850cc18616cdf5bc8cbbb26d1e13a15ab0fe90e26b4991eda854d934df1e482', 86, '95f30ed3-ec1e-499b-b051-0d27b057cb3e', NULL, '[]', 0, '2022-03-31 04:30:20', '2022-03-31 04:30:20', '2022-04-01 07:30:20'),
('8b8e209164348e19ee11037c2384222e2ddf1628566b4db613858487814dabe49656b3eafbf04932', 1, '95e9ed4b-daa7-4bf4-b587-852e440a52e7', NULL, '[]', 0, '2022-03-27 16:00:15', '2022-03-27 16:00:15', '2022-03-28 19:00:15'),
('9049c4432f01d1cc914c28df7d86e2aef45af2bf85eca2958361dd4c95e91e6a011e19f2a4af8d44', 1, '95e9ed4b-daa7-4bf4-b587-852e440a52e7', NULL, '[]', 0, '2022-03-27 16:04:29', '2022-03-27 16:04:29', '2022-03-28 19:04:29'),
('910b86889db6bd5656129385225c9eaa1f264bc80f97f6072e8fc48378344faebd91808a14cfae2e', 92, '95f2feb9-16fa-41f5-a7e0-1827461d67ff', NULL, '[]', 0, '2022-03-31 06:26:39', '2022-03-31 06:26:39', '2022-04-01 09:26:39'),
('98917c26c1a611702daae271533039667e60dccff0bbb11f5b254a45b0b08ad899f32d3478cb3f2f', 1, '95e9ed4b-daa7-4bf4-b587-852e440a52e7', NULL, '[]', 1, '2022-03-27 15:32:11', '2022-03-27 15:32:11', '2022-03-28 18:32:11'),
('9d00ce5fa817f5aa03a885b6445d1ed603d9ca9472a207fa43f8aee32b8539bc6c5695174c4923d1', 1, '95e9ed4b-daa7-4bf4-b587-852e440a52e7', NULL, '[]', 0, '2022-03-27 15:06:06', '2022-03-27 15:06:06', '2022-03-28 18:06:06'),
('a00c02e471f4c63d20f45508e5788a4345270327eadd1077c638823e1c85633cbf149fb48da97e20', 1, '95e9ed4b-daa7-4bf4-b587-852e440a52e7', NULL, '[]', 1, '2022-03-27 15:56:25', '2022-03-27 15:56:25', '2022-03-28 18:56:25'),
('a1803ebdccd496a4b101ea14e861fcfe902317ac2d5f0aa3ed61bbd21658f36751dbd0153b5adbaa', 83, '95f51618-6e49-4a18-b5cd-bd2247fc3d84', NULL, '[]', 0, '2022-04-01 04:40:18', '2022-04-01 04:40:18', '2022-04-02 07:40:18'),
('aa9146a9afc3ef48d39fb7fe289d3aa3b1aa2dd39f1905c4d28e9995c5333f70db7a47e0ef500b8a', 1, '95e9ed4b-daa7-4bf4-b587-852e440a52e7', NULL, '[]', 0, '2022-03-27 14:53:54', '2022-03-27 14:53:54', '2022-03-28 17:53:54'),
('abd2542b9e8bb754fe3eae48d081bc34490e2ee0fa884d23613d368c36594c8ccc24d89f25f40f8a', 13, '95ecf93c-f9d3-49b8-8757-6fa142dd733b', NULL, '[]', 1, '2022-03-28 03:51:50', '2022-03-28 03:51:50', '2022-03-29 06:51:50'),
('ac37a8baee318d329958d4556296f9bf8578e4d4880ba76fccd7bab6bf5e27e02606cec36f6356a5', 1, '95e9ed4b-daa7-4bf4-b587-852e440a52e7', NULL, '[]', 0, '2022-03-27 19:15:43', '2022-03-27 19:15:43', '2022-03-28 22:15:43'),
('ad148e8d9fd3e7e36759e9bd22ba98178caa6f2ddec5469df6cfbf2a11131419232b0d9a35ed5599', 1, '95e9ed4b-daa7-4bf4-b587-852e440a52e7', NULL, '[]', 1, '2022-03-27 15:54:20', '2022-03-27 15:54:20', '2022-03-28 18:54:20'),
('b205a9045c9ad06606885b4ba1413b1599a6bb9bb4b160e3c00a466f1f5028e546f011c637034bf2', 92, '95f2feb9-16fa-41f5-a7e0-1827461d67ff', NULL, '[]', 0, '2022-04-01 03:17:30', '2022-04-01 03:17:30', '2022-04-02 06:17:30'),
('b48e2ae96057f3a4d75f18072c654efac082ec5dfb2b7167caa9ec6afced2d2022555dbffa0f5fdc', 79, '95f32de7-d76d-414d-8c9f-7d446dc957b9', NULL, '[]', 0, '2022-04-01 05:46:14', '2022-04-01 05:46:14', '2022-04-02 08:46:14'),
('b765ecb7dc87d57b28be3e87eef9a8f7cabdfe75c8a53a1942f7e15a1620f8c9f3c2d16bd41abe5b', 1, '95e9ed4b-daa7-4bf4-b587-852e440a52e7', NULL, '[]', 1, '2022-03-27 19:15:22', '2022-03-27 19:15:22', '2022-03-28 22:15:22'),
('cd1e674a051f5906ff38c3ba419a75fe5c9c984a5e4395ca60628ef928e819e9b19afb15cf25e313', 1, '95e9ed4b-daa7-4bf4-b587-852e440a52e7', NULL, '[]', 1, '2022-03-27 16:01:02', '2022-03-27 16:01:02', '2022-03-28 19:01:02'),
('cda7e501b5618da6ac250db29531a7958f577d4851534139d926163b3fac3d4e800a446a13a1a82c', 1, '95e9ed4b-daa7-4bf4-b587-852e440a52e7', NULL, '[]', 1, '2022-03-27 14:47:40', '2022-03-27 14:47:40', '2022-03-28 17:47:40'),
('d1d877fa16a7402ef33681b736bfe273e7308fc09343145ccc2916f26897fd96af2954bfa3ed11c0', 1, '95e9ed4b-daa7-4bf4-b587-852e440a52e7', NULL, '[]', 1, '2022-03-27 16:18:47', '2022-03-27 16:18:47', '2022-03-28 19:18:47'),
('d2e277036ba07a34b63ad3de241967c231012a7428185fb69e8e03bdce440b44d66b4f20ad16d181', 79, '95f3277f-e582-482c-8200-da9883c1fc71', NULL, '[]', 0, '2022-04-01 12:54:19', '2022-04-01 12:54:19', '2022-04-02 15:54:19'),
('d9832491ff430beed0f8dc44feab1130fe17882490df2f6ec90a33288a4d0b73d9fbd885ef6b8406', 20, '95eb1db8-ebbe-4f03-a5fc-72a62054a5cf', NULL, '[]', 0, '2022-03-28 03:30:36', '2022-03-28 03:30:36', '2022-03-29 06:30:36'),
('da416e2b971daf9903163c28af706d479dbe849b817a9c0c883ae82933de7d16ccf4a5b309b2b346', 1, '95e9ed4b-daa7-4bf4-b587-852e440a52e7', NULL, '[]', 1, '2022-03-27 15:57:34', '2022-03-27 15:57:34', '2022-03-28 18:57:34'),
('dd839f3fda9dc3fa51c0af469f8ecbb686a27d4001e5edb9c505466b45c78518df4cb5843fb89dde', 13, '95ed3332-ec07-4b92-a78e-17841bd30e7c', NULL, '[]', 0, '2022-03-28 08:29:06', '2022-03-28 08:29:06', '2022-03-29 11:29:06'),
('de5ac752db4772e261e90b4476eacb360cdf55b3440fa95d09325d278f21a991df3401bdce7c885f', 80, '95f320be-b780-4c73-befb-4a113631e37e', NULL, '[]', 0, '2022-03-31 06:35:34', '2022-03-31 06:35:34', '2022-04-01 09:35:34'),
('de964461116436c6e361f0c6230f24efcf9ba190ddaf0c30c178a918da01030fb58b62ca0309a036', 90, '95f52c77-5088-48cb-9e62-ea69708829ad', NULL, '[]', 0, '2022-04-01 05:42:28', '2022-04-01 05:42:28', '2022-04-02 08:42:28'),
('e08e4a3726754e22c01d93aa4cd2af29a65d94efc7d234810248e60d7767aaa98d40580968e5affc', 87, '95f3289f-04c6-461a-a872-87d3a5baca4c', NULL, '[]', 0, '2022-03-31 05:39:31', '2022-03-31 05:39:31', '2022-04-01 08:39:31'),
('e1c83074a2b4e2aa21ca8a8140ad083e97fa71b4b7345afaf1a2a2687d9c8426cc94f79a56afb594', 1, '95e9ed4b-daa7-4bf4-b587-852e440a52e7', NULL, '[]', 1, '2022-03-27 16:16:53', '2022-03-27 16:16:53', '2022-03-28 19:16:53'),
('e9759b13352e671ab1c3b63c83fa6d86e2bce47e02ec106a97b520b9fb0442b80bd033ee81ef109d', 91, '95f2f2cf-2768-4dd5-93e3-16858afafd9e', NULL, '[]', 1, '2022-03-31 05:14:36', '2022-03-31 05:14:36', '2022-04-01 08:14:36'),
('ed9955d5049f95b588b673d4e77669d299e25db8d2734e031bb63e8030ceaa32ba562e48a1bc7be8', 87, '95f3289f-04c6-461a-a872-87d3a5baca4c', NULL, '[]', 0, '2022-03-31 06:14:40', '2022-03-31 06:14:40', '2022-04-01 09:14:40'),
('f0b76ec0af4784694ffb553e5a06239e98deee7948555ec734b43579eea1a7ad786add4db88ebc7a', 90, '95f52c77-5088-48cb-9e62-ea69708829ad', NULL, '[]', 1, '2022-04-01 05:42:46', '2022-04-01 05:42:46', '2022-04-02 08:42:46'),
('f150b5af099060a69764e0115377627ed8166d5d7ac013aa7e4d6d4176c76620630f5751279f4d51', 86, '95f30ed3-ec1e-499b-b051-0d27b057cb3e', NULL, '[]', 0, '2022-04-01 03:03:32', '2022-04-01 03:03:32', '2022-04-02 06:03:32'),
('f5eb4758b7b1b59805f80e3ae863e198d478030902ccee604cc04bc994691377e3a84234934f579a', 1, '95ebd205-1fd3-4cd3-9b80-b7ff2c851d04', NULL, '[]', 0, '2022-03-27 16:44:23', '2022-03-27 16:44:23', '2022-03-28 19:44:23');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_auth_codes`
--

INSERT INTO `oauth_auth_codes` (`id`, `user_id`, `client_id`, `scopes`, `revoked`, `expires_at`) VALUES
('001bcadecda86ba33ffdcbbf1aef5b2a3118b119e4d3fcc1e0e8b0c48e259f679c10a513f6c465b0', 1, '95ebd205-1fd3-4cd3-9b80-b7ff2c851d04', '[]', 1, '2022-03-27 19:54:22'),
('0097c1da8b13625e8dd9016533c6bbf2ecb99b16350ec3385048f536d534c08c9755b3b3996c9ff0', 86, '95f30ed3-ec1e-499b-b051-0d27b057cb3e', '[]', 0, '2022-03-31 07:41:47'),
('013aeac9ee2fc66e7a17d87f5664604fb37d4c4520d43fbd687f12d24402488debc2186b397a49e8', 79, '95f32de7-d76d-414d-8c9f-7d446dc957b9', '[]', 0, '2022-04-02 09:43:21'),
('01ccc93739d407fa4592e1a09a0a3a98fb093326c0c61c2fc31ff905e6351dca46b0fcffe8495706', 79, '95f32de7-d76d-414d-8c9f-7d446dc957b9', '[]', 0, '2022-03-31 09:14:40'),
('02b06a3bca0144db1ba841351a66cac0a5ff350ad0d9768bc5929a52d859a6e6993366e4ac94cc01', 92, '95f2feb9-16fa-41f5-a7e0-1827461d67ff', '[]', 1, '2022-03-31 09:33:37'),
('0678a0c01f6c81eee8eb8f9d8fb3c79d9b4ff8ee6c0c0d2b65c2de27071a04bd5cb8e1b8bc609f4f', 86, '95f30ed3-ec1e-499b-b051-0d27b057cb3e', '[]', 0, '2022-03-31 07:41:51'),
('071ef16ba1d906ec083609894c00393139d001cb84c81533c3826475642b0d382b5afbb0b7325039', 86, '95f30ed3-ec1e-499b-b051-0d27b057cb3e', '[]', 0, '2022-03-31 07:45:16'),
('0bb697eb38be1cbc0326a905b57c78de8969e4d709a91d860638f6eff8451a1b8f1865c701502a69', 1, '95ebd205-1fd3-4cd3-9b80-b7ff2c851d04', '[]', 1, '2022-03-27 19:32:38'),
('0c1d5e77ed63f30f986d350e5db2762ce39b7a7beb29e4932d6756f5439373bada16f5d763736aaf', 1, '95e9ed4b-daa7-4bf4-b587-852e440a52e7', '[]', 1, '2022-03-27 19:14:29'),
('0d060f5ef2e5db34fbaa284abd778ddec770e612e12eaa36257004a2902700b22767c7f7fe8555b7', 91, '95f2f2cf-2768-4dd5-93e3-16858afafd9e', '[]', 0, '2022-03-31 08:24:00'),
('118523a0876d761c75da0ca9a0dc15465563cd2a11beadac6b4d0369af136873992b3ad457076a32', 117, '95f32de7-d76d-414d-8c9f-7d446dc957b9', '[]', 0, '2022-04-02 12:01:37'),
('1713e9a0e7d7ce02348b9887e396ee51bef578c6248ea7a4314ea8a0de7043ca7fad6333497c23f3', 13, '95ed3332-ec07-4b92-a78e-17841bd30e7c', '[]', 1, '2022-03-28 11:39:06'),
('17c6c3f0e264d9970d76b9744b9f49bfe7d1d70c82f3626aab8c62e02715a25d5c229b9118cf162a', 79, '95f32de7-d76d-414d-8c9f-7d446dc957b9', '[]', 0, '2022-04-01 11:50:44'),
('1a5f31249265dd4ca72713d524a099a3deaddf3a478d70d4e37b972cedb949a7cf6fefb04410b118', 80, '95f320cc-46bd-4230-b643-4ec42fa21f07', '[]', 0, '2022-04-01 09:23:13'),
('1abbb849ba3bf3b4bba2bfdd0acea400028c6a8c596b7c902380ae2dd4beac2b27dfc36db4e6f048', 79, '95f32de7-d76d-414d-8c9f-7d446dc957b9', '[]', 0, '2022-04-01 12:04:19'),
('1da040353bd694283ff3519108935bc4cf39bc6087cb43590361865fe1c2db0871c1ac1987baba01', 80, '95f320cc-46bd-4230-b643-4ec42fa21f07', '[]', 0, '2022-04-01 09:29:52'),
('1f4a59c1ce253e51053b274cf16b6ea628734153d195a34a6e81b44831f37af3b7757d1cc58e773f', 79, '95f32de7-d76d-414d-8c9f-7d446dc957b9', '[]', 0, '2022-04-01 09:21:17'),
('23811d2e54d4411cc0230f1b448d64bc6e8b3fdca0f07f584f3ae99628810cb61a98df0f43260672', 1, '95e9ed4b-daa7-4bf4-b587-852e440a52e7', '[]', 1, '2022-03-27 19:11:01'),
('238160e8226ae3890abd132e07c7d544e355ab303f0f9492e3bf541ad2977cb7c060a36b485b1a7b', 115, '95f32de7-d76d-414d-8c9f-7d446dc957b9', '[]', 0, '2022-03-31 13:10:47'),
('23f0199e29f57b474e6807d2ff170c85dfbb21f1abe608ee157e6ae9d8f9666e8eddcf0fae1c2fca', 80, '95f320cc-46bd-4230-b643-4ec42fa21f07', '[]', 0, '2022-04-01 13:56:13'),
('26610065ccaed4e8db6f2823075b9fcb1ce16781f51483e69d9f2d7843b08ac2570f915cdd6babbe', 90, '95f53476-616c-4c05-8173-0a0800212550', '[]', 0, '2022-04-01 09:15:51'),
('281755e117c67ec61f2bb21da19904d96a9ed1a42b5d9743063ff5cf2411046ed0b8a666b8a14ffc', 86, '95f30ed3-ec1e-499b-b051-0d27b057cb3e', '[]', 0, '2022-03-31 07:41:46'),
('28f6d405349c4ed1a695529a75e5919acaf731efd10024606ce71f40f16798dc3264ae8fa8b0c63e', 79, '95f32de7-d76d-414d-8c9f-7d446dc957b9', '[]', 0, '2022-04-01 11:47:49'),
('29b0db84d36f285030277b43aef243ed58e0d8e759952ec0a51cf4cc06388ede0a6fb7d36d8ffa9c', 80, '95f320cc-46bd-4230-b643-4ec42fa21f07', '[]', 1, '2022-04-01 08:52:29'),
('2c63a97aeee4909388be1bc93ea7b3813b1bbf39b9cf0b0c8d82ee09fcb85635902e35228dc8fe3e', 90, '95f52c77-5088-48cb-9e62-ea69708829ad', '[]', 1, '2022-04-01 08:52:45'),
('2d41a01b36eb1e3cafb9ae588c7c115e7f133a5e89156b173f6c31b42b9fa8be570fd541db98e7e4', 79, '95f3277f-e582-482c-8200-da9883c1fc71', '[]', 0, '2022-04-04 19:15:30'),
('34575c740e97ec5890d5e583296776d27c498437999e58591d4a4f5135791c7ce19ae876e6186036', 79, '95f32de7-d76d-414d-8c9f-7d446dc957b9', '[]', 0, '2022-04-01 09:14:44'),
('369898bc444fee767ac32c6118f9f6af3a61dd219bf7767aa1557bf67e7a1c317b0e4aa7cb14646d', 79, '95f32de7-d76d-414d-8c9f-7d446dc957b9', '[]', 0, '2022-04-01 09:18:48'),
('369dd4782e2099b9d9dc22c7a0916781b7626b6218be81641b4bc9be311d9eab432603ee870451df', 80, '95f320cc-46bd-4230-b643-4ec42fa21f07', '[]', 0, '2022-04-01 09:25:24'),
('38b1db4b1b3a2bf032abbe06b2d42c7fab6eb51db2fcffe3382764d0df8531db99000318ebf733da', 80, '95f320cc-46bd-4230-b643-4ec42fa21f07', '[]', 0, '2022-04-01 09:16:20'),
('38cff8d4a5d67419c739a54a97731b81eb44bd227ff1adc414e52edb4082a2ad1b2b95e49603d3a1', 80, '95f320be-b780-4c73-befb-4a113631e37e', '[]', 0, '2022-03-31 09:45:47'),
('3913bd8b8a41400d4aab790df618d5b501d90af70cf7d7c0b8418de4c0dfb7ccd22c8191700fee5c', 80, '95f320cc-46bd-4230-b643-4ec42fa21f07', '[]', 0, '2022-04-01 09:03:32'),
('3ad84eb430bc64e1897f5916c6af1eb35d3f45a5e299b7d30c0f114929a08f976bc8a00c68348d8e', 9, '95eb14c3-4305-4923-a9f5-b397d3baa4a8', '[]', 1, '2022-03-28 06:37:42'),
('3b5cf128032196111be819bfe552ce3059c1405b00663d43d0242ed5b199a00e396ccdd25ec7e4cd', 1, '95e9ed4b-daa7-4bf4-b587-852e440a52e7', '[]', 1, '2022-03-27 18:03:54'),
('3c96710da364f96892fabdc4f20548e318037a75ae7e4576d5fa2aa81c6030a3ea729f5a12e748b3', 117, '95f32de7-d76d-414d-8c9f-7d446dc957b9', '[]', 0, '2022-04-02 08:55:58'),
('3d5b3bc8e43d1ab5adc74643ac8dd82535687e2ef1d3b1ab3a9a3af8e5a0f547ac85010115c10be2', 79, '95f32de7-d76d-414d-8c9f-7d446dc957b9', '[]', 0, '2022-04-01 11:49:51'),
('401dc0b987b61e85fa872438f16d4afc30ceff996dc6bd74d2ef7f3768c868a9aa797ab0ed5b4e87', 1, '95e9ed4b-daa7-4bf4-b587-852e440a52e7', '[]', 1, '2022-03-27 19:07:34'),
('42bb77e006d5871152f52ec4c99940c337e663e32e85bbfcc57475d9dabbc323f318b8c915a20d45', 80, '95f320cc-46bd-4230-b643-4ec42fa21f07', '[]', 0, '2022-04-01 08:56:04'),
('451e897b7d1d5e83137d4f64a931d5c4f962cc6b0784a98fceb3a8a157dbe1ddf87a99340495ec25', 90, '95f532c2-67c3-429f-bb95-465d80aa7bdd', '[]', 0, '2022-04-01 09:10:28'),
('463d9e0de2da6177f7c393c5c99ca30716d97b1c5cf713129e2791de64d1267928dbf165b6bc5fbb', 79, '95f32de7-d76d-414d-8c9f-7d446dc957b9', '[]', 0, '2022-04-01 09:13:54'),
('47047cd8366032da4b65ec2999c7f6582c1c1d94ee8f8e2da92f7f71f935c32c532ac88f885c6099', 79, '95f32de7-d76d-414d-8c9f-7d446dc957b9', '[]', 0, '2022-03-31 09:15:41'),
('4788e08914bd685f2deda334eea30eeb4db2db5b66234f9595452d74a1e6e78dddf4e6237394f95d', 77, '95f4f31d-5179-4a8a-857c-7e241e6fcb07', '[]', 1, '2022-04-01 06:11:57'),
('4851771f9a5101df7ab623f4bffa0cb201a85b194edbf914d06821e44449c1891fe88a585fe73824', 79, '95f32de7-d76d-414d-8c9f-7d446dc957b9', '[]', 0, '2022-04-01 11:42:08'),
('489c3c9005b6250c02360755344f1668141fac61e67736e928076ded0f8369ed503751c88599d09b', 92, '95f2feb9-16fa-41f5-a7e0-1827461d67ff', '[]', 1, '2022-03-31 08:48:39'),
('4992e12472086ac196822c1f455eb109c0b693d374211ce7e1d7bf20b6fe669d59087f1e3b1d1212', 79, '95f32de7-d76d-414d-8c9f-7d446dc957b9', '[]', 0, '2022-04-01 11:40:20'),
('4a13c7bd8c7ca86f6ac57396fdb54e5563ed17719edac33f36be8ee36c60d82c1fe118a8f390eef2', 79, '95f32de7-d76d-414d-8c9f-7d446dc957b9', '[]', 0, '2022-03-31 09:21:11'),
('4b31697bf42130a4408ed2ecbc596ee41203766ed60349fa69bb3b56debda76b6227fe4932919068', 80, '95f320cc-46bd-4230-b643-4ec42fa21f07', '[]', 0, '2022-04-01 13:58:15'),
('4d4495dfba5fe5759a025404639c138e5d1e50cbecb4d311c098793a4d019d77094f151942d34e6a', 79, '95f3277f-e582-482c-8200-da9883c1fc71', '[]', 0, '2022-04-04 19:25:24'),
('4e2a1f63c24634013c903b22a840407a65b8409e94ecf800490fe3407b60cf044cf0fed93c7e9b4d', 90, '95f52c77-5088-48cb-9e62-ea69708829ad', '[]', 1, '2022-04-01 08:52:28'),
('4ebe621f09c4d562b9f3a5dfc571031499c7f6ca1ce7154514469f58f70855f8dda08240dba0dc34', 117, '95f32de7-d76d-414d-8c9f-7d446dc957b9', '[]', 0, '2022-04-02 08:54:42'),
('527e9f75259d01b00042faffabe6952e40ee83cec2299586c0261cc5914b8a29675ab1b105133da9', 79, '95f3277f-e582-482c-8200-da9883c1fc71', '[]', 1, '2022-04-01 16:04:18'),
('5281c9e38902431642fabd1ecc2b7a45c106fed71d4ea41b3d36fac8b421d9071996241b6b97c388', 86, '95f30ed3-ec1e-499b-b051-0d27b057cb3e', '[]', 0, '2022-03-31 07:45:25'),
('52adf3836aa88f2d360c3387798c1863a1e179a4c7b20437094cc116d2f2741b41a46224ec596fe2', 79, '95f32de7-d76d-414d-8c9f-7d446dc957b9', '[]', 0, '2022-03-31 09:18:17'),
('53e50526e300c47cbe0843a25a182ac83fa67e35bd6bb7fb0ad637dfd5db724b0e26b451a66a0842', 92, '95f2feb9-16fa-41f5-a7e0-1827461d67ff', '[]', 0, '2022-03-31 09:45:43'),
('54e4e3d424560b95c99aceb421721ee7a2a6b9b8f278b5c13862a896895e8e76df808f5d9e1d338c', 79, '95f32de7-d76d-414d-8c9f-7d446dc957b9', '[]', 0, '2022-04-01 11:39:32'),
('572aacd1d3b0ce1acedd4868298abaa8505876bfd81377f34d597b96448c0749ef221155c1ade1c1', 79, '95f32de7-d76d-414d-8c9f-7d446dc957b9', '[]', 0, '2022-04-01 11:33:55'),
('57d6bc8e206b5b2864906b512ce46bb7d1b3865814e3baaa7b5e54be6bf1a7dd19eeef57d4fb32ec', 79, '95f32de7-d76d-414d-8c9f-7d446dc957b9', '[]', 0, '2022-04-01 11:50:58'),
('57efd3ebf70b104915b4d825daac42ff160ced77632868c437ad198f963e46be5b17209f738ff24a', 79, '95f32de7-d76d-414d-8c9f-7d446dc957b9', '[]', 0, '2022-04-02 09:42:17'),
('58cdbdc58bd7ca4c89e0f9a22a9a25d7a1ca02ecc9d322f3788b5113fe853b1b3e217ef9fbb41c82', 91, '95f2f2cf-2768-4dd5-93e3-16858afafd9e', '[]', 1, '2022-03-31 08:24:36'),
('5a8ad52d9ed23defe5b31a05ed973ead684a6c7f5a558f889bda28f45dfcaaecbcecceeb4c9cbed6', 86, '95f30ed3-ec1e-499b-b051-0d27b057cb3e', '[]', 0, '2022-03-31 07:45:28'),
('5b4fd8f8e455ddc23c9434fd914143e4d91974b9f58d088ebbee7f88aa22a3202c9c2d9f9a49f873', 80, '95f320cc-46bd-4230-b643-4ec42fa21f07', '[]', 0, '2022-04-01 08:57:08'),
('5cc6969c75c61623b3e83852c7487897192df040040ff5cb63768d008bf734dba0b8aec32d399967', 91, '95f2f2cf-2768-4dd5-93e3-16858afafd9e', '[]', 1, '2022-04-01 06:10:39'),
('5cfa1f1af736b56c54433b3743842920bd782179982e78a29d71e354bb07bc34862fc217c233fb5b', 1, '95e9ed4b-daa7-4bf4-b587-852e440a52e7', '[]', 1, '2022-03-27 22:25:42'),
('5e89126e11f207b04aab4e1d533ded8cf47c671bcab42a2d1664d882e0ed251d3520a90dc7658fee', 10, '95ed140b-4b69-403c-8723-4fb4dcc2630f', '[]', 1, '2022-03-28 08:34:53'),
('5f818f66ad01871b1cac4192a8e51245d9120d980b707032a4b0c0aa5539c33c67bcdce212eb2d81', 86, '95f30ed3-ec1e-499b-b051-0d27b057cb3e', '[]', 0, '2022-03-31 07:46:04'),
('5fc7dd68cd14235d7970e729578cfc52df6cfaa61445e3c332dbb40844e87d1e9a075d7f62ed2698', 91, '95f2f2cf-2768-4dd5-93e3-16858afafd9e', '[]', 0, '2022-03-31 08:23:56'),
('608b852eb9828ad88247a8f4596082928979c9fc89cbd5c3b003f42bb734861f1b3002a723612fce', 80, '95f320be-b780-4c73-befb-4a113631e37e', '[]', 1, '2022-03-31 09:45:34'),
('62a2e5a314ca59113dbfc856918e386c85c5eff1ffa90525d86ff58186f885c7271c77f15d49a01a', 79, '95f32de7-d76d-414d-8c9f-7d446dc957b9', '[]', 0, '2022-04-01 11:50:06'),
('64e474758061ec7bc388997b9ee33cbde0f521294914f87dd10516f5b562277ffa9dd5fd1f872f6b', 80, '95f320cc-46bd-4230-b643-4ec42fa21f07', '[]', 0, '2022-04-01 09:15:41'),
('6513fd0960a894b025816ebceb153e537d4b4047bed3a595f828c73bbf874b4788f90b51480ee91c', 1, '95e9ed4b-daa7-4bf4-b587-852e440a52e7', '[]', 1, '2022-03-27 19:11:53'),
('66817ec2416817f0138cbd7b7b3d34f6ad39fab3a26e1006f6e9a8b8ba55d11bd7c124eb601d3ca9', 91, '95f2f2cf-2768-4dd5-93e3-16858afafd9e', '[]', 0, '2022-03-31 08:24:02'),
('6985a6e60ad889a48bf10a9cf7358e72c9669e640ef039e75901c520501404b26d509f32d3464d23', 13, '95ed3332-ec07-4b92-a78e-17841bd30e7c', '[]', 1, '2022-03-28 09:43:52'),
('69c01ac63df0019e371635fc0eb2fab0f3b796d8899f10e3e9f2e7a884223913d568b55d62121cda', 1, '95e9ed4b-daa7-4bf4-b587-852e440a52e7', '[]', 1, '2022-03-27 19:24:36'),
('6a6f5c90e0ed6d84d1d4ec8772003ab8c671da2458da0ecb87e39089405cf61e62e53d8ea8dedd67', 1, '95e9ed4b-daa7-4bf4-b587-852e440a52e7', '[]', 1, '2022-03-27 19:10:14'),
('6b8b6ac82b712208d8ef3ef9c4ada7bd0fc4fb78720bb38b7019a726a38850df1ca28f309fc47153', 79, '95f3277f-e582-482c-8200-da9883c1fc71', '[]', 0, '2022-04-04 19:49:53'),
('6c8aabc9fe71916b6682c9284ffcd810c307c1f40b3cf2e7a9078515132c4502f4991f5a0ff527ba', 92, '95f2feb9-16fa-41f5-a7e0-1827461d67ff', '[]', 1, '2022-04-01 06:27:29'),
('6f8e1fe5867511ad5a684147bae64dc81ee78d8fad5ab0f0bb1331f5e56ad14fceab0c0ac51e6ded', 80, '95f320cc-46bd-4230-b643-4ec42fa21f07', '[]', 0, '2022-04-01 08:58:44'),
('704d1ed3025272ee10545fa1166a330ee26c881bd00d9de437fbaea75ab0887c5a00f8fad1563180', 1, '95e9ed4b-daa7-4bf4-b587-852e440a52e7', '[]', 1, '2022-03-28 05:12:39'),
('72b89877e0e533dd03979c6a0ec03e86a954270b6f8c5cf8a527595b4ce1f5f12bf2551f0e5170b0', 79, '95f32de7-d76d-414d-8c9f-7d446dc957b9', '[]', 0, '2022-04-02 09:11:35'),
('72c455ae861580094af6589ac36caadc0991f1ae4a11a213b1d7d09324e43e2671c11fb42ce14cbc', 79, '95f32de7-d76d-414d-8c9f-7d446dc957b9', '[]', 0, '2022-03-31 09:17:10'),
('74d36b8aabe19d2e88be22b05d789fbc931db7f1198814eb92c8dd1c34e6559d4ec6854aa53a85bd', 80, '95f320cc-46bd-4230-b643-4ec42fa21f07', '[]', 0, '2022-04-01 09:30:45'),
('74fa1f4b1e2a12f8a4cd481359d3f64340aa793ea266dd30582b25e6f30c9397cea161b00fbe542a', 86, '95f30ed3-ec1e-499b-b051-0d27b057cb3e', '[]', 0, '2022-03-31 07:45:13'),
('757111f0c3cba094125f94b8204175a3b2378fc3da667fe644f784682a37a3971261e56db0a85708', 79, '95f32de7-d76d-414d-8c9f-7d446dc957b9', '[]', 0, '2022-03-31 09:32:29'),
('7a2ea6259e39c97977d29954ee7d048b824e6a9772d46d4fc4475a0f1000b7b2431119e05ed8f92e', 79, '95f32de7-d76d-414d-8c9f-7d446dc957b9', '[]', 0, '2022-03-31 09:10:24'),
('7b5a7dee5face1677bdc0896ea4fcc8b8a72fe6e2eaf9359ec0b15fa6efd3c3fdf68111490de94f8', 79, '95f32de7-d76d-414d-8c9f-7d446dc957b9', '[]', 0, '2022-03-31 09:17:41'),
('7c2aadec87629592d5f2d23e910fc76b9f12443d665e37b8565323c86d9b650975af2d652a180c66', 79, '95f32de7-d76d-414d-8c9f-7d446dc957b9', '[]', 0, '2022-03-31 09:12:20'),
('7d81f12004d6eb2fbad4061e976748b2ec359df429f594ad9c967c405acee54bb1476c82f7525610', 82, '95f31589-561f-4372-b028-9c41dcdcf2f5', '[]', 1, '2022-03-31 08:17:59'),
('7e99e5b37f8a98cecb48818150a37ae65e84e2edaf3d5e0bf34faa86ef0f4ab2ecbf813d581df15f', 79, '95f32de7-d76d-414d-8c9f-7d446dc957b9', '[]', 0, '2022-03-31 09:11:41'),
('7ed308c4c835a723f03939b618c7f2a4c44dd45407e9a7208715479dc6d0f8e84ee1b8f64b6c20c2', 79, '95f32de7-d76d-414d-8c9f-7d446dc957b9', '[]', 0, '2022-03-31 09:21:58'),
('817b2e4472587d251c92a140051be67a0f241821b044a49ed72a2e42c1de480cf7d03d9c3d3b5694', 80, '95f320cc-46bd-4230-b643-4ec42fa21f07', '[]', 0, '2022-04-01 09:33:33'),
('82c983a37af65f7fa5c6aa2cc243edd7d288e3b72c0c83148ae94192edd489b0e169070ce198ffe4', 86, '95f30ed3-ec1e-499b-b051-0d27b057cb3e', '[]', 0, '2022-03-31 07:46:46'),
('83601e1e73f3b6fc3b96ebdeaf32d489dad96aa4ce8ea6d9f0543a43f7848c75175489a307821e9b', 117, '95f32de7-d76d-414d-8c9f-7d446dc957b9', '[]', 0, '2022-04-02 09:07:03'),
('83f8e52a93d9aae2d03271d88dc831092c45294b1011466bba0d59ca3656a700af34e2bbd5d1a0c4', 20, '95eb1db8-ebbe-4f03-a5fc-72a62054a5cf', '[]', 0, '2022-03-28 11:17:15'),
('84b3e1df67b093826f2de9347a1706250f48131e7a96f043d18ba9ed63ce5a053ecaa5a8418a4bac', 9, '95eb14c3-4305-4923-a9f5-b397d3baa4a8', '[]', 1, '2022-03-28 06:42:06'),
('860b0a42803e38562375aa0277564053ff6a03c6fda6441ee145f2e5f58bf18c72ff4932089daacc', 79, '95f32de7-d76d-414d-8c9f-7d446dc957b9', '[]', 0, '2022-03-31 09:33:13'),
('86339859a101f9d9013050e78599c4f62f45ae5e26de8a98691150957e58e67647a6aa6226d1a671', 90, '95f53476-616c-4c05-8173-0a0800212550', '[]', 0, '2022-04-01 09:15:45'),
('866c66d4d99eca408757805c3e470b1a72f6c40589063ac56192279639d79ebfbee90adbf698ebe2', 86, '95f30ed3-ec1e-499b-b051-0d27b057cb3e', '[]', 0, '2022-03-31 07:41:52'),
('86cab607981e6e0dfb7b4dd331097e33072e052d5fb417fdee3e2112007dde401d6913666444052f', 79, '95f32de7-d76d-414d-8c9f-7d446dc957b9', '[]', 0, '2022-03-31 13:52:44'),
('8aa06a537c5cc069d49dfbc6cbd362b12713bbdbb4ce3ee087c5916cd9c9e08db1ed80c20c743e8f', 79, '95f32de7-d76d-414d-8c9f-7d446dc957b9', '[]', 0, '2022-04-01 09:21:10'),
('8cf30bce873656f58890933ac18b82eb6c5a09fc3c66a574d7bc55e4b9a70c3948ffc03104fe4e72', 79, '95f32de7-d76d-414d-8c9f-7d446dc957b9', '[]', 0, '2022-04-01 11:40:34'),
('8d28fe3f1bb58971a3f5d1421e3f29147b8713235c515285c10b8af0a88f0808b2b1992ab60d6e53', 1, '95e9ed4b-daa7-4bf4-b587-852e440a52e7', '[]', 1, '2022-03-27 19:26:52'),
('8ec6b31cf57946753420183e941a24b83a01ba0c60468a2c94fcf90a443eecedb3dbda9af66808dd', 83, '95f51618-6e49-4a18-b5cd-bd2247fc3d84', '[]', 0, '2022-04-01 07:49:21'),
('912278e530d12e765b09e1899a71ab0b6eeeb3aa89967cb96be2f16f1b8d1ade74debdaf623b457e', 79, '95f32de7-d76d-414d-8c9f-7d446dc957b9', '[]', 0, '2022-04-01 13:52:53'),
('922f9f799aa695f8474e9922f03a1b71d4037187cd10391eedff23ea077c13a1971f9fae0b2a4af7', 117, '95f32de7-d76d-414d-8c9f-7d446dc957b9', '[]', 0, '2022-04-02 08:58:04'),
('95c59e9eb881ca67fe8c922d5d985c66c6a7f1dfbb32bbe4a9d40458fc1cda85e894f181dde4ce06', 91, '95f2f2cf-2768-4dd5-93e3-16858afafd9e', '[]', 0, '2022-03-31 08:23:53'),
('972a9808a2fe8b83b7c03c251a8594dfd66533e1feeb690c761a450b179f0be658ab707115bb80df', 80, '95f320cc-46bd-4230-b643-4ec42fa21f07', '[]', 0, '2022-04-01 13:53:38'),
('97fa671ffc0624f9ef34d562daecb8b9cd21ba166243429c527942027a1a691e03f8e2fe517e21c2', 79, '95f32de7-d76d-414d-8c9f-7d446dc957b9', '[]', 0, '2022-03-31 13:51:57'),
('980673f3b2c742e94986d089096460430f84d9227edbc14128cf4407316df9c5ab7c10989f7d32cd', 79, '95f32de7-d76d-414d-8c9f-7d446dc957b9', '[]', 0, '2022-04-01 09:16:18'),
('98b782306196b573dd24a964df68644856c496bae3beedfed470566400183e0f9a69fc6d23bc7f80', 80, '95f320cc-46bd-4230-b643-4ec42fa21f07', '[]', 0, '2022-04-01 14:02:16'),
('9a81cb7e0110804bbea26d98e041b565489d8c19204bb6ede3c500983c6891d1538f73f9790ebee6', 79, '95f3277f-e582-482c-8200-da9883c1fc71', '[]', 0, '2022-04-04 20:06:13'),
('9ad9c30bb64e8fa4ecaf5fc27c821fe593c46765d2ce1c56163d3fa45388696770bb02a8c8ecd5c0', 80, '95f320cc-46bd-4230-b643-4ec42fa21f07', '[]', 0, '2022-04-01 09:15:57'),
('9af66b6bece0499c86f8759d084488d333e9916508443c8847661c28bcb2d6690a3978b40933cacc', 79, '95f3277f-e582-482c-8200-da9883c1fc71', '[]', 0, '2022-04-04 20:05:53'),
('9b1938098af6314b4f12da2b6dab25adfa23519fa57534feed140f7a69e00ed6418e4a01c70f5d0e', 79, '95f32de7-d76d-414d-8c9f-7d446dc957b9', '[]', 0, '2022-04-01 09:18:37'),
('9c8ae5fe5750c1c032f23b3dba0463c4babacedcf19dda8370691c33607f8afe8e2ba6369f9154e7', 92, '95f2feb9-16fa-41f5-a7e0-1827461d67ff', '[]', 1, '2022-03-31 09:07:23'),
('9c9312b4f1e10723b61e1ab7d97899ee3864073e187ad0c3599f5ed7bd763b1debc1e3c2d4c4b012', 1, '95e9ed4b-daa7-4bf4-b587-852e440a52e7', '[]', 1, '2022-03-27 22:25:22'),
('a1bbefe16bdd2edc75c56a61a92400ca8bec90f9460c965b8a116d3b7992178b13d8d658fc6f1904', 79, '95f32de7-d76d-414d-8c9f-7d446dc957b9', '[]', 0, '2022-04-01 11:30:22'),
('a1d22add12a19aabb108cb0e02c4f27ef67f37d03b0079d79e0922297645944b7c25e97fc0ef2b77', 86, '95f30ed3-ec1e-499b-b051-0d27b057cb3e', '[]', 0, '2022-03-31 07:45:19'),
('a1eb765b192f1004e08cafcbd481e6b57202c751b6b0ca6bafdbb088a84e10b4f629d851fbcfc5f2', 1, '95e9ed4b-daa7-4bf4-b587-852e440a52e7', '[]', 1, '2022-03-27 19:06:25'),
('a45e57235e08ccb6b0b7c498e0a77cf055f2cbfdebd14a7248536d73ffc391cc9a4788ad04bfd4af', 79, '95f32de7-d76d-414d-8c9f-7d446dc957b9', '[]', 0, '2022-04-01 11:48:00'),
('a49319686f9c27a3e25bb1bd8a21e12c7646d807fdc4ccaf93358da5b915ab0eec54df63c4fe9369', 90, '95f53476-616c-4c05-8173-0a0800212550', '[]', 1, '2022-04-01 09:16:31'),
('a4e31f8e8c437b684743129b0f86979aa660f18439f839335fa19a9bc934203d0913dbc8d11c6f9d', 79, '95f32de7-d76d-414d-8c9f-7d446dc957b9', '[]', 0, '2022-03-31 13:56:37'),
('a4f066dd8578a4517edf7e216429e060f222396797a5f6bbad82bf3176b334bee509960c2d1ccab7', 79, '95f32de7-d76d-414d-8c9f-7d446dc957b9', '[]', 0, '2022-03-31 09:14:35'),
('a757b7c7425c3b52bd8e11278c83707cb20e6924386669eec5a3172959586c5a59bf997e2c2cdf51', 91, '95f2f2cf-2768-4dd5-93e3-16858afafd9e', '[]', 0, '2022-04-01 09:18:08'),
('a80060fe948b65fb494b327dbc4735e92dd90b930a6810b05a587d1cf25b1b1985fc9d332fe2da99', 80, '95f320cc-46bd-4230-b643-4ec42fa21f07', '[]', 0, '2022-04-01 09:31:35'),
('a8f493c3920ca2297b02c3c08bba49b9f0a4ff3ae1f190ceff15ef60a81843b1025e123834bdc850', 87, '95f3289f-04c6-461a-a872-87d3a5baca4c', '[]', 0, '2022-03-31 08:50:02'),
('a9555cf899177c2d792bc574b3f7c4152d5c39bd739bb1c0773d4651d650bdb04245b4794594890f', 86, '95f30ed3-ec1e-499b-b051-0d27b057cb3e', '[]', 1, '2022-03-31 07:41:33'),
('a963793dce900b99bff484d99a5cfa61a80a228a51e40f73ccac49867d32e9be0917f3d4208b747e', 79, '95f32de7-d76d-414d-8c9f-7d446dc957b9', '[]', 0, '2022-03-31 09:07:29'),
('ae792ab9f942030faca82489101641ea346366582e730dfbd8f10a646836e92208739369ee9f1312', 79, '95f32de7-d76d-414d-8c9f-7d446dc957b9', '[]', 0, '2022-04-01 11:40:40'),
('afa6349275acaf50da9d12a31fde855036e0dda914e157341163f5fce08a4e40d30f0b936c11d244', 80, '95f320cc-46bd-4230-b643-4ec42fa21f07', '[]', 0, '2022-04-01 09:15:29'),
('afa9c7d788c572b6d96c12d6fb4028fd454aa9f8bf3ceb4b450601b08d7fb9ceb5248679aa3f481a', 86, '95f30ed3-ec1e-499b-b051-0d27b057cb3e', '[]', 1, '2022-04-01 06:13:31'),
('b066e3b332e3782f975d0b8ec8e26fa03bbefc25ff40ec3ce14e6b336ae668a81ba117829b5d6d34', 79, '95f3277f-e582-482c-8200-da9883c1fc71', '[]', 0, '2022-04-04 19:51:24'),
('b24a83c822384ff5445452579462159de472276e87628061e9c5ab61fd58afba51a60994167644d2', 91, '95f2f2cf-2768-4dd5-93e3-16858afafd9e', '[]', 0, '2022-03-31 08:23:44'),
('b2dc0c5fa28baba16ed246751c788506f96eefdd79dba1f1a4ca8c57e8c2eb1def0c70645f037299', 90, '95f52c77-5088-48cb-9e62-ea69708829ad', '[]', 1, '2022-04-01 08:54:22'),
('b35174d73a299a72ec5aeabb5d40c44a9813a8c41923f806eeacb82d969ac96b7687b7ed58c97267', 1, '95e9ed4b-daa7-4bf4-b587-852e440a52e7', '[]', 1, '2022-03-27 19:04:19'),
('b556c2079e09c86a801f45b088177f6957fcd8cd88f67ff300311c25ae27b95bb1b42d875532ee6d', 80, '95f320cc-46bd-4230-b643-4ec42fa21f07', '[]', 0, '2022-04-01 14:16:03'),
('b572ef68a5661aeea6b095283d1145c144ec56b9ae93d983874a3c83e9601fc4683cc87517abf2f4', 79, '95f32de7-d76d-414d-8c9f-7d446dc957b9', '[]', 0, '2022-04-01 11:32:05'),
('b795b3bde7983dd93bee6ba7f6d671cf06fba5f14d7a346f16e33fc546e853fe8cb71c16a3457b31', 79, '95f3277f-e582-482c-8200-da9883c1fc71', '[]', 0, '2022-04-04 19:15:02'),
('b8d9acc37ef1ef130604b818cd65bcb34edb0f49118edf8be107954ed7e074a479f8e10a4c7b8809', 79, '95f32de7-d76d-414d-8c9f-7d446dc957b9', '[]', 0, '2022-04-01 09:14:53'),
('b9af14c7bd91cb16fc78c140a86684d790b7e5fc121029855f274d33e0d46b40a933f0a8355d72d7', 13, '95ecf1ea-8bea-48c6-8ae5-4d8121e46e5a', '[]', 1, '2022-03-28 06:41:02'),
('bb2bd4abcc5a5b52efdff06bfb7433606b1141c8d7b6c7cf510b03f358cbca148aade7540eafa978', 79, '95f3277f-e582-482c-8200-da9883c1fc71', '[]', 0, '2022-04-04 20:06:19'),
('bb313fbc8e9e265fe35b4b793a98ad17a3e25a8d1c6dddad47beaa0df41afd50a59ff01dc68934d2', 79, '95f32de7-d76d-414d-8c9f-7d446dc957b9', '[]', 0, '2022-03-31 09:18:23'),
('bc2fabfcc642cb5e34c041de96e6bdb056312ff5c6612ad2416a380fead4b225de9142a7dc1683ea', 87, '95f3289f-04c6-461a-a872-87d3a5baca4c', '[]', 1, '2022-03-31 08:49:13'),
('bd66aa1da3d8c31cb0a5a57ce91671e64fe032490870c05df8ff6e59be9362b575a9798d09caca2a', 80, '95f320cc-46bd-4230-b643-4ec42fa21f07', '[]', 0, '2022-04-01 08:56:11'),
('bf046d73a0a5c379e8eaa3b4a871971de40b37ecd9de283fcf59a29b70bded52aad47e4d1cbc065e', 79, '95f32de7-d76d-414d-8c9f-7d446dc957b9', '[]', 0, '2022-04-01 08:53:52'),
('bf6ceeca52486fe120f2db1a94df2c4d64b7bf1b0e9e8820685c54a3ed2edb90af8ed26da327010a', 79, '95f32de7-d76d-414d-8c9f-7d446dc957b9', '[]', 0, '2022-03-31 09:18:12'),
('c10ab97a3f48e35da86290494fe15ed85370b5da539453c9a63bd71960fa3c3de11a360708c1fbd3', 87, '95f3289f-04c6-461a-a872-87d3a5baca4c', '[]', 0, '2022-03-31 08:49:38'),
('c11389cb35f9d5a051cf1fed09d22967f9ccb5fbc0d80b01fc2fd50b15574ad42a63dc4fa688459a', 86, '95f30ed3-ec1e-499b-b051-0d27b057cb3e', '[]', 1, '2022-03-31 07:40:19'),
('c13830a107b34187d5152c420f1c1aa873a0711ff86afa0436fcfcc130ea6efd56fa877e3c818bf6', 79, '95f3277f-e582-482c-8200-da9883c1fc71', '[]', 0, '2022-04-04 19:00:33'),
('c2bb59f76341bc7e61c6e877d4b3e8f91c8c40e30fb4b8ca4c4c5b0308239e06d02f70cd88005a75', 79, '95f32de7-d76d-414d-8c9f-7d446dc957b9', '[]', 0, '2022-04-01 09:14:39'),
('c6916491568d3bd184d0939546065d53cd3647f9ccd54bafd6ea86a07fabaea25e7bb559f85ed71e', 80, '95f320cc-46bd-4230-b643-4ec42fa21f07', '[]', 0, '2022-03-31 09:46:47'),
('c804e66d30ac3b665b8665ec5c4e1aad01987c98f8bffa01d73f08ae7bc619ac112ec0b109af06ef', 79, '95f3277f-e582-482c-8200-da9883c1fc71', '[]', 0, '2022-04-04 19:51:38'),
('c84df214135a9ec758869cbb24d0faef146f1683eec1be4e669bc4b347d84fe29f910d60c4128615', 79, '95f3277f-e582-482c-8200-da9883c1fc71', '[]', 0, '2022-04-04 20:06:31'),
('c867e3c57d06242adbb65d35a8d91a39d3f7f82e91fb969c5b61aa3fe8c7a51b7e5e382e6cae8ebd', 91, '95f2f2cf-2768-4dd5-93e3-16858afafd9e', '[]', 1, '2022-03-31 08:18:27'),
('c98750ddfb413050e8d3d87e19c0f742acec5fe0384addde53563ee4e2c9e7a1b55aeb913aef54d1', 80, '95f320cc-46bd-4230-b643-4ec42fa21f07', '[]', 0, '2022-04-01 09:24:50'),
('ca99ae34d0b911aebab2fe46049968c4bafb6555f5d0808292d51411bd925c4e2c00125db17bd391', 80, '95f320cc-46bd-4230-b643-4ec42fa21f07', '[]', 0, '2022-04-01 09:32:45'),
('cb49df95bc8a699b10b979c09181656d325ab05ab24f126e5322ac139e99f1829234c1a7f120c53b', 79, '95f32de7-d76d-414d-8c9f-7d446dc957b9', '[]', 0, '2022-03-31 09:19:34'),
('cb7dcdb4e43203b2e24a9db7c7ff4d0ff3a6b6fba8805c5e95f40fb5a9d887ddff7fec2ba94c0f0e', 80, '95f320be-b780-4c73-befb-4a113631e37e', '[]', 0, '2022-03-31 09:45:51'),
('cd01359865c647143b0b8f7c50a003f489e6f3959199e2886253f25e62baa1755e0e94dc00cc3be8', 79, '95f32de7-d76d-414d-8c9f-7d446dc957b9', '[]', 0, '2022-04-02 09:13:59'),
('cd5642953ceb2d52f3ec883bf5d79229ee29c4f28940b83bb1aa6e8c4fa383604102d65da0aecdbd', 86, '95f30ed3-ec1e-499b-b051-0d27b057cb3e', '[]', 0, '2022-03-31 07:40:38'),
('cd81694b1c6d2d057791d5c3fd1ebf7f16e5a6d170c47a5fde5f931ce752c23ec5b6068fda97b1a0', 79, '95f3277f-e582-482c-8200-da9883c1fc71', '[]', 0, '2022-04-01 09:05:27'),
('ce7ad7f61b60c11dfd4c209b38c76ae1ea275bbcf66bcbab6825153ecefeb4bbc06f3e0e91a002da', 79, '95f32de7-d76d-414d-8c9f-7d446dc957b9', '[]', 0, '2022-04-02 09:41:58'),
('d06cf5faccbf338dcd4c27d87b50e1cbe176b477112a287338c4da296f2aa4767060c9b3ba1f8fac', 86, '95f30ed3-ec1e-499b-b051-0d27b057cb3e', '[]', 0, '2022-03-31 07:45:18'),
('d0b0b9c1ea75c6867182d52f314f0e58ce30642addead32010bbf28bf113b4dddd81871fa7d921eb', 1, '95e9ed4b-daa7-4bf4-b587-852e440a52e7', '[]', 1, '2022-03-27 18:16:05'),
('d19d3fe26e8a19d51657ed1a454508611371ad80d8ab7af29b9a71bd04ba32d43286993f59208440', 79, '95f3277f-e582-482c-8200-da9883c1fc71', '[]', 0, '2022-04-04 19:00:19'),
('d35fad69a732d2b935381871bfad6cd960ed856f0eeab25c81f662fb0a30c8ac4305d218d471afbf', 92, '95f2feb9-16fa-41f5-a7e0-1827461d67ff', '[]', 0, '2022-03-31 09:45:42'),
('d382a6107f1c39e9158f6b0ce3027d0a52792c5b92767187832db2d356aab5ed0c39dffb88136ce4', 1, '95ebd205-1fd3-4cd3-9b80-b7ff2c851d04', '[]', 1, '2022-03-27 19:43:50'),
('d730fb39b154b24dae802fbbbe7837937de6345c9aa013ff30f8ba92cc1a50debdba206b0f92a1fc', 79, '95f32de7-d76d-414d-8c9f-7d446dc957b9', '[]', 0, '2022-03-31 13:52:19'),
('d8890c28705c29dfe199dcd9a0c271ba7e226c3c1566473bdcb690cfd92dbb616de0abcd8d42a951', 80, '95f320cc-46bd-4230-b643-4ec42fa21f07', '[]', 0, '2022-04-01 09:22:34'),
('d9e02c8cc9b9f9c428247a8921175530deb7eb844b631df77a37cbfd5fccb0cf7d1f0a0ccad9b515', 91, '95f2f2cf-2768-4dd5-93e3-16858afafd9e', '[]', 0, '2022-03-31 08:23:48'),
('da0de4cad3f66407f37cd936ac143625316aba29c6ff9d26300d7169e5d904394048bb27be0cc2da', 1, '95e9ed4b-daa7-4bf4-b587-852e440a52e7', '[]', 1, '2022-03-27 19:09:06'),
('db52fd69abfc135934ec80bc93a2ffadb1094fbc400528be4225bb7e22da1091b0372c1dcb361f74', 83, '95f51618-6e49-4a18-b5cd-bd2247fc3d84', '[]', 1, '2022-04-01 07:50:18'),
('dbcf2a14faeab1d680b98ccc11519950f3fb149ee74b4c64a53875f25efeb6dd775d3fd6e562cdf7', 79, '95f32de7-d76d-414d-8c9f-7d446dc957b9', '[]', 0, '2022-04-01 12:04:10'),
('dc408a360df9117405056ef0cdce571f5db79e58040589207abfb73e270c530646885f51523e05d5', 91, '95f2f2cf-2768-4dd5-93e3-16858afafd9e', '[]', 0, '2022-03-31 08:23:39'),
('dc9433406477b84ca07087da37cdea5ec963a87fd1968ab90ff1a45ead4ccd59de9028fff9904e92', 79, '95f32de7-d76d-414d-8c9f-7d446dc957b9', '[]', 0, '2022-04-01 09:21:20'),
('de3f0694ffa0aa3750ed5a6452eb903f534d27086873276b4291286f6f39ccb033723fdcf275931e', 79, '95f32de7-d76d-414d-8c9f-7d446dc957b9', '[]', 0, '2022-04-01 09:37:30'),
('df617a0d0899593a28c69307765d0751bd72afffe161224ddfc704bfc7d5679a2ce52410653d31fc', 13, '95ecf93c-f9d3-49b8-8757-6fa142dd733b', '[]', 1, '2022-03-28 07:01:50'),
('dfdc44cea43859eda4de26cdbee04c5a785eac8f3b942ad44f94a54a544d8766473765ee2020c68c', 79, '95f32de7-d76d-414d-8c9f-7d446dc957b9', '[]', 0, '2022-04-01 09:18:42'),
('e0925546c46d7af904d14f95c0ab9014ab978529258e3a700f4b1746009a6024402f4deed7b6c692', 1, '95e9ed4b-daa7-4bf4-b587-852e440a52e7', '[]', 1, '2022-03-27 18:42:11'),
('e4ca8b1ea47e1b65fc6a6e3ea87f4e52d818d9b8742b9dcf7a7c739af9f5edcd839dae85884651ca', 78, '95f32fa3-0476-4a0b-843d-1b83105732f6', '[]', 0, '2022-03-31 09:08:50'),
('e4da4c3e2e58009787f076777f0b7dde7e073fb56d25d31314307476d6b06c6d04e80d0f64c847b7', 92, '95f2feb9-16fa-41f5-a7e0-1827461d67ff', '[]', 1, '2022-03-31 09:36:39'),
('e596802865cf3df782777b5e855180c86f22ce7952181e1a08342cbb90274763c9b2827f7c78bc39', 80, '95f320cc-46bd-4230-b643-4ec42fa21f07', '[]', 0, '2022-04-01 13:52:29'),
('e5f26154649d087407a0dd7980f0d21afb02e2c4c63ceafc5220c66cf07b1ebf2ffa27f5f9ead5e4', 86, '95f30ed3-ec1e-499b-b051-0d27b057cb3e', '[]', 0, '2022-03-31 07:45:54'),
('e749f43a8043ddf1926ebe0fd833efd03541e943fe5155d1487436ecaa467c085155253d67fb7bd2', 91, '95f2f2cf-2768-4dd5-93e3-16858afafd9e', '[]', 1, '2022-03-31 08:23:36'),
('e7ace0a1123ae751046d944b23325dac4cec152892c0f4cd64aff4a35545024e22fe6a6a4173700e', 79, '95f32de7-d76d-414d-8c9f-7d446dc957b9', '[]', 0, '2022-04-01 11:29:23'),
('e8a14f6f164ae73e5ee09d07e67f540dd0ed63cdf7de1b6b897fbcfbe5d80622ba8d68c92ce445b5', 79, '95f32de7-d76d-414d-8c9f-7d446dc957b9', '[]', 1, '2022-04-01 08:56:13'),
('ea616ea76250847ffaa51771afbbbe9ffd09a9ef32a6e1122d09bd5bf0b9c2a732dd957734d4f0c3', 1, '95e9ed4b-daa7-4bf4-b587-852e440a52e7', '[]', 1, '2022-03-27 17:57:40'),
('eb0ddd8ee09a38809423c314432945d9e66e6f2c78372e72c64134e27569c05d449ada7f01b175bf', 79, '95f32de7-d76d-414d-8c9f-7d446dc957b9', '[]', 0, '2022-04-01 11:39:49'),
('eb9f2611d71ab64ad18a2bd6a04db195eb393784ef0aee4dbf7146178ef6102b90a1278b88a5c06a', 79, '95f32de7-d76d-414d-8c9f-7d446dc957b9', '[]', 0, '2022-04-02 09:44:43'),
('eda33a186542dd731930ac9b4f4d020bccb32ab67e6c0520b958f5fa77ff508617edbfd4dd91dadf', 87, '95f3289f-04c6-461a-a872-87d3a5baca4c', '[]', 1, '2022-03-31 09:24:39'),
('ee8fcbb8e1e2b62b15bb212b505641010a02071b84d5a53b1cca08b58b132b0db3d6c01a3cb8bf27', 80, '95f320cc-46bd-4230-b643-4ec42fa21f07', '[]', 0, '2022-04-01 09:23:42'),
('eeb94b5f3310c6fc20e03b7ed6ae9ccf4f2239b23a806b9fce7e228047d601d6cfaef90898c2687d', 20, '95eb1db8-ebbe-4f03-a5fc-72a62054a5cf', '[]', 1, '2022-03-28 06:40:35'),
('f02f3c00c7c756fc3d2ee44217e2148d6fb59ea154048828591d125b077615f4211911712b483c8a', 1, '95e9ed4b-daa7-4bf4-b587-852e440a52e7', '[]', 1, '2022-03-27 19:28:46'),
('f0ce88c17111bc819b5d9fd3ec0b3223db54d45040545a72b80389188dca95a1712f0541959b06ad', 79, '95f32de7-d76d-414d-8c9f-7d446dc957b9', '[]', 0, '2022-03-31 13:49:40'),
('f3b823abd1ae34e8cee75cde3ab302a56b740f19beadb40bd33c4b02f518d822f96f04f3d0b6c2c7', 79, '95f32de7-d76d-414d-8c9f-7d446dc957b9', '[]', 0, '2022-04-01 09:21:15'),
('f673697f0ed33818c10001be633e1d9001b7e6b57fc27b6d528043c4570707ec889eaea9b2bbcfe4', 79, '95f32de7-d76d-414d-8c9f-7d446dc957b9', '[]', 0, '2022-03-31 09:13:47'),
('f7ef1768a25f7a69273dad32fc2e7c92c5d19bd23dd74187de16c73643f5a10e8709b29a2be28c0f', 79, '95f3277f-e582-482c-8200-da9883c1fc71', '[]', 0, '2022-04-04 19:20:30'),
('f80b6ad0b881b6e3ea5c2f4ee1164b01c264720001a98decf4aeb99adbefe04f377999a3c8179ac0', 79, '95f3277f-e582-482c-8200-da9883c1fc71', '[]', 0, '2022-04-04 19:21:56'),
('f8de9a5197cf7239f98e140df6779a765fee2e9880463d953347321725872915dc0c05a4eea4ef7a', 90, '95f532c2-67c3-429f-bb95-465d80aa7bdd', '[]', 0, '2022-04-01 09:12:53'),
('fb088b1532a6986ee17e46b13aae6149d60731bdfdb80769d758040704658009409cfa02cab2f047', 79, '95f3277f-e582-482c-8200-da9883c1fc71', '[]', 0, '2022-04-04 19:20:06'),
('fb4e9dd0df4c0e409eb7a74ffb43c74c73f85a54f8c801da4c8bfc71d1035727beff7c5159edf73d', 87, '95f3289f-04c6-461a-a872-87d3a5baca4c', '[]', 0, '2022-03-31 08:49:42'),
('fbc9c7e64128fe5e5fe272f90e36fcfcb1cd12be2c5fe8f3842e6966476f5c4422431fe2dd784456', 86, '95f30ed3-ec1e-499b-b051-0d27b057cb3e', '[]', 0, '2022-03-31 07:41:44'),
('fc3e4f9e803f230b921bfb96440f8b5c32125946879b8dc753ad693313151d35155427f8e24726d7', 80, '95f320cc-46bd-4230-b643-4ec42fa21f07', '[]', 0, '2022-04-01 08:55:45'),
('fca8319afec5e67ad8024d79b92ba2c58f9c4a7918e907658fc13ec3bf2ddfe9b48008f4c6544a4a', 80, '95f320cc-46bd-4230-b643-4ec42fa21f07', '[]', 0, '2022-04-01 09:30:29'),
('fd01c694ee3d0677f291577517aa8f7a13b19fcbfc464e9f7a4b765266938d1200c77baa24aac1b9', 117, '95f32de7-d76d-414d-8c9f-7d446dc957b9', '[]', 0, '2022-04-02 09:05:54'),
('fd94a75dbda3bdd4a1dd29e58d570e174582fbf8e36a8f1716e6e3c8321c17760059fccb7287c694', 86, '95f30ed3-ec1e-499b-b051-0d27b057cb3e', '[]', 0, '2022-03-31 07:40:26'),
('fe06688c60a103822670a28b013a8d825abcd00ab095ba5954e05584262ef4878eb8df5e52bd7f70', 86, '95f30ed3-ec1e-499b-b051-0d27b057cb3e', '[]', 0, '2022-03-31 07:45:22'),
('feb20b8a277bd86b4395ceec3d7009c2a3aeb3b5153ba0c45ab052ff333ecd134683ff0e5777fe12', 79, '95f32de7-d76d-414d-8c9f-7d446dc957b9', '[]', 0, '2022-04-02 09:44:44'),
('ff71c8e37858d7affe9f8d6703d7badade50bc6cc5d29d973fd2ad69590646d87982870af63a8278', 80, '95f320cc-46bd-4230-b643-4ec42fa21f07', '[]', 0, '2022-04-01 08:56:32'),
('ff9b4a1497bdec8ca5ebb06ec98fe0ac448f858280dd606f519074028685c6c5c5758a7a35f670b5', 79, '95f32de7-d76d-414d-8c9f-7d446dc957b9', '[]', 0, '2022-04-01 14:00:56');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
('95d98d66-9500-4939-a44f-8c8352e3d8a6', NULL, 'Laravel Personal Access Client', 'ljKnLPGgbtUcOckBiOk3po5VbgCUQ1vkIjo7bpNI', NULL, 'http://localhost', 1, 0, 0, '2022-03-18 12:08:47', '2022-03-18 12:08:47'),
('95d98d66-970e-4d43-b298-d85edec34270', NULL, 'Laravel Password Grant Client', 'gNjWYQyhnKZVfBGf1zFlarqvSDQPgKyOPawHam6d', 'users', 'http://localhost', 0, 1, 0, '2022-03-18 12:08:47', '2022-03-18 12:08:47'),
('95e9ed4b-daa7-4bf4-b587-852e440a52e7', 1, 'lkmklmlk', 'lLIjXkfi4NMCW8ZfbSCzGT4zEq4H1LLiSnSJBmoW', NULL, 'https://travel.madskill.ru/api/oauth2-callback', 0, 0, 0, '2022-03-26 15:30:10', '2022-03-26 15:30:10'),
('95eaec65-0bce-4517-81a8-aff926a3646d', 14, 'Vovan', 'oDQOumspVLbyCTUgG5aWZ7bSXdz4nbZ4xdirHIXj', NULL, 'https://travel.madskill.ru/api/oauth2-callback', 0, 0, 0, '2022-03-27 03:23:29', '2022-03-27 03:23:29'),
('95eaf568-192e-4624-aca8-1b6f342f23b5', 13, '123', 'IvN5jaueBAP7LLv8ZQmixcjgoGLlovx6UmbuKI0i', NULL, 'https://travel.madskill.ru/api/oauth2-callback', 0, 0, 0, '2022-03-27 03:48:41', '2022-03-27 03:48:41'),
('95eaf6da-55a0-40f8-989a-87bfc3527d75', 13, '123', 'BeXemDtACDtWktor65x5dnxPAZtBvblP946aThMC', NULL, 'https://travel.madskill.ru/api/oauth2-callback', 0, 0, 0, '2022-03-27 03:52:43', '2022-03-27 03:52:43'),
('95eb14c3-4305-4923-a9f5-b397d3baa4a8', 9, 'test', 'ZEiC3LnxQiUGziyQNOpTrQgEvUagHkeMmccwoUFY', NULL, 'https://travel.madskill.ru/api/oauth2-callback', 0, 0, 0, '2022-03-27 05:16:21', '2022-03-27 05:16:21'),
('95eb1db8-ebbe-4f03-a5fc-72a62054a5cf', 20, 'Никита', '66dUM09FB8vDsW9nzajeCFy8WTrg2WbUN1dhnyXv', NULL, 'https://travel.madskill.ru/api/oauth2-callback', 0, 0, 0, '2022-03-27 05:41:25', '2022-03-27 05:41:25'),
('95eb1dd8-bef0-4c7b-be5e-f77a2246b2a2', 20, 'Никита', 'ZdwXzpactb5aWGTB6GO6P6k9UmoDBoKvEDcEc7Db', NULL, 'https://travel.madskill.ru/api/oauth2-callback', 0, 0, 0, '2022-03-27 05:41:45', '2022-03-27 05:41:45'),
('95eb24b6-1dfc-461a-b988-7ed8734f3895', 9, 'testname', 'rbBumnsCPGvUMlL4t5JNeZcVMWbndvuzNHWO6352', NULL, 'https://travel.madskill.ru/api/oauth2-callback', 0, 0, 0, '2022-03-27 06:00:57', '2022-03-27 06:00:57'),
('95eb24f9-548c-4ed1-b5cc-ce79c2edb4ab', 16, 'admin', 'aYiK50BdWtZUK3RPhiZBD2IjpPBReXk9OJCsbDQf', NULL, 'https://travel.madskill.ru/api/oauth2-callback', 0, 0, 0, '2022-03-27 06:01:41', '2022-03-27 06:01:41'),
('95eb26a1-a9a4-4c8b-a682-ac9ceaddae7b', 19, '123', 'GHkem6dtWP91JTTYq1VxoB53Y62eXtJWhBxlnV2o', NULL, 'https://travel.madskill.ru/api/oauth2-callback', 0, 0, 0, '2022-03-27 06:06:19', '2022-03-27 06:06:19'),
('95eb2729-a613-4e72-bc12-0d8a797f0f4c', 9, 'testname', 'DEXgEYQkZPZYsYYjx5HhEUznVPEHA7nTQHek4p8C', NULL, 'https://travel.madskill.ru/api/oauth2-callback', 0, 0, 0, '2022-03-27 06:07:48', '2022-03-27 06:07:48'),
('95eb2960-6e63-4f87-879d-d5a2b2c6da31', 17, 'gg', 'sywP2vRuz7H5KHyyjyGZU0C97q1gO1Kx8Ad9byoP', NULL, 'https://travel.madskill.ru/api/oauth2-callback', 0, 0, 0, '2022-03-27 06:14:00', '2022-03-27 06:14:00'),
('95eb2983-1110-4aa5-a9e1-c57f84510b0b', 17, 'gg', 'WVju8roTqNELgriVCUHFul4Iu7UqDPUuqcVwEdLl', NULL, 'https://travel.madskill.ru/api/oauth2-callback', 0, 0, 0, '2022-03-27 06:14:23', '2022-03-27 06:14:23'),
('95ebd205-1fd3-4cd3-9b80-b7ff2c851d04', 1, 'sergey', '06sBylL6VLRq2aDZrL8MBPUamyBFx820sc03pCXt', NULL, 'https://travel.madskill.ru/api/oauth2-callback', 0, 0, 0, '2022-03-27 14:05:34', '2022-03-27 14:05:34'),
('95ecf1b1-6f7f-44ac-b0d2-0b43d8168735', 13, 'sad', 'xw1QNSuqIxOhRC9OhzbJAK2U6zlvb3NucwBRj3hP', NULL, 'https://travel.madskill.ru/api/oauth2-callback', 0, 0, 0, '2022-03-28 03:29:57', '2022-03-28 03:29:57'),
('95ecf1ea-8bea-48c6-8ae5-4d8121e46e5a', 13, 'niga', 'NVXi4c30yGxXh18Mez5xncSCVW9iPqCqyc90H2z7', NULL, 'https://travel.madskill.ru/api/oauth2-callback', 0, 0, 0, '2022-03-28 03:30:35', '2022-03-28 03:30:35'),
('95ecf93c-f9d3-49b8-8757-6fa142dd733b', 13, 'niga', 'OR0O5SndXg4ihUEZ2vL9sNXUF5uT5mYSY0LrHlfP', NULL, 'https://travel.madskill.ru/api/oauth2-callback', 0, 0, 0, '2022-03-28 03:51:03', '2022-03-28 03:51:03'),
('95ed140b-4b69-403c-8723-4fb4dcc2630f', 10, 'Вася', 'DhKnmIArncr7r6SBWjDr3BzAg6wIK3Q6kEKIP82d', NULL, 'https://travel.madskill.ru/api/oauth2-callback', 0, 0, 0, '2022-03-28 05:06:00', '2022-03-28 05:06:00'),
('95ed1a13-5e2b-415a-9291-3048f13e2e83', 10, 'Вася', '5KixBNlJvEegHbgf36igLDrefEvKTg7sp2rTDHCO', NULL, 'https://travel.madskill.ru/api/oauth2-callback', 0, 0, 0, '2022-03-28 05:22:52', '2022-03-28 05:22:52'),
('95ed3332-ec07-4b92-a78e-17841bd30e7c', 13, 'ssss', 'JUAvKsAw2HWkv96L0NCDOekeBFlDAznZa0zZout3', NULL, 'https://travel.madskill.ru/api/oauth2-callback', 0, 0, 0, '2022-03-28 06:33:07', '2022-03-28 06:33:07'),
('95ed5958-37ae-4dd4-9925-7472645cd107', 13, 'asdf', 'ghl8aHvXdASxNzFgjpCBH7eBTZSSUhUTSDbuy0vC', NULL, 'https://travel.madskill.ru/api/oauth2-callback', 0, 0, 0, '2022-03-28 08:19:47', '2022-03-28 08:19:47'),
('95f2f2cf-2768-4dd5-93e3-16858afafd9e', 91, 'test', 'A31C3wc6R00vH9sEPacDKQBiZ1RcHva4tTBQuajb', NULL, 'https://travel.madskill.ru/api/oauth2-callback', 0, 0, 0, '2022-03-31 03:08:02', '2022-03-31 03:08:02'),
('95f2feb9-16fa-41f5-a7e0-1827461d67ff', 92, 'first', 'u1X84UbihAocyfhDcspkuXrLkp6tiq7w4Wxy5ih3', NULL, 'https://travel.madskill.ru/api/oauth2-callback', 0, 0, 0, '2022-03-31 03:41:21', '2022-03-31 03:41:21'),
('95f30ed3-ec1e-499b-b051-0d27b057cb3e', 86, 'test', 'kyuyc58kKbhuOdnOLW1HlZJzAhdgDHOgo1AK5wfK', NULL, 'https://travel.madskill.ru/api/oauth2-callback', 0, 0, 0, '2022-03-31 04:26:23', '2022-03-31 04:26:23'),
('95f31589-561f-4372-b028-9c41dcdcf2f5', 82, 'ncarolyn', '7MhCjZKCCkdr9AU4mt5b0fDFCTolW2DiCNXrB55e', NULL, 'https://travel.madskill.ru/api/oauth2-callback', 0, 0, 0, '2022-03-31 04:45:09', '2022-03-31 04:45:09'),
('95f320cc-46bd-4230-b643-4ec42fa21f07', 80, '1', '34q9fTR4UAKfOF2w8M7hTFr2cRJZUd0czVTODXpj', NULL, 'https://travel.madskill.ru/api/oauth2-callback', 0, 0, 0, '2022-03-31 05:16:38', '2022-03-31 05:16:38'),
('95f3224e-473f-4e7b-9b8b-6dace825e674', 85, 'daniilkuz', 'iB8wyRa3904EAsXrgMxVNBALVoXt5DSiS83AMAsY', NULL, 'https://travel.madskill.ru/api/oauth2-callback', 0, 0, 0, '2022-03-31 05:20:51', '2022-03-31 05:20:51'),
('95f3277f-e582-482c-8200-da9883c1fc71', 79, 'orlov', '5jPiPVPdGtY58J54i9CqD9WZbZt0cSMhfpwfQm3s', NULL, 'https://travel.madskill.ru/api/oauth2-callback', 0, 0, 0, '2022-03-31 05:35:22', '2022-03-31 05:35:22'),
('95f3289f-04c6-461a-a872-87d3a5baca4c', 87, 'name', 'qLLs9kYebFNCcz6Qcf5sMfJYoffutuhaGB9HebyJ', NULL, 'https://travel.madskill.ru/api/oauth2-callback', 0, 0, 0, '2022-03-31 05:38:31', '2022-03-31 05:38:31'),
('95f329ea-28ab-47ad-a01c-1e6abd4ea367', 87, 'asd', 'omkIWUfIrE0bKhzqEclAt4qRIpjF6Xx9jYPOJn4o', NULL, 'https://travel.madskill.ru/api/oauth2-callback', 0, 0, 0, '2022-03-31 05:42:08', '2022-03-31 05:42:08'),
('95f32b6b-9820-45e9-b653-a21cfa53026b', 79, 'rate', '6aoYzOEAQCAxPSPU8mMRzYVQPvhdIobdKLYVpa88', NULL, 'https://travel.madskill.ru/api/oauth2-callback', 0, 0, 0, '2022-03-31 05:46:20', '2022-03-31 05:46:20'),
('95f32de7-d76d-414d-8c9f-7d446dc957b9', 79, 'orlovD', 'Wfp569bLv8BI0hIZrKfpn2ELwj1Gy5iRfPIVIo53', NULL, 'https://travel.madskill.ru/api/oauth2-callback', 0, 0, 0, '2022-03-31 05:53:17', '2022-03-31 05:53:17'),
('95f32dee-35a8-4db4-8ec1-00e739cfac7f', 78, 'usda', 'ApBV6RI0mBgyBKfV1RgQOzak0S27z6s45HaW4iVt', NULL, 'https://travel.madskill.ru/api/oauth2-callback', 0, 0, 0, '2022-03-31 05:53:21', '2022-03-31 05:53:21'),
('95f32fa3-0476-4a0b-843d-1b83105732f6', 78, 'ewer', 'rlNKmCAZxPlBIIgTqIgW9hViQJfWQFwekNhjLj0t', NULL, 'https://travel.madskill.ru/api/oauth2-callback', 0, 0, 0, '2022-03-31 05:58:08', '2022-03-31 05:58:08'),
('95f33c92-a684-4be3-bb54-90fe68165224', 80, '1', 'shhzwFrTCSAKNl9whLyn11s67Pz0pgGuopYGU81O', NULL, 'https://travel.madskill.ru/api/oauth2-callback', 0, 0, 0, '2022-03-31 06:34:18', '2022-03-31 06:34:18'),
('95f36dde-3a6f-4433-8741-52331236fddb', 88, '2.user12@madskill.ru', 'rERmYdPNLD3XoLDEgCAwKNYokAV9rgPwikRATLyh', NULL, 'https://travel.madskill.ru/api/oauth2-callback', 0, 0, 0, '2022-03-31 08:52:08', '2022-03-31 08:52:08'),
('95f36df7-9757-4ee4-b1aa-0386c952647b', 88, '2.user12@madskill.ru', 'mRGWCqo7Ynier5mk0CJgFjfXNsDIGEOFYMYHQLDf', NULL, 'https://travel.madskill.ru/api/oauth2-callback', 0, 0, 0, '2022-03-31 08:52:25', '2022-03-31 08:52:25'),
('95f4f31d-5179-4a8a-857c-7e241e6fcb07', 77, 'Иван Иванов', 'DpXlmtU3GjSmv7bspZaN1WqhyYX6LWGY3NMZcR5H', NULL, 'https://travel.madskill.ru/api/oauth2-callback', 0, 0, 0, '2022-04-01 03:00:33', '2022-04-01 03:00:33'),
('95f51618-6e49-4a18-b5cd-bd2247fc3d84', 83, 'vasya', 'mI0NN2aAvnFgVDaeYs3stMR0YHLHb3AKo7ICbfHD', NULL, 'https://travel.madskill.ru/api/oauth2-callback', 0, 0, 0, '2022-04-01 04:38:22', '2022-04-01 04:38:22'),
('95f52c3b-ddd1-4970-94c9-0506ce0b6ddf', 80, '123', 'RpEy3xmyIae1FJpNC1IB6pv2GoqOcE33BEO11jDO', NULL, 'https://travel.madskill.ru/api/oauth2-callback', 0, 0, 0, '2022-04-01 05:40:16', '2022-04-01 05:40:16'),
('95f53476-616c-4c05-8173-0a0800212550', 90, 'App-14', 'mZi7eGtODn43whoVFhByAZGjQZxJTh3Cbdru7khI', NULL, 'https://travel.madskill.ru/api/oauth2-callback', 0, 0, 0, '2022-04-01 06:03:16', '2022-04-01 06:03:16'),
('95fb8923-f259-482f-9425-995708020834', 79, 'newname', 'kfC1jErqjAOLZVN3n0CMcgIDxzABfUQz46eB1UZ5', NULL, 'https://travel.madskill.ru/api/oauth2-callback', 0, 0, 0, '2022-04-04 09:35:01', '2022-04-04 09:35:01'),
('95fb8be8-fbc7-4409-931f-40a6e3a599c6', 79, '123asd', 'QSp8uKtcWmPnRTGoMwgLnI726XNyuEwkOZcrRd4I', NULL, 'https://travel.madskill.ru/api/oauth2-callback', 0, 0, 0, '2022-04-04 09:42:46', '2022-04-04 09:42:46'),
('95fba3a9-85a8-4001-9fea-b6679365470c', 79, 'Гугу', 'PqfeSuDnueiBgBSOpfe13dJT54KWj4UfurjETbix', NULL, 'https://travel.madskill.ru/api/oauth2-callback', 0, 0, 0, '2022-04-04 10:49:11', '2022-04-04 10:49:11'),
('95fc0df0-0d18-48e7-ab12-825d6c775354', 79, '123', '5BJM1YK02yZZDJzTXwDKjJJEJxpcbIlIxRFvmL0U', NULL, 'https://travel.madskill.ru/api/oauth2-callback', 0, 0, 0, '2022-04-04 15:46:21', '2022-04-04 15:46:21');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('0265b5eb8be61ad6665226bad57ec1f1ced25096c20fc812a377e7b7ef7c2b7aa6ac0d46999c1276', '4fbab6a0749a38b425d314354fd6d46054f448820aac97a3ac5d361784ba55305d662a290e0bdbc8', 0, '2022-04-01 08:38:40'),
('073c0cbd28ffcd94ae5789a57ca8d29b11ca7f8b314789fb8aef546c96b571e05eff692d90bfad2e', '05df030961ac5e5b72c72d820a28ef22f1fb5cc119cfd6e73c616205fa1274e702db789f0c885f35', 0, '2022-03-28 18:59:07'),
('085792b43de1afb2cb1d665d213d86eef97b2e4a64821a14fe6aaf581038058a58e2dae06cb80396', '7a6d5b5391be175e4cf521b7953165746afa8680dc6f0f49fa370a2243b5d2cf55236ddb5b01aff3', 0, '2022-04-02 06:00:40'),
('0a9edd4361f3e27ec16a69d3e7863cb7bcc90032d9121f8818651cc01f2d53ac9d0104dbc291d456', 'f5eb4758b7b1b59805f80e3ae863e198d478030902ccee604cc04bc994691377e3a84234934f579a', 0, '2022-03-28 19:44:23'),
('0c2de2210d0c36e06d1114dcd4c4808adb415fd3003d567d34ad9e7940de58da6904a943a5ca24b9', '21ca998ea7d3656c9d7a1d2136a8c1dffd405e76c0827cf214753f95297abd6406303a5be1d68fc5', 0, '2022-03-28 19:01:53'),
('0ecd3656cbb9271977bb96ccfffb8c695afa57ed84ccebfaf224c544dc8e5e94597a5257e5bf0bb6', '85412231d9a084bad850cc18616cdf5bc8cbbb26d1e13a15ab0fe90e26b4991eda854d934df1e482', 0, '2022-04-01 07:30:20'),
('1179583819f5a764723303da73b8bb59af0b81cdeb9805bcc7c25738c17a6b6c3406f380e49afae3', '0b9735a35fc959f0d56c2dcfdc8208beefe1f8ad99a12d7e23a120864d792046e9ebf373f3252c74', 0, '2022-04-02 09:06:31'),
('1c16d3460acd120f7c1b26deee4ed932afb540cc3746dd584d702ad9bed284a44a173ddee8cc920e', 'ac37a8baee318d329958d4556296f9bf8578e4d4880ba76fccd7bab6bf5e27e02606cec36f6356a5', 0, '2022-03-28 22:15:43'),
('1c9271c3ae08291ee8b6c49f23d3a7074762150400d312c92b4f8c7a46ce4b0b5d7b7d75c5bacc78', 'e9759b13352e671ab1c3b63c83fa6d86e2bce47e02ec106a97b520b9fb0442b80bd033ee81ef109d', 0, '2022-04-01 08:14:36'),
('2b2ffdc849678442d44e14ab2dfde9022ccf440ce2a702d3de5469e6c7eb6ad55cab727ee982563a', 'b765ecb7dc87d57b28be3e87eef9a8f7cabdfe75c8a53a1942f7e15a1620f8c9f3c2d16bd41abe5b', 0, '2022-03-28 22:15:22'),
('320d24e3d6bafebaa6dae300b1fbb7460d01d449835c5fcea26ae82bb9109d4e804358f7a30fce9a', '9049c4432f01d1cc914c28df7d86e2aef45af2bf85eca2958361dd4c95e91e6a011e19f2a4af8d44', 0, '2022-03-28 19:04:29'),
('3e4e4d2e29eef03cf9202989c543a11b6c26ebd0dc7c8ddc1f227240dacfe45b2a4a726a08daa862', 'd9832491ff430beed0f8dc44feab1130fe17882490df2f6ec90a33288a4d0b73d9fbd885ef6b8406', 0, '2022-03-29 06:30:36'),
('3f8b6ef0b0721302d80fe2d20524aaa2987333a38138500d2f7705ec1278090fa785aee0a2796885', '0642b4840a7a91e167563329bf618d3d898823703f782fe7a2b035d42b9acb4f1bd516ba0acc50d7', 0, '2022-04-01 07:31:33'),
('408bdddbb1de4a2d948f7cf2793dfa05d6e8b3250f80f9556d7a32e1055b00bcc641bb2522419eb3', 'd1d877fa16a7402ef33681b736bfe273e7308fc09343145ccc2916f26897fd96af2954bfa3ed11c0', 0, '2022-03-28 19:18:47'),
('43cc8f02f5a677550ee62a9b77c59514f3899794009de5756cd238ed43ef56dd7f059e658a4e7a94', '41ebcd692abd429a771df9feb0d7ea185b413ee7ac00cdfb16150fdc62e6976daaec9bfb1061f833', 0, '2022-04-01 08:57:24'),
('45411b78e1d1afa39c5f6979cc318cde0f15725959ac2ca7f38591eaf3bc7a17aeeb490479e70165', '3a2bda9d02ec33bf0f7f3a7091869ebebd80ffc7627910f23c1d634a2467795d5e4f66c9b33b2e88', 0, '2022-04-02 08:42:29'),
('4607b59e8d06b5a7b93df02959e2a0d03935683ccbc9a147115d17e337cecc39e60b60e511154f89', 'cda7e501b5618da6ac250db29531a7958f577d4851534139d926163b3fac3d4e800a446a13a1a82c', 0, '2022-03-28 17:47:40'),
('46a7e00bd499b3bb7f315498b07337d842b0c5784d362a23f740cfcc4fa64de304f71b568d18bceb', '0e48c8c1fec895d8d727bda2d688458da0483f992d15cb96928c963d9738921a1e887dda6d9332ec', 0, '2022-03-29 06:27:43'),
('491cf14481d9cd534ed1cc080f4a3bb9bc42574d933fff1cd277e3afbb408d11828521573b313a43', 'da416e2b971daf9903163c28af706d479dbe849b817a9c0c883ae82933de7d16ccf4a5b309b2b346', 0, '2022-03-28 18:57:34'),
('4a5ce70345fbc59e0c488c851de93ef5c286a5883d5cc1bf41021dd5c822741c24cf910d6d1e84c8', '48fe66485105bcca741a92ee52021338dc0691abc1386da14a981cd8a0034dce63c756fa443af34b', 0, '2022-04-01 08:08:28'),
('59444a2dfb7f76e2b08ade8b5faad1912b91be49af6aa093df1f18b68475d0ee15f273c638062574', '2e741b9437d8dfc79525a8b3c11bf51477d40313646ed487c58ac57eac0cba60587ffcb5b5b1f4e8', 0, '2022-04-02 08:44:22'),
('5c03bcacc36694317416fb5f83ca1e33161070d74bc26e52f879c331fb0fb76320cd71594d359c22', '8b8e209164348e19ee11037c2384222e2ddf1628566b4db613858487814dabe49656b3eafbf04932', 0, '2022-03-28 19:00:15'),
('60872ed1161d7ba0d4e25142d7336a48aba0d5f546a9bec676560f784daef217dfdbba29786cdb66', '6cf48830c7298a7aa18e000f6b78378790bec68d0f77c41333592187a10ad3e084ee3582cf21dcc5', 0, '2022-03-29 08:24:54'),
('6659bd5e9b1306c074796a64ff6be0534cbdcea492ca2338e74623e184372705f19d811fdba5e39d', '6f59c7a1d6ec7f82adbd49b1a5c74103ab51066b33b485071a0aacc4f2018781a5d5216eaacbce19', 0, '2022-04-01 09:23:37'),
('6fc1464fadc5fc29be0d5f853302f1232885b648645a5052b3f4977b7334db5da99f2a492ef62736', '2344f6c8745ad33413eb037d55e65dae43e90661f588ef798dd43613f043e960a3de239b8f7ee6da', 0, '2022-04-01 08:07:59'),
('73c64a5b328357bae0fcd8072b4ad2752c58c8af16cb5e0b751f719fab1701150556d5490fb81c48', 'a1803ebdccd496a4b101ea14e861fcfe902317ac2d5f0aa3ed61bbd21658f36751dbd0153b5adbaa', 0, '2022-04-02 07:40:18'),
('787c80ab6ed7d728d4cce9d2a7cb3754a2dfbdb43f784b683cda8035829e3adb6f586112a56e27ed', '811822b5d71b287eca5e15e15459ff85961958f607188afb0679f669d5cb610c44b2a15ba44d38f1', 0, '2022-03-29 06:31:03'),
('78f1be7ef3390acf7d241fdf692cc7d253940965f4166f6c850a640d0f0dbaa7ae2425ead5bd52b7', 'e08e4a3726754e22c01d93aa4cd2af29a65d94efc7d234810248e60d7767aaa98d40580968e5affc', 0, '2022-04-01 08:39:31'),
('7b4395817471fe0e779ef26fff04bd4d3d06557f219d49e53d83405efefdd36304401b45b3951477', '98917c26c1a611702daae271533039667e60dccff0bbb11f5b254a45b0b08ad899f32d3478cb3f2f', 0, '2022-03-28 18:32:11'),
('7d2bdb2dd8ed182cc65b6684450c3b5f9e7874c2d40487b86d1faa8357b4c2a48de81cd6ae5b4fd1', 'cd1e674a051f5906ff38c3ba419a75fe5c9c984a5e4395ca60628ef928e819e9b19afb15cf25e313', 0, '2022-03-28 19:01:02'),
('7e79d3874993e77b131b99b4552c7f35433dd1b251c321ca32c1ca7f683182f1b261b3eefdd2d110', 'e1c83074a2b4e2aa21ca8a8140ad083e97fa71b4b7345afaf1a2a2687d9c8426cc94f79a56afb594', 0, '2022-03-28 19:16:53'),
('837d7679d5877a915ff516ff405889ca7db5dbcfa5e318a96e5e52a40ae5bd3e055c420cd066f86e', '8486c9b78d7be0657a30a1fd10c3060e4343db3379dfdf5fc5b0ef013b3aaadf2381d3f0b4047c1e', 0, '2022-03-28 19:14:38'),
('87f88fff2d355a16639c4f897254cc391c3934498ca41587c2a887884998165a9b3176875df50358', 'b48e2ae96057f3a4d75f18072c654efac082ec5dfb2b7167caa9ec6afced2d2022555dbffa0f5fdc', 0, '2022-04-02 08:46:14'),
('89887efc18170d140c4569052e41063f87964c165f8c7b20d3ca620b963396a11390bb860586644c', '3d418f9340c0e341282cf5a5cea5cc264cde2b4a1cee1a6569c63a6beeb336d271d538b1a916738b', 0, '2022-03-29 09:33:52'),
('8bb88ec7b0fecd1485b6e8ef38258a48695f244cb66ad146fc85817e0be4195458fbd0eed5d3d88f', '1860c8bc4a983d1cd1f807ba9da90493d6511230a80607404fcc077764660c338873ef5bf21bb5ed', 0, '2022-03-28 19:33:51'),
('921ba9d591326e7b024f86131237f5341ce871ba88d72ee4bffe3eb4483bc4e13f8ce23d48487e52', 'ed9955d5049f95b588b673d4e77669d299e25db8d2734e031bb63e8030ceaa32ba562e48a1bc7be8', 0, '2022-04-01 09:14:40'),
('92cc344cea896c4fb410b6ff83242080c9846f0b17663865a414b7c358b9606f468d7ccb5631dadf', 'f0b76ec0af4784694ffb553e5a06239e98deee7948555ec734b43579eea1a7ad786add4db88ebc7a', 0, '2022-04-02 08:42:46'),
('a3d0fb64db6dfff5ff05e891933ec0e5b9aae2ae1f778537fbbdfda76b5569323527dcb3d89a544f', '218c0f9d0cefcf48388a9cd3c73742906986da8d7774057b03d1c4bc785e804342c59a26e27c0fec', 0, '2022-03-29 05:02:40'),
('a6404e939092c99f74ca4c6d7ab1eed60405ccf3ca37e0a8964ea279658ca1a0c023a83d9c6c1939', 'ad148e8d9fd3e7e36759e9bd22ba98178caa6f2ddec5469df6cfbf2a11131419232b0d9a35ed5599', 0, '2022-03-28 18:54:20'),
('aa518b5d160a52e93d061277414ef9a0b7d086aaec63b9dece3da7459b4d2de339a625981a2c87ec', 'd2e277036ba07a34b63ad3de241967c231012a7428185fb69e8e03bdce440b44d66b4f20ad16d181', 0, '2022-04-02 15:54:19'),
('aac10e3bc68a0d7436d293bf350685ae0a262892e57607d63c85844d5a156063e00875d8fab16c9a', '19c42856a51fd5754e50ac2704ccb79ba7d471cf19cd52bba0fc5db93b5853cffdb71752b935fb70', 0, '2022-03-28 19:22:38'),
('bbd830c50f260ff2f53f848d96e397720cc289d5e33e87a287aaf13c4e86edf2331da3a1af97eee0', 'de5ac752db4772e261e90b4476eacb360cdf55b3440fa95d09325d278f21a991df3401bdce7c885f', 0, '2022-04-01 09:35:34'),
('c4eb45e2497c9acc2feb79b24ba9340670cc37577fc48cc4017d5a3db4ecfa007234ff806ff0ccb5', '7060940ac473333961a57af2599b3e0e7163f8ce37c087ae37224f9d970b6c489e7b55be113c30e2', 0, '2022-04-01 08:13:36'),
('d1835ad0195be50aa700519706a2e67e478fc9b035cb3e719da121e87bdb34ceb444e4624e5b8cdc', 'dd839f3fda9dc3fa51c0af469f8ecbb686a27d4001e5edb9c505466b45c78518df4cb5843fb89dde', 0, '2022-03-29 11:29:06'),
('d23c14cd9e712deb5f0b5b3ba1b1bce097176d485a591b1526c43a8361389f3541242e89c166674d', 'a00c02e471f4c63d20f45508e5788a4345270327eadd1077c638823e1c85633cbf149fb48da97e20', 0, '2022-03-28 18:56:25'),
('d951eb6b430d73ade60ab8a132bd11a03645e54454e08ab381ec8da07dedfae091c1b0bf8dfa3c67', 'f150b5af099060a69764e0115377627ed8166d5d7ac013aa7e4d6d4176c76620630f5751279f4d51', 0, '2022-04-02 06:03:32'),
('df4bf7e049aec6171cb3a4ebcdb933fe057b06a4c5e4ff91413dc0c944b9d65917e18b4e079da55b', '2ef6140f9399dfeb0ea2beef7caba11118e3529510f27112c20f1f44b943c4999e6af9ed83a0426f', 0, '2022-04-02 06:01:57'),
('e8df68c40f47c599ac316824e5a178b1e10a357a328e0d7463074b74fa52002f09e6c81f8df11fbb', 'de964461116436c6e361f0c6230f24efcf9ba190ddaf0c30c178a918da01030fb58b62ca0309a036', 0, '2022-04-02 08:42:28'),
('f29a94b62fbd3d49de70e6742c5ebe0c0531fe1ade10cb210071b881e1dee8e7142ad3862f121621', 'abd2542b9e8bb754fe3eae48d081bc34490e2ee0fa884d23613d368c36594c8ccc24d89f25f40f8a', 0, '2022-03-29 06:51:50'),
('f544c3cf22b5ad656f8f82c3076d611f8b6cc22b8bb2e263830763899051c5b5ed589e418cd58fe8', '910b86889db6bd5656129385225c9eaa1f264bc80f97f6072e8fc48378344faebd91808a14cfae2e', 0, '2022-04-01 09:26:39'),
('f5f25d86acc68f992f5bad051d1a6b718f2b11902ceceb0993b8c3798d0d8e3c7b3dce7ef412192b', '9d00ce5fa817f5aa03a885b6445d1ed603d9ca9472a207fa43f8aee32b8539bc6c5695174c4923d1', 0, '2022-03-28 18:06:06'),
('fbc13b4fca4d9c30a510deba4c800fb9ba27bf68a5c3b82c725b9fcb0e9fee677fa33b4b791a6b91', 'b205a9045c9ad06606885b4ba1413b1599a6bb9bb4b160e3c00a466f1f5028e546f011c637034bf2', 0, '2022-04-02 06:17:30'),
('fc3e54b49d11921d1a1b1a94215d1920ee57432c4cef8ecb8bcf803d3e3c65249e0a01e3dfe580ea', 'aa9146a9afc3ef48d39fb7fe289d3aa3b1aa2dd39f1905c4d28e9995c5333f70db7a47e0ef500b8a', 0, '2022-03-28 17:53:54'),
('fe73b35d8af23f9fd750a580c9c7588d23bb408f322c3f9f9b4324105e2640922d5d851b9df6c787', '47329383fdae32cbe3c670343abcfb1bdd4740519f5767241f81ea4364099a46ae2ed8567f94d873', 0, '2022-03-29 06:32:06');

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `photo_attractions`
--

CREATE TABLE `photo_attractions` (
  `id` int(11) NOT NULL,
  `attraction_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `photo_attractions`
--

INSERT INTO `photo_attractions` (`id`, `attraction_id`, `image`) VALUES
(1, 22, 'https://travel.madskill.ru/filemanager/uploads/hqdefault.jpg'),
(2, 22, 'https://travel.madskill.ru/filemanager/uploads/fon1_1.jpg'),
(3, 13, 'https://travel.madskill.ru/filemanager/uploads/fon1_1.jpg'),
(4, 11, 'https://travel.madskill.ru/filemanager/uploads/fon1_1.jpg'),
(5, 15, 'https://travel.madskill.ru/filemanager/uploads/fon1_1.jpg'),
(6, 23, 'https://travel.madskill.ru/filemanager/uploads/fon1_1.jpg'),
(7, 23, 'https://travel.madskill.ru/filemanager/uploads/fon1_1.jpg'),
(8, 23, 'https://travel.madskill.ru/filemanager/uploads/park-gorkogo-v-moskve.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL DEFAULT 'https://travel.madskill.ru/filemanager/uploads/s600.jpeg',
  `city` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `photo`, `city`, `created_at`, `updated_at`) VALUES
(4, 1, 'https://travel.madskill.ru/filemanager/uploads/s600.jpeg', 'Москва', '2022-03-28 05:37:10', '2022-03-28 05:37:10'),
(5, 13, 'https://travel.madskill.ru/filemanager/uploads/s600.jpeg', '1', '2022-03-28 06:19:44', '2022-03-28 06:19:44'),
(6, 10, 'https://travel.madskill.ru/avatar/1648459729.jpg', 'Саранск', '2022-03-28 09:28:49', '2022-03-28 06:28:49'),
(7, 77, 'https://travel.madskill.ru/filemanager/uploads/s600.jpeg', 'Москва', '2022-04-01 03:03:04', '2022-04-01 03:03:04'),
(8, 92, 'https://travel.madskill.ru/filemanager/uploads/s600.jpeg', 'Saransk', '2022-04-01 03:18:49', '2022-04-01 03:18:49'),
(9, 90, 'https://travel.madskill.ru/filemanager/uploads/s600.jpeg', 'Саранск', '2022-04-01 05:44:26', '2022-04-01 05:44:26');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` int(11) NOT NULL,
  `attraction_id` int(11) NOT NULL,
  `like` int(11) NOT NULL DEFAULT 0,
  `dislike` int(11) NOT NULL DEFAULT 0,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `attraction_id`, `like`, `dislike`, `updated_at`, `created_at`) VALUES
(1, 22, 30, 36, '2022-04-02 10:21:14', '2022-04-02 13:21:14'),
(2, 10, 258, 66, '2022-04-02 11:29:47', '2022-04-02 14:29:47'),
(3, 11, 79, 55, '2022-04-02 11:30:27', '2022-04-02 14:30:27'),
(4, 12, 45, 67, '2022-04-02 11:22:40', '2022-04-02 14:22:40'),
(5, 24, 25, 36, '2022-04-02 10:21:15', '2022-04-02 13:21:15'),
(6, 26, 27, 36, '2022-04-02 11:30:05', '2022-04-02 14:30:05'),
(7, 25, 32, 27, '2022-04-02 11:30:28', '2022-04-02 14:30:28'),
(8, 23, 37, 25, '2022-04-02 11:34:07', '2022-04-02 14:34:07'),
(9, 14, 27, 34, '2022-04-02 11:30:28', '2022-04-02 14:30:28'),
(10, 21, 22, 31, '2022-04-02 11:31:44', '2022-04-02 14:31:44'),
(11, 20, 22, 26, '2022-04-02 10:21:12', '2022-04-02 13:21:12'),
(12, 19, 27, 27, '2022-04-02 11:31:45', '2022-04-02 14:31:45'),
(13, 18, 32, 32, '2022-04-02 11:34:07', '2022-04-02 14:34:07'),
(14, 17, 25, 24, '2022-04-02 10:21:09', '2022-04-02 13:21:09'),
(15, 16, 26, 27, '2022-04-02 10:20:59', '2022-04-02 13:20:59'),
(16, 15, 29, 32, '2022-04-02 11:34:06', '2022-04-02 14:34:06'),
(17, 13, 29, 32, '2022-04-02 10:20:52', '2022-04-02 13:20:52');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'standart', 'web', '2022-03-20 05:43:10', '2022-03-20 05:43:10'),
(2, 'developer', 'web', '2022-03-20 05:43:16', '2022-03-20 05:43:16'),
(3, 'root', 'web', '2022-03-20 05:43:28', '2022-03-20 05:43:28');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sounds`
--

CREATE TABLE `sounds` (
  `id` int(11) NOT NULL,
  `attraction_id` int(11) NOT NULL,
  `sound` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sounds`
--

INSERT INTO `sounds` (`id`, `attraction_id`, `sound`) VALUES
(1, 10, 'https://travel.madskill.ru/sound/01.mp3'),
(2, 11, 'https://travel.madskill.ru/sound/02.mp3'),
(3, 12, 'https://travel.madskill.ru/sound/03.mp3'),
(4, 13, 'https://travel.madskill.ru/sound/04.mp3'),
(5, 14, 'https://travel.madskill.ru/sound/05.mp3'),
(6, 15, 'https://travel.madskill.ru/sound/06.mp3'),
(7, 22, 'https://travel.madskill.ru/sound/07.mp3'),
(8, 23, 'https://travel.madskill.ru/sound/08.mp3'),
(9, 24, 'https://travel.madskill.ru/sound/09.mp3'),
(10, 25, 'https://travel.madskill.ru/sound/10.mp3'),
(11, 16, 'https://travel.madskill.ru/sound/06.mp3'),
(12, 17, 'https://travel.madskill.ru/sound/06.mp3'),
(13, 18, 'https://travel.madskill.ru/sound/06.mp3'),
(14, 19, 'https://travel.madskill.ru/sound/06.mp3'),
(15, 20, 'https://travel.madskill.ru/sound/06.mp3'),
(16, 21, 'https://travel.madskill.ru/sound/06.mp3');

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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'ladmin', 'ladmin@local', NULL, '$2y$10$uDEW1rE7fdmcIciI6BBVOOFVlChz7jpEtX5LK9gYREGdSvXUjlefq', NULL, '2022-03-18 12:15:39', '2022-03-28 05:37:10'),
(77, 'Иван', 'ivan@mail.com', NULL, '$2y$10$hpp0VjfZUhx57/QKRt1UreXdSFASk5RlKE0iNhsFhqr7dMmgD6d2G', '6XmUNMbESBOBR1RdIkrei4ICAPiY5kfkilatfuItHtHPl0jNn5Zrszmj76ZI', '2022-03-31 01:41:08', '2022-04-01 03:03:04'),
(78, '2.user2', '2.user2@madskill.ru', NULL, '$2y$10$KinTmt0H36JkjQBzOhX/5eFXFcccZCdhUDp1tJzAB6FXIgadllsOm', '8UzXpCrl0bmzmsXjVjJc442bOySTYzs45mhGNSi4gFaspkr4flGlfODS202r', '2022-03-31 01:41:08', '2022-03-31 01:41:08'),
(79, '2.user3', '2.user3@madskill.ru', NULL, '$2y$10$lyKfFUje3x3ukAbdnxJFgOIXeuol0iUjFx9pbTQFpxFJB.p9DnTne', 'VoTPGxXvjQGUPiB3MqbPRzh8fpnCgvsWbf8hL0qaU0Af9kj16aQqunL4xqR3', '2022-03-31 01:41:08', '2022-03-31 01:41:08'),
(80, '2.user4', '2.user4@madskill.ru', NULL, '$2y$10$MEdcSF0xThxENuWQje4n6.ImPaOS1OQUpdWFdA5cNxc6lbMQCfiNu', 'm5AXX1xgIlJ26axzaPKV3QeODbrJg4cI1CZ1dt1L7RnHD44RY2YHfUiJPms0', '2022-03-31 01:41:08', '2022-03-31 01:41:08'),
(81, '2.user5', '2.user5@madskill.ru', NULL, '$2y$10$k1Y6ImbGE41aWyDpc./ebe3hOeKWCYmP/FkO51WdQDBesBWagzvJS', NULL, '2022-03-31 01:41:08', '2022-03-31 01:41:08'),
(82, '2.user6', '2.user6@madskill.ru', NULL, '$2y$10$WtU44ZBaS3UR0GgncBepFuStZzF/ncSbXK/KJhcp40Ty61jkdg2aa', '0h5hZfs0tHhBLFv00HtbgQ7I8dX1I2MJSfe4aaYYFyRZraGli2yIqFWMWTLu', '2022-03-31 01:41:08', '2022-03-31 01:41:08'),
(83, '2.user7', '2.user7@madskill.ru', NULL, '$2y$10$E26U0t25qze.vaXL/UdXK.kN6dW2D8Hvelbkew8WYaSBOFn1X.Ry.', 'eWseGlkcXEx9i9WlOP3Z0EtwgzzFdRmDAUIVMKrmQsOPHP1J6zoPZjQy9jhm', '2022-03-31 01:41:08', '2022-03-31 01:41:08'),
(84, '2.user8', '2.user8@madskill.ru', NULL, '$2y$10$.qMihZyTlH.LMmeCGuGYCe0YhpKk0JZsmh.NToI6rEXJ595CQVq4y', NULL, '2022-03-31 01:41:08', '2022-03-31 01:41:08'),
(85, '2.user9', '2.user9@madskill.ru', NULL, '$2y$10$uiG33o8yW3bevd5x5Q2xQ.0wZS8Zdm.bpeDp2aWpAz3VPfhmxO5i.', NULL, '2022-03-31 01:41:08', '2022-03-31 01:41:08'),
(86, '2.user10', '2.user10@madskill.ru', NULL, '$2y$10$2lkpYnTy5Dl/v6xBasQPYeIpgYeAFK9xOnCru612zdaszGbe0nHk2', NULL, '2022-03-31 01:41:08', '2022-03-31 01:41:08'),
(87, '2.user11', '2.user11@madskill.ru', NULL, '$2y$10$cqrh5hHxkctdXvBSIV6nU.7vOVJJnAUCp7h8PuplJyQaCS9aTVV.K', NULL, '2022-03-31 01:41:09', '2022-03-31 01:41:09'),
(88, '2.user12', '2.user12@madskill.ru', NULL, '$2y$10$ZZmUKsvTSGvzQ3CrC1X7gu9tz5qH5tgxbP4Pdg0RV8oaGVMRH.uYO', NULL, '2022-03-31 01:41:09', '2022-03-31 01:41:09'),
(89, '2.user13', '2.user13@madskill.ru', NULL, '$2y$10$KqceoBC/a9uRczcIjYwRf.479rJd1X.qmuDcwUvjD.3dpouAHuvoi', NULL, '2022-03-31 01:41:09', '2022-03-31 01:41:09'),
(90, 'Test', '2.user14@madskill.ru', NULL, '$2y$10$/Z3usrIdZRDqmSBNbGFCN.GOHLyBNgSFb7Z8UPI1dE4eJAcfFxw2K', 'mTnRv4nONqDQFMTUfzxFUD04GPKwPMUoJmGbESQrsfxdo4Nb0DyHZDLJELoB', '2022-03-31 01:41:09', '2022-04-01 05:44:26'),
(91, '2.user15', '2.user15@madskill.ru', NULL, '$2y$10$e7O2Q4HB3MaLrFTZaGbZfu84DlipprzjjlFdDLvxnqPBDX4ZsiKDC', NULL, '2022-03-31 01:41:09', '2022-03-31 01:41:09'),
(92, 'Vladim', '2.user16@madskill.ru', NULL, '$2y$10$TX/pAZYgKvapuw/8JAUpHOJRRUED.HQIz14vLGhFvrpgsPohv5p1m', 'D6MSQpHZ2i19AirOhMSIGQAGv71p1hxiB5Njjs78fwPEzTPTv758f67EqPOI', '2022-03-31 01:41:09', '2022-04-01 06:19:15'),
(93, 'name14', 'name14@gmail.com', NULL, '$2y$10$4azS5xM.xxsPMgZA0w17Gumbh5Em8tdXKKioZjMlAfP7aoJA1oOfi', NULL, '2022-03-31 03:10:14', '2022-03-31 03:10:14'),
(94, 'test', 'ivanov@ivan.ru', NULL, '$2y$10$Jgtq3h6cXpmeY860aYDqAunelsD1TctzBGPA4zZoIWQ6cTBiLKqiq', NULL, '2022-03-31 03:22:55', '2022-03-31 03:22:55'),
(95, 'name14', 'test_name14@gmail.com', NULL, '$2y$10$/sUnRcXDdnwCl/Mr3BS4/Oggd9J9MSQbQpN4kNPrc0hzNmxfu/Kx2', NULL, '2022-03-31 04:02:38', '2022-03-31 04:02:38'),
(96, 'qwdwwde', 'ivanov@ivana12.ru', NULL, '$2y$10$CPHz6aDJR.jrO8BSq03Y.OkAa9hIxVC7hI6UqdEUKlKfPFocGmKWy', NULL, '2022-03-31 04:31:10', '2022-03-31 04:31:10'),
(97, 'Nicknanmr', 'nickadsakj@mail.ru', NULL, '$2y$10$ZCKFSOB.E7YrhAYUNedu0eUQpXnYRMNXk.yrfjNOC6NM2WP558jfu', NULL, '2022-03-31 04:34:03', '2022-03-31 04:34:03'),
(98, 'name14', 'test_name@gmail.com', NULL, '$2y$10$gUuWKCqnh3GBZwYC0KRNj.D33IFHzxO5E0e0e8Vx0BonSwCDjBMni', NULL, '2022-03-31 05:36:33', '2022-03-31 05:36:33'),
(99, 'testtest1', 'testtest@mail.ru', NULL, '$2y$10$MYDPz8NMdokm3INwCQvX.OZVGbX9EGyGjxwE7AiyPFq0rA1nsvsjm', NULL, '2022-03-31 05:37:10', '2022-03-31 05:37:10'),
(100, 'test1', 'test1@mail.ru', NULL, '$2y$10$lam7xHRFX9m4qz3HnPadW.8FAINKbnyoOeXrAaZSMi.fUDxUJb0OW', NULL, '2022-03-31 05:38:56', '2022-03-31 05:38:56'),
(101, 'nick', 'ivanav@ivan.ru', NULL, '$2y$10$36pUQJjlamZe3wh8TDmFsuJG33nivRL2RMSTkQfYGNiDRXl49IayC', NULL, '2022-03-31 05:43:16', '2022-03-31 05:43:16'),
(102, 'fwfawfwaf', 'wffwaf@mail.com', NULL, '$2y$10$QeU94OQ2oNKvhw6ge1IVbedRaPLSQYD8QXSouH3WZpV2vb0AH.kqy', NULL, '2022-03-31 05:51:22', '2022-03-31 05:51:22'),
(103, 'vasya', 'vasya@mail.com', NULL, '$2y$10$BaFHP0tp7EARY8ZaXQUPr.XswqwmMoLbWorbumCk3AD4S6GT/a/xW', NULL, '2022-03-31 06:00:48', '2022-03-31 06:00:48'),
(104, 'test14', 'test@gmail.com', NULL, '$2y$10$.Ju1GHz5r3UthpUMJNAoZO4DEeNVx4YdP2pzmcNh24PmzgBGovikG', NULL, '2022-03-31 06:01:20', '2022-03-31 06:01:20'),
(105, 'test14', 'test14@gmail.com', NULL, '$2y$10$R8EjKAaYyKsrCbQbvUfvIuShvNREy8er56tEwR7S88tByGi5Cu2Oq', NULL, '2022-03-31 06:02:04', '2022-03-31 06:02:04'),
(106, 'userr', 'dudhdhdh@mail.ru', NULL, '$2y$10$nhQtn/ZDU9km4lsYgDdkuOQro8dyT3f1nQXUEjqhlNF7RxHTIIeRe', NULL, '2022-03-31 06:04:37', '2022-03-31 06:04:37'),
(107, 'hello', 'dhhdhdh@mail.ru', NULL, '$2y$10$PXETCqozrbunarBfJz.HOuUa0n6JKNXytjI0txwFiOFia1Tcmxkm.', NULL, '2022-03-31 06:15:26', '2022-03-31 06:15:26'),
(108, 'jdhdhhd', 'dgdgdg@mail.ru', NULL, '$2y$10$czOenr8jDBdB10IjbiSpFuPgDmOsyR.eZn1lsIb9T80WgBmGV4goW', NULL, '2022-03-31 06:20:32', '2022-03-31 06:20:32'),
(109, 'jdhdhhd', 'dgdgdg@mail.ej', NULL, '$2y$10$zmQKESdM.hdxec6oErljd.Fq36iXxNepEgOtlnKwWVD/auTZ8zwAy', NULL, '2022-03-31 06:20:45', '2022-03-31 06:20:45'),
(110, 'dfgdfg', 'gfdgdfg@ewf.ru', NULL, '$2y$10$QXOkDI15BrSwHZxVhbMoGOyovoIAG9Fo6Sxyc7vXF.kVZhE3ULD8a', NULL, '2022-03-31 09:18:36', '2022-03-31 09:18:36'),
(111, 'dfgdfg', 'gfdfdgdfggdfg@ewf.ru', NULL, '$2y$10$qL.xYeAgo0qhFngKPA.eku9UG6zia2kktZFFv.OrLycn0swcmO0h.', NULL, '2022-03-31 09:18:43', '2022-03-31 09:18:43'),
(112, 'ZXC', '123qweasd@qwe.qwe', NULL, '$2y$10$mxdm2wvjLaQdpC/MaTD1muhSpY8Nhpcx/QE1r3AlTc4IsbVv0YszG', NULL, '2022-03-31 09:19:12', '2022-03-31 09:19:12'),
(113, 'ZXC', '123qweasd@qwe.qwe1', NULL, '$2y$10$mO9.UkmxISexArc3I3bZsuwCstmLctkE.1.fLytBOZaN.Ieu9TJmG', NULL, '2022-03-31 09:22:13', '2022-03-31 09:22:13'),
(114, '2.user33', '2.user33@madskill.ru', NULL, '$2y$10$fcTj9FYIN0epiHqEv9AVPuCd8gNPezyvoOprwxLNBn4jK06zf6.mq', NULL, '2022-03-31 09:26:45', '2022-03-31 09:26:45'),
(115, 'asd', 'qweasdzxc@qwe.qwe', NULL, '$2y$10$yixZ4kvVaPqM3on9oru4t.JuPzbpxjfI50DGh6x3FmC6wRcOx.F46', NULL, '2022-03-31 09:28:06', '2022-03-31 09:28:06'),
(116, 'qweqwe', 'poilkjmnb@gmail.com', NULL, '$2y$10$4v91RoyuRFNdlUPUwDaWWeDDYbXamZpPZlMmAiAZCo8xZYrEdApZi', NULL, '2022-04-01 06:41:07', '2022-04-01 06:41:07'),
(117, 'test4', 'test4@test.ru', NULL, '$2y$10$TTod5HSyhxw1N9QoDkqFI.gTui.sMQl6v1p6CfAV8k/oFpg3G0sqG', NULL, '2022-04-02 05:44:17', '2022-04-02 05:44:17');

-- --------------------------------------------------------

--
-- Table structure for table `visits`
--

CREATE TABLE `visits` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `attraction_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `visits`
--

INSERT INTO `visits` (`id`, `user_id`, `attraction_id`, `created_at`, `updated_at`) VALUES
(1, 1, 10, '2022-03-27 21:26:49', '0000-00-00 00:00:00'),
(2, 1, 13, '2022-03-27 19:19:36', '2022-03-27 19:19:36'),
(3, 10, 20, '2022-03-28 05:55:13', '2022-03-28 05:55:13'),
(4, 10, 20, '2022-03-28 05:55:14', '2022-03-28 05:55:14'),
(5, 10, 21, '2022-03-28 05:55:17', '2022-03-28 05:55:17'),
(6, 10, 21, '2022-03-28 05:55:18', '2022-03-28 05:55:18'),
(7, 10, 22, '2022-03-28 05:55:21', '2022-03-28 05:55:21'),
(8, 10, 22, '2022-03-28 05:55:22', '2022-03-28 05:55:22'),
(9, 10, 23, '2022-03-28 05:55:26', '2022-03-28 05:55:26'),
(10, 10, 23, '2022-03-28 05:55:26', '2022-03-28 05:55:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ars`
--
ALTER TABLE `ars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attractions`
--
ALTER TABLE `attractions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `filemanager`
--
ALTER TABLE `filemanager`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `photo_attractions`
--
ALTER TABLE `photo_attractions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sounds`
--
ALTER TABLE `sounds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `visits`
--
ALTER TABLE `visits`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ars`
--
ALTER TABLE `ars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `attractions`
--
ALTER TABLE `attractions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `filemanager`
--
ALTER TABLE `filemanager`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `photo_attractions`
--
ALTER TABLE `photo_attractions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sounds`
--
ALTER TABLE `sounds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `visits`
--
ALTER TABLE `visits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
