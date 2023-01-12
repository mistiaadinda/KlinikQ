-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 03, 2023 at 03:56 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kelompok_3tie`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_klinik`
--

CREATE TABLE `tb_klinik` (
  `type` varchar(7) NOT NULL,
  `id` int(11) NOT NULL,
  `geometrytype` varchar(5) NOT NULL,
  `geometrycoordinates0` decimal(18,14) NOT NULL,
  `geometrycoordinates1` decimal(19,17) NOT NULL,
  `propertiesFID` int(11) NOT NULL,
  `propertiesKode_Klini` varchar(8) NOT NULL,
  `propertiesNama_Klini` varchar(35) NOT NULL,
  `propertiesAlamat` varchar(34) NOT NULL,
  `propertiesNo_Hp` varchar(11) NOT NULL,
  `propertiesFasilitas` varchar(14) NOT NULL,
  `propertiesPelayanan` varchar(84) NOT NULL,
  `propertiesLongitude` decimal(11,7) NOT NULL,
  `propertiesLatitude_` decimal(10,8) NOT NULL,
  `propertiesKECAMATAN` varchar(13) NOT NULL,
  `propertiesgambar` varchar(142) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_klinik`
--

INSERT INTO `tb_klinik` (`type`, `id`, `geometrytype`, `geometrycoordinates0`, `geometrycoordinates1`, `propertiesFID`, `propertiesKode_Klini`, `propertiesNama_Klini`, `propertiesAlamat`, `propertiesNo_Hp`, `propertiesFasilitas`, `propertiesPelayanan`, `propertiesLongitude`, `propertiesLatitude_`, `propertiesKECAMATAN`, `propertiesgambar`) VALUES
('Feature', 0, 'Point', '101.41485670017664', '0.46357860017229770', 0, '0069B048', 'ANNISA MEDIKA 2', 'Jl. HR SOEBRANTAS NO. 173', '82172333322', 'Rawat Inap', 'Umum, Gigi, Persalinan, KB, Imunisasi', '101.4148567', '0.46357860', 'TAMPAN', 'https://ik.imagekit.io/avtcs3efu/GIS_Kelompok4/ANNISA_MEDIKA_2.png?ik-sdk-version=javascript-1.4.3&updatedAt=1672651036023'),
('Feature', 1, 'Point', '101.40554850026314', '0.44732994981740150', 1, '0069B028', 'BP ELLIYA HUSADA (JST)', 'Jl. DELIMA NO. 138 PANAM', '7618416797', 'Rawat Inap', 'Gigi', '101.4055485', '0.44732995', 'TAMPAN', 'https://ik.imagekit.io/avtcs3efu/GIS_Kelompok4/BP_ELLIYA_HUSADA__JST_.png?ik-sdk-version=javascript-1.4.3&updatedAt=1672651164858'),
('Feature', 2, 'Point', '101.36614459959367', '0.47915380040763010', 2, '0069B044', 'BP KLINIK DOKTOR BASTIAN', 'Jl. GARUDA SAKTI KM. 2', '8217222872', 'Rawat Inap', 'Umum, Gigi', '101.3661446', '0.47915380', 'TAMPAN', 'https://ik.imagekit.io/avtcs3efu/GIS_Kelompok4/BP-KLINIK-DOKTER-BASTIAN.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1672666922740'),
('Feature', 3, 'Point', '101.44963919978932', '0.56959110024911300', 3, '0069B043', 'BP KLINIK PRATAMA PRAMUKA', 'Jl. PRAMUKA NO. 38', '811760799', 'Non Rawat Inap', 'Persalinan, Gigi, Umum', '101.4496392', '0.56959110', 'RUMBAIPESISIR', 'https://ik.imagekit.io/avtcs3efu/GIS_Kelompok4/BP_KLINIK_PRATAMA_PRAMUKA.png?ik-sdk-version=javascript-1.4.3&updatedAt=1672652102448'),
('Feature', 4, 'Point', '101.38610999957689', '0.46395740001406693', 4, '0069B045', 'BP KLINIK PRATAMA SELVIA MEDIKA', 'Jl. HR SOEBRANTAS NO 76', '81365688414', 'Rawat Inap', 'Persalinan, Gigi, Umum', '101.3861100', '0.46395740', 'TAMPAN', 'https://ik.imagekit.io/avtcs3efu/GIS_Kelompok4/BP_KLINIK_PRATAMA_SELVIA_MEDIKA.png?ik-sdk-version=javascript-1.4.3&updatedAt=1672652097035'),
('Feature', 5, 'Point', '101.48424050039881', '0.51804539957555560', 5, '0069B047', 'HANGTUAH MEDIKA', 'Jl. HANGTUAH', '81376769393', 'Non Rawat Inap', 'Persalinan, Gigi, Umum', '101.4842405', '0.51804540', 'TENAYANRAYA', 'https://ik.imagekit.io/avtcs3efu/GIS_Kelompok4/HANGTUAH_MEDIKA.png?ik-sdk-version=javascript-1.4.3&updatedAt=1672652098974'),
('Feature', 6, 'Point', '101.49651659976132', '0.50766480039027330', 6, '0069B076', 'KLINIK CAHAYA AMANAH MEDIKA', 'Jl. HANGTUAH, KAVLING NO. 1', '7617873827', 'Rawat Inap', 'Persalinan, Gigi, Umum Khitan, Home Care', '101.4965166', '0.50766480', 'TENAYANRAYA', 'https://ik.imagekit.io/avtcs3efu/GIS_Kelompok4/KLINIK_CAHAYA_AMANAH_MEDIKA.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1672652097486'),
('Feature', 7, 'Point', '101.43162899967865', '0.53849109958463260', 7, '0069U008', 'KLINIK CENDANA HUSADA', 'JL.JATI NO.7', '76122568', 'Non Rawat Inap', 'Persalinan, Gigi, Khitan', '101.4316290', '0.53849110', 'SENAPELAN', 'https://ik.imagekit.io/avtcs3efu/GIS_Kelompok4/KLINIK_CENDANA_HUSADA.png?ik-sdk-version=javascript-1.4.3&updatedAt=1672652099092'),
('Feature', 8, 'Point', '101.43883190017209', '0.44380760034050580', 8, '0069B065', 'KLINIK DILLA', 'Jl. KARTAMA NO 51', '8126506830', 'Rawat Inap', 'Persalinan, Gigi, Umum, USG, Akupuntur', '101.4388319', '0.44380760', 'MARPOYANDAMAI', 'https://ik.imagekit.io/avtcs3efu/GIS_Kelompok4/KLINIK_DILLA.png?ik-sdk-version=javascript-1.4.3&updatedAt=1672652101711'),
('Feature', 9, 'Point', '101.39388140020651', '0.46793630022011710', 9, '0069U058', 'KLINIK DR. DADAN ROPIAN (JST)', 'JL. SM. AMIN', '85359204050', 'Non Rawat Inap', 'Persalinan, Gigi, Umum', '101.3938814', '0.46793630', 'TAMPAN', 'https://ik.imagekit.io/avtcs3efu/GIS_Kelompok4/KLINIK_DR._DADAN_ROPIAN__JST_.png?ik-sdk-version=javascript-1.4.3&updatedAt=1672652100459'),
('Feature', 10, 'Point', '101.43332200041004', '0.55988299970073290', 10, '0069B034', 'KLINIK DR. MISBAH-RMC (JST)', 'Jl. Sembilang No.53 Rumbai', '8127650454', 'Rawat Inap', 'Umum, Gigi', '101.4333220', '0.55988300', 'RUMBAIPESISIR', 'https://ik.imagekit.io/avtcs3efu/GIS_Kelompok4/KLINIK_DR._MISBAH-RMC__JST_.png?ik-sdk-version=javascript-1.4.3&updatedAt=1672652100082'),
('Feature', 11, 'Point', '101.44618679958120', '0.43648659997666070', 11, '0069B031', 'KLINIK FELLITA (JST)', 'Jl. KAHARUDDIN NASUTION NO. 1500', '81268401901', 'Rawat Inap', 'Persalinan, Gigi, Umum, KB & Imunisasi, Khitan, Laboratorium', '101.4461868', '0.43648660', 'MARPOYANDAMAI', 'https://ik.imagekit.io/avtcs3efu/GIS_Kelompok4/KLINIK_FELLITA__JST_.png?ik-sdk-version=javascript-1.4.3&updatedAt=1672652100889'),
('Feature', 12, 'Point', '101.45244109967706', '0.45654339985804880', 12, '0069B064', 'KLINIK INDI MEDIKA', 'Jl. KH NASUTION NO 98 C', '8126829345', 'Rawat Inap', 'Persalinan, Gigi, Umum', '101.4524411', '0.45654340', 'MARPOYANDAMAI', 'https://ik.imagekit.io/avtcs3efu/GIS_Kelompok4/KLINIK_INDI_MEDIKA.png?ik-sdk-version=javascript-1.4.3&updatedAt=1672652100596'),
('Feature', 13, 'Point', '101.42880499985091', '0.51699599956577910', 13, '0069B029', 'KLINIK LABUH BARU (JST)', 'JL. DURIAN NO. 21 D', '81268102999', 'Non Rawat Inap', 'Umum', '101.4288050', '0.51699600', 'PAYUNGSEKAKI', 'https://ik.imagekit.io/avtcs3efu/GIS_Kelompok4/KLINIK_LABUH_BARU__JST_.png?ik-sdk-version=javascript-1.4.3&updatedAt=1672652099549'),
('Feature', 14, 'Point', '101.43451649973673', '0.52787439958393630', 14, '0069B083', 'KLINIK MEDIKA SALSABILA', 'Jl. MELUR NO. 57 B', '85376617788', 'Non Rawat Inap', 'Umum, Gigi', '101.4345165', '0.52787440', 'SUKAJADI', 'https://ik.imagekit.io/avtcs3efu/GIS_Kelompok4/KLINIK_MEDIKA_SALSABILA.png?ik-sdk-version=javascript-1.4.3&updatedAt=1672651633585'),
('Feature', 15, 'Point', '101.38753389976972', '0.46428649972222047', 15, '0069B075', 'KLINIK MERCY', 'Jl. HR. SOEBRANTAS NO. 24', '761588662', 'Rawat Inap', 'Kebidanan dan Kandungan, Anak, Penyakit Dalam, Gigi, Kecantikan, Umum', '101.3875339', '0.46428650', 'TAMPAN', 'https://ik.imagekit.io/avtcs3efu/GIS_Kelompok4/KLINIK_MERCY.png?ik-sdk-version=javascript-1.4.3&updatedAt=1672651631708'),
('Feature', 16, 'Point', '101.36955840000024', '0.46471799983589790', 16, '0069B077', 'KLINIK NADIN MEDIKA', 'Jl. HR SOEBRANTAS UJUNG PEKANBARU', '76100000', 'Rawat Inap', 'Persalinan, Gigi, Umum Khitan, Home Care', '101.3695584', '0.46471800', 'TAMPAN', 'https://ik.imagekit.io/avtcs3efu/GIS_Kelompok4/KLINIK_NADIN_MEDIKA.png?ik-sdk-version=javascript-1.4.3&updatedAt=1672651630613'),
('Feature', 17, 'Point', '101.46406809986297', '0.49939049977177774', 17, '0069B036', 'KLINIK NAYAKA HUSADA (JST)', 'JL. H. IMAM MUNANDAR NO. 12', '81365946973', 'Non Rawat Inap', 'Umum, Gigi', '101.4640681', '0.49939050', 'BUKITRAYA', 'https://ik.imagekit.io/avtcs3efu/GIS_Kelompok4/KLINIK_NAYAKA_HUSADA__JST_.png?ik-sdk-version=javascript-1.4.3&updatedAt=1672651629618'),
('Feature', 18, 'Point', '101.43761770029670', '0.51489769956924650', 18, '0069U017', 'KLINIK PRATAMA AISYIYAH', 'JL. K.H.AHMAD DAHLAN NO.82', '76136625', 'Non Rawat Inap', 'Umum, Gigi', '101.4376177', '0.51489770', 'SUKAJADI', 'https://ik.imagekit.io/avtcs3efu/GIS_Kelompok4/KLINIK_PRATAMA_AISYIYAH.png?ik-sdk-version=javascript-1.4.3&updatedAt=1672651629521'),
('Feature', 19, 'Point', '101.38744609985770', '0.46399459957115140', 19, '0069B092', 'KLINIK PRATAMA AMIRAH KHAZRI', 'Jl. HR. SOEBRANTAS PANAM', '81371626922', 'Non Rawat Inap', 'Persalinan, Gigi, Umum', '101.3874461', '0.46399460', 'TAMPAN', 'https://ik.imagekit.io/avtcs3efu/GIS_Kelompok4/KLINIK_PRATAMA_AMIRAH_KHAZRI.png?ik-sdk-version=javascript-1.4.3&updatedAt=1672651628424'),
('Feature', 20, 'Point', '101.45408290020572', '0.49869240013418903', 20, '0069B042', 'Klinik Pratama Bertuah Medika', 'Jl. PUYUH MAS NO. 2 E', '8137172757', 'Non Rawat Inap', 'Persalinan, Gigi, Umum', '101.4540829', '0.49869240', 'MARPOYANDAMAI', 'https://ik.imagekit.io/avtcs3efu/GIS_Kelompok4/Klinik_Pratama_Bertuah_Medika.png?ik-sdk-version=javascript-1.4.3&updatedAt=1672651630346'),
('Feature', 21, 'Point', '101.44821009971639', '0.44101429977018825', 21, '0069B068', 'KLINIK PRATAMA BINTANG JAYA', 'Jl. KAHARUDDIN NASUTION NO.99C', '8127625908', 'Non Rawat Inap', 'Umum, Gigi', '101.4482101', '0.44101430', 'MARPOYANDAMAI', 'https://ik.imagekit.io/avtcs3efu/GIS_Kelompok4/KLINIK_PRATAMA_BINTANG_JAYA.png?ik-sdk-version=javascript-1.4.3&updatedAt=1672651629889'),
('Feature', 22, 'Point', '101.44332589967058', '0.56911579955453820', 22, '0069B071', 'KLINIK PRATAMA BUNDA MEDICAL CENTRE', 'Jl. PAUS/PATTIMURA NO. 32F', '82125963731', 'Non Rawat Inap', 'Persalinan, Gigi, Umum, Laboratorium', '101.4433259', '0.56911580', 'RUMBAIPESISIR', 'https://ik.imagekit.io/avtcs3efu/GIS_Kelompok4/KLINIK_PRATAMA_BUNDA_MEDICAL_CENTRE.JPG?ik-sdk-version=javascript-1.4.3&updatedAt=1672652060597'),
('Feature', 23, 'Point', '101.42860940000390', '0.55339109961960280', 23, '0069U059', 'KLINIK PRATAMA DAFFA (JST)', 'JL. PAUS NO.99B', '81266883534', 'Non Rawat Inap', 'Persalinan, Gigi, Umum', '101.4286094', '0.55339110', 'RUMBAI', 'https://ik.imagekit.io/avtcs3efu/GIS_Kelompok4/KLINIK_PRATAMA_DAFFA__JST_.png?ik-sdk-version=javascript-1.4.3&updatedAt=1672651630189'),
('Feature', 24, 'Point', '101.38795740041377', '0.45980680034358556', 24, '0069B087', 'KLINIK PRATAMA DR. EDO', 'Jl. SUKA KARYA PERUM MANDIRI 5 B-7', '85276661999', 'Rawat Inap', 'Persalinan, Gigi, Umum', '101.3879574', '0.45980680', 'TAMPAN', 'https://ik.imagekit.io/avtcs3efu/GIS_Kelompok4/KLINIK_PRATAMA_DR._EDO.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1672651628121'),
('Feature', 25, 'Point', '101.45344450026352', '0.53816459981646860', 25, '0069B093', 'KLINIK PRATAMA DR. RIDHA', 'Jl. TANJUNG DATUK NO. 141', '85278557447', 'Non Rawat Inap', 'Umum, Gigi', '101.4534445', '0.53816460', 'LIMAPULUH', 'https://ik.imagekit.io/avtcs3efu/GIS_Kelompok4/KLINIK_PRATAMA_DR._RIDHA.png?ik-sdk-version=javascript-1.4.3&updatedAt=1672651630476'),
('Feature', 26, 'Point', '101.44596179999712', '0.52431919967136760', 26, '0069B091', 'KLINIK PRATAMA HASANAH', 'Jl. PANGERAN HIDAYAT NO. 32 PKU', '761854289', 'Non Rawat Inap', 'Persalinan, Gigi, Umum', '101.4459618', '0.52431920', 'PEKANBARUKOTA', 'https://ik.imagekit.io/avtcs3efu/GIS_Kelompok4/KLINIK_PRATAMA_DR._RIDHA.png?ik-sdk-version=javascript-1.4.3&updatedAt=1672651630476'),
('Feature', 27, 'Point', '101.44685169984615', '0.43804939956021370', 27, '0069B072', 'KLINIK PRATAMA INDO SEHAT', 'Jl. KAHARUDDIN NASUTION PEKANBARU', '82288498728', 'Rawat Inap', 'Persalinan, Gigi, Umum Khitan, Home Care', '101.4468517', '0.43804940', 'MARPOYANDAMAI', 'https://ik.imagekit.io/avtcs3efu/GIS_Kelompok4/KLINIK_PRATAMA_INDO_SEHAT.png?ik-sdk-version=javascript-1.4.3&updatedAt=1672652064164'),
('Feature', 28, 'Point', '101.44261779957185', '0.52205359969389060', 28, '0069B041', 'Klinik Pratama Kartika Utama', 'Jl. AHMAD YANI NO. 58 A', '76124762', 'Non Rawat Inap', 'Umum, Gigi', '101.4426178', '0.52205360', 'PEKANBARUKOTA', 'https://ik.imagekit.io/avtcs3efu/GIS_Kelompok4/Klinik_Pratama_Kartika_Utama.png?ik-sdk-version=javascript-1.4.3&updatedAt=1672652063223'),
('Feature', 29, 'Point', '101.44765200023966', '0.50721080013835260', 29, '0069B080', 'KLINIK PRATAMA LUCKFY MEDIKA', 'Jl. HR. SOEBRANTAS PANAM', '8128663628', 'Rawat Inap', 'Persalinan, Gigi, Umum', '101.4476520', '0.50721080', 'MARPOYANDAMAI', 'https://lh3.googleusercontent.com/p/AF1QipN-CjwL1DgfsHtdu-waWVzv9WCvPxxSsPmPNTV8=w768-h768-n-o-v1'),
('Feature', 30, 'Point', '101.44017699996863', '0.44272051963633885', 30, '0069B070', 'KLINIK PRATAMA MARPOYAN MEDIKA', 'Jl. KAHARUDDIN NASUTION', '82169991480', 'Non Rawat Inap', 'Persalinan, Gigi, Umum', '101.4401770', '0.44272052', 'MARPOYANDAMAI', 'https://ik.imagekit.io/avtcs3efu/GIS_Kelompok4/KLINIK_PRATAMA_MARPOYAN_MEDIKA.png?ik-sdk-version=javascript-1.4.3&updatedAt=1672652301172'),
('Feature', 31, 'Point', '101.46733479996112', '0.49964680025965436', 31, '0069B074', 'KLINIK PRATAMA MULYA', 'Jl. HARAPAN RAYA NO. 330', '761854898', 'Rawat Inap', 'Umum, Gigi', '101.4673348', '0.49964680', 'BUKITRAYA', 'https://ik.imagekit.io/avtcs3efu/GIS_Kelompok4/KLINIK_PRATAMA_MULYA.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1672652300414'),
('Feature', 32, 'Point', '101.44049540044244', '0.56388440004508310', 32, '0069B079', 'KLINIK PRATAMA NARITA', 'Jl. GABUS RAYA NO. A2 RUMBAI', '85275700616', 'Non Rawat Inap', 'Persalinan, Gigi, Umum, Khitan,', '101.4404954', '0.56388440', 'RUMBAIPESISIR', 'https://ik.imagekit.io/avtcs3efu/GIS_Kelompok4/KLINIK_PRATAMA_NARITA_.png?ik-sdk-version=javascript-1.4.3&updatedAt=1672652301576'),
('Feature', 33, 'Point', '101.43919220006006', '0.50001230002766310', 33, '0069U010', 'KLINIK PRATAMA PAUS MEDIKA', 'JL. PAUS NO. 2 D', '8127513936', 'Non Rawat Inap', 'Persalinan, Gigi, Umum', '101.4391922', '0.50001230', 'MARPOYANDAMAI', 'https://ik.imagekit.io/avtcs3efu/GIS_Kelompok4/KLINIK_PRATAMA_PAUS_MEDIKA.png?ik-sdk-version=javascript-1.4.3&updatedAt=1672651279942'),
('Feature', 34, 'Point', '101.40191950018482', '0.46341940038507800', 34, '0069U061', 'KLINIK PRATAMA PEKANBARU SEHAT', 'JL. SOEBRANTAS NO. 501 PANAM', '-', 'Non Rawat Inap', 'Umum, Gigi', '101.4019195', '0.46341940', 'TAMPAN', 'https://ik.imagekit.io/avtcs3efu/GIS_Kelompok4/KLINIK_PRATAMA_PEKANBARU_SEHAT.png?ik-sdk-version=javascript-1.4.3&updatedAt=1672651356164'),
('Feature', 35, 'Point', '101.44675109988339', '0.56034469994801840', 35, '0069U007', 'Klinik Pratama Rumbai Sehat', 'Jl. Sekolah, Rumbai', '82173001665', 'Non Rawat Inap', 'Umum, Gigi', '101.4467511', '0.56034470', 'RUMBAIPESISIR', 'https://ik.imagekit.io/avtcs3efu/GIS_Kelompok4/Klinik_Pratama_Rumbai_Sehat.png?ik-sdk-version=javascript-1.4.3&updatedAt=1672651445206'),
('Feature', 36, 'Point', '101.38603589993687', '0.45240649956036805', 36, '0069B094', 'KLINIK PRATAMA SARINAH', 'Jl. SUKA KARYA NO. 155 PANAM', '81365714875', 'Non Rawat Inap', 'Umum', '101.3860359', '0.45240650', 'TAMPAN', 'https://ik.imagekit.io/avtcs3efu/GIS_Kelompok4/KLINIK_PRATAMA_SARINAH.png?ik-sdk-version=javascript-1.4.3&updatedAt=1672651535483'),
('Feature', 37, 'Point', '101.36156649999401', '0.46071139961145490', 37, '0069B086', 'KLINIK PRATAMA TSABITA', 'Jl. HR SOEBRANTAS UJUNG PEKANBARU', '761589859', 'Rawat Inap', 'Umum, Gigi', '101.3615665', '0.46071140', 'TAMPAN', 'https://ik.imagekit.io/avtcs3efu/GIS_Kelompok4/KLINIK_PRATAMA_TSABITA.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1672651627577'),
('Feature', 38, 'Point', '101.45153050013255', '0.44770939986898384', 38, '0069B099', 'KLINIK PRATAMA YLPI', 'JL. KAHARUDDIN NASUTION NO.113', '81314783441', 'Non Rawat Inap', 'Umum, Gigi, Laboratorium, ANC, KB, Bedah Minor, Imunisasi/Vaksin, Konsultasi, Apotik', '101.4515305', '0.44770940', 'BUKITRAYA', 'https://ik.imagekit.io/avtcs3efu/GIS_Kelompok4/KLINIK_PRATAMA_YLPI.png?ik-sdk-version=javascript-1.4.3&updatedAt=1672651742848'),
('Feature', 39, 'Point', '101.47338540001624', '0.47466139990370950', 39, '0069B073', 'KLINIK SAHABAT IBU DAN ANAK', 'Jl. PARIT INDAH /DT. SETIA MAHARAJ', '85278520488', 'Rawat Inap', 'Persalinan, Gigi, Umum Khitan, Home Care', '101.4733854', '0.47466140', 'BUKITRAYA', 'https://ik.imagekit.io/avtcs3efu/GIS_Kelompok4/KLINIK_SAHABAT_IBU_DAN_ANAK.png?ik-sdk-version=javascript-1.4.3&updatedAt=1672651779283'),
('Feature', 40, 'Point', '101.48416250039912', '0.49466129967930783', 40, '0069U019', 'KLINIK SALSA', 'JL.IMAM MUNANDAR NO 451', '761849734', 'Non Rawat Inap', 'Persalinan, Gigi', '101.4841625', '0.49466130', 'TENAYANRAYA', 'https://ik.imagekit.io/avtcs3efu/GIS_Kelompok4/KLINIK_SALSA.png?ik-sdk-version=javascript-1.4.3&updatedAt=1672651815747'),
('Feature', 41, 'Point', '101.39222609995460', '0.46387089962234995', 41, '0069U020', 'KLINIK SANSANI', 'JL.HR SOEBRANTAS', '761564564', 'Rawat Inap', 'Persalinan, Gigi, Umum', '101.3922261', '0.46387090', 'TAMPAN', 'https://ik.imagekit.io/avtcs3efu/GIS_Kelompok4/KLINIK_SANSANI.png?ik-sdk-version=javascript-1.4.3&updatedAt=1672651879645'),
('Feature', 42, 'Point', '101.40715199956520', '0.51961900001685990', 42, '0069B040', 'Klinik Sejahtera', 'Jl. BHAKTI PERMAI I NO. 27 PKU', '76161580', 'Rawat Inap', 'Persalinan, Gigi, Umum, Laboratorium', '101.4071520', '0.51961900', 'PAYUNGSEKAKI', 'https://ik.imagekit.io/avtcs3efu/GIS_Kelompok4/Klinik_Sejahtera.png?ik-sdk-version=javascript-1.4.3&updatedAt=1672651846422'),
('Feature', 43, 'Point', '101.45869129976376', '0.49936529986871390', 43, '0069B085', 'KLINIK SIAGA MEDIKA', 'Jl. HARAPAN RAYA NO. 114 B', '76147728', 'Non Rawat Inap', 'Umum, Gigi, Homecare', '101.4586913', '0.49936530', 'BUKITRAYA', 'https://ik.imagekit.io/avtcs3efu/GIS_Kelompok4/KLINIK_SIAGA_MEDIKA.png?ik-sdk-version=javascript-1.4.3&updatedAt=1672651929581'),
('Feature', 44, 'Point', '101.44100000014993', '0.56123600004139010', 44, '0069U022', 'KLINIK TIGA PERMATA', 'JL. GABUS RAYA NO 4A', '76122451', 'Non Rawat Inap', 'Umum, Gigi', '101.4410000', '0.56123600', 'RUMBAIPESISIR', 'https://ik.imagekit.io/avtcs3efu/GIS_Kelompok4/KLINIK_TIGA_PERMATA.png?ik-sdk-version=javascript-1.4.3&updatedAt=1672651965105'),
('Feature', 45, 'Point', '101.36999560001698', '0.46429590033557133', 45, '0069B027', 'KLINIK UWA MEDIKA (JST)', 'JL.HR.SOEBRANTAS NO. 92 PANAM', '761787833', 'Non Rawat Inap', 'Umum, Gigi', '101.3699956', '0.46429590', 'TAMPAN', 'https://ik.imagekit.io/avtcs3efu/GIS_Kelompok4/KLINIK_UWA_MEDIKA__JST_.png?ik-sdk-version=javascript-1.4.3&updatedAt=1672652046807'),
('Feature', 46, 'Point', '101.45431220034783', '0.49896940031760550', 46, '0069B090', 'Laboratorium Klinik Kimia Farma', 'Jl. TUANKU TAMBUSAI NO. 59A', '76133548', 'Non Rawat Inap', 'Umum, THT, Saraf', '101.4543122', '0.49896940', 'MARPOYANDAMAI', 'https://ik.imagekit.io/avtcs3efu/GIS_Kelompok4/Laboratorium_Klinik_Kimia_Farma.png?ik-sdk-version=javascript-1.4.3&updatedAt=1672652072560'),
('Feature', 47, 'Point', '101.41306690001750', '0.54113469990653580', 47, '0069B089', 'MULYA MEDICA CLINIC', 'Jl. PEMUDA UJUNG NO. 82', '81266681777', 'Rawat Inap', 'Umum, Gigi', '101.4130669', '0.54113470', 'PAYUNGSEKAKI', 'https://ik.imagekit.io/avtcs3efu/GIS_Kelompok4/MULYA_MEDICA_CLINIC.png?ik-sdk-version=javascript-1.4.3&updatedAt=1672652103084');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_klinik`
--
ALTER TABLE `tb_klinik`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
