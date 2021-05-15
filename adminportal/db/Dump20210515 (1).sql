-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: newswebsitedatabase
-- ------------------------------------------------------
-- Server version	8.0.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `authority`
--

DROP TABLE IF EXISTS `authority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authority` (
  `id` bigint NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authority`
--

LOCK TABLES `authority` WRITE;
/*!40000 ALTER TABLE `authority` DISABLE KEYS */;
INSERT INTO `authority` VALUES (1,'full_authority'),(2,'news_authority'),(3,'contact_authority'),(4,'user_authority'),(5,'comment_authority');
/*!40000 ALTER TABLE `authority` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` bigint NOT NULL,
  `active` bit(1) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (14,_binary '','Koronavirüs'),(15,_binary '','Dünya'),(16,_binary '','Ekonomi'),(17,_binary '','Sağlık'),(18,_binary '','Teknoloji'),(19,_binary '','Eğlence'),(20,_binary '','Magazin'),(21,_binary '','Oyun'),(22,_binary '','Siyaset'),(143,_binary '\0','Kadın'),(215,_binary '','Bilim'),(221,_binary '','Eğitim'),(254,_binary '','Kitap Sanat');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `id` bigint NOT NULL,
  `message` text,
  `news_id` bigint DEFAULT NULL,
  `posting_date` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `active` bit(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (340,'dwad',322,'','',_binary '\0'),(342,'11 22 2 2',322,'','',_binary '\0'),(343,'bbbbbb',322,'11 Apr 2021 16:07','',_binary '\0'),(344,'hakan jonnnyyy',322,'11 Apr 2021 16:09','hkn2259',_binary '\0'),(345,'dadwada',322,'11 Apr 2021 16:10','hkn2259',_binary '\0'),(347,'2222',322,'11 Apr 2021 16:17','hkn2259',_binary '\0'),(348,'23123123123',322,'11 Apr 2021 16:24','hkn2259',_binary '\0'),(349,'bbbbb',322,'11 Apr 2021 16:24','hkn2259',_binary '\0'),(350,'dedededede',322,'11 Apr 2021 16:28','hkn2259',_binary '\0'),(351,'mmm',322,'11 Apr 2021 16:31','hkn2259',_binary '\0'),(352,'121313213132132',322,'11 Apr 2021 16:31','hkn2259',_binary '\0'),(353,'111',322,'11 Apr 2021 16:32','hkn2259',_binary '\0'),(354,'11\r\n1\r\n1\r\n1',322,'11 Apr 2021 16:33','hkn2259',_binary '\0'),(355,'awdawdawd',322,'11 Apr 2021 16:37','hkn2259',_binary '\0'),(356,'awdwad',322,'11 Apr 2021 16:37','hkn2259',_binary '\0'),(357,'awdawd',322,'11 Apr 2021 16:37','hkn2259',_binary '\0'),(358,'awdawd',322,'11 Apr 2021 16:38','hkn2259',_binary '\0'),(359,'dadaw',322,'11 Apr 2021 16:38','hkn2259',_binary '\0'),(360,'awdawd',322,'11 Apr 2021 16:38','hkn2259',_binary '\0'),(361,'awdw',322,'11 Apr 2021 16:38','hkn2259',_binary '\0'),(362,'dededw',321,'11 Apr 2021 16:44','hkn2259',_binary '\0'),(363,'awdawdawdaw',318,'11 Apr 2021 16:44','hkn2259',_binary '\0'),(365,'awdawdawdawdawd',316,'11 Apr 2021 16:44','hkn2259',_binary '\0'),(368,'active eklendi,naber yorumun guzel mi?',321,'11 Apr 2021 19:40','hkn2259',_binary '');
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact` (
  `id` bigint NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text,
  `name` varchar(255) DEFAULT NULL,
  `posting_date` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (54,'hakan.sandal9@hotmail.com','deneme posting date','#Election','17-03-2021 18:33','dawdaw'),(55,'ddw@gmail.com','awdawd','hakan sandal','','wdaw'),(58,'hakan.sandal9@hotmail.com','awdaw','awd','17-03-2021 18:46','wdaw'),(59,'awdawd@gmail.com','awdaw','#Election','17-03-2021 18:47','dawdawdaw'),(61,'awdawd@gmail.com','awdwad','dawd','17-03-2021 19:00','awdaw'),(62,'buent@gmail.com','knular konular işssizlik ','bulent','17-03-2021 19:02','knular konular işssizlik '),(308,'awdawd@gmail.com','awdaw','dadaw','22-03-2021 20:25','awd');
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (409);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news` (
  `id` bigint NOT NULL,
  `active` bit(1) NOT NULL,
  `author` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `description` text,
  `news_type` varchar(255) DEFAULT NULL,
  `publication_date` varchar(255) DEFAULT NULL,
  `sub_title` text,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (304,_binary '','Hakan','Sağlık','<p>&Ccedil;in&#39;in Vuhan kentinde patlak veren Kovid-19 salgını d&uuml;nya ekonomisini, insanların hayatını, &ouml;zg&uuml;rl&uuml;ğ&uuml;n&uuml; ve alışkanlıklarını sıra dışı bir şekilde etkilemeye devam ediyor.<br />\r\n<br />\r\n<a href=\"https://www.hurriyet.com.tr/haberleri/dso\" target=\"_blank\">DS&Ouml;</a>, ge&ccedil;en yıl bu hafta Vuhan&#39;da yayımlanan bir b&uuml;lten aracılığıyla şehirde, &quot;nedeni bilinmeyen zat&uuml;rre&quot; vakalarından haberdar oldu. Aslında bu vakalar yeni tip koronavir&uuml;s&uuml;n ilk ortaya &ccedil;ıkışıydı.<br />\r\n<br />\r\nBu &ouml;l&uuml;mc&uuml;l vir&uuml;s tarihte eşi g&ouml;r&uuml;lmemiş şekilde d&uuml;nyanın en &uuml;cra k&ouml;şesindeki Marshall Adaları&#39;dan Papua Yeni Gine&#39;ye kadar her yere yayıldı.<br />\r\nD&uuml;nya genelinde Kovid-19 vaka sayısı 81 milyonu, vir&uuml;s kaynaklı &ouml;l&uuml;mler ise 1 milyon 780 bini ge&ccedil;ti.<br />\r\n<br />\r\n<strong>DS&Ouml;&#39;ye yoğun eleştiriler</strong><br />\r\n<br />\r\nMerkezi İsvi&ccedil;re&#39;nin Cenevre kentinde bulunan ve 7 Nisan 1948&#39;de kurulan DS&Ouml;&#39;n&uuml;n d&uuml;nya genelinde 150 ofisi, 7 bin civarında &ccedil;alışanı bulunuyor.<br />\r\n<br />\r\nToplum sağlığıyla ilgili uluslararası &ccedil;alışmalar yapan DS&Ouml;, yaklaşık 7,8 milyarlık d&uuml;nya n&uuml;fusunun sağlık alanında g&uuml;venebileceği tek uluslararası platform konumunda bulunuyor.<br />\r\n<br />\r\nK&uuml;resel sağlık otoritesi olan DS&Ouml;, Kovid-19&rsquo;la m&uuml;cadelede &quot;yetersiz kalmak&quot;, &quot;ge&ccedil; adımlar atmak&quot;, &quot;&ccedil;elişkili mesajlar vermek&quot; ve &quot;aşı &ccedil;alışmalarından dolayı umutlanan insanlara korku pompalamaya devam etmek&quot; ile su&ccedil;lanıyor.<br />\r\n<br />\r\nBununla beraber &ouml;rg&uuml;t, aşıların Kovid-19 ile m&uuml;cadelenin yalnızca bir par&ccedil;ası olduğunu, maske, mesafe ve hijyen gibi &ouml;nlemlere devam edilmesini vurguluyor.<br />\r\n<br />\r\n<strong>ABD&#39;nin DS&Ouml;&#39;den &ccedil;ekilme kararı</strong><br />\r\n<br />\r\nDS&Ouml; Genel Direkt&ouml;r&uuml; Tedros Adhanom Ghebreyesus, 23 Mayıs 2017&#39;de 5 yıllığına se&ccedil;ilerek 1 Temmuz&#39;da g&ouml;reve başladı.<br />\r\nKovid-19 salgınında ABD y&ouml;netiminin hedef tahtası haline gelen Ghebreyesus ise kendisine ve &ouml;rg&uuml;te y&ouml;nelik eleştirilere adeta meydan okudu.<br />\r\n<br />\r\nABD Başkanı Donald Trump, DS&Ouml;&#39;y&uuml; &quot;gerekli reformları yapmamak&quot;, &quot;&Ccedil;in&#39;in kuklası olmak&quot;, &quot;&Ccedil;in odaklı davranmak&quot; ve &quot;salgının boyutlarını &ouml;rtbas etmekle&quot; su&ccedil;ladı.<br />\r\n<br />\r\nABD y&ouml;netimi de DS&Ouml;&#39;den resmi olarak 6 Temmuz 2021&#39;de &ccedil;ekileceğini bildirdi.<br />\r\n<br />\r\nBaşkan Trump&#39;ın ağır su&ccedil;lamalarına karşın Ghebreyesus ise &quot;Kovid-19 salgınının politize edilmemesi&quot; &ccedil;ağrısında bulundu.<br />\r\n<br />\r\n<strong>DS&Ouml; salgına karşı m&uuml;cadelede &quot;benzersiz&quot; avantajlarını kullanabildi mi?</strong><br />\r\n<br />\r\nDS&Ouml;, bulaşıcı hastalıklar konusunda &uuml;ye devletlerle bilgi alışverişi, tıbbi konularda &quot;hayati tavsiyelerde&quot; bulunma, aşı &ccedil;alışmalarını koordine etme ve d&uuml;ş&uuml;k gelirli &uuml;lkelere ekipman desteğinde bulunma gibi d&uuml;nya genelinde sağlık alanında &quot;sayısız&quot; ve &quot;benzersiz&quot; bir role sahip.<br />\r\nKuruluşundan bu yana DS&Ouml;&#39;ye 194 &uuml;lke &uuml;ye oldu.<br />\r\n<br />\r\nSağlık alanında hem y&ouml;nlendirici hem de koordine edici pozisyonda olan ve geniş yetkilere sahip bir yapısı bulunan DS&Ouml;, k&uuml;resel sağlık konusunda kılavuz &ouml;rg&uuml;t konumunda.<br />\r\n<br />\r\nDS&Ouml;&rsquo;n&uuml;n kuruluş t&uuml;z&uuml;ğ&uuml;n&uuml;n 21 ve 22. maddelerinde, &ouml;rg&uuml;t&uuml;n t&uuml;m d&uuml;nyada ge&ccedil;erli olacak kararlar alabilmesine ve bu kararların &uuml;ye devletlerin i&ccedil; hukuk mekanizmaları tarafından onaylanmaksızın ge&ccedil;erli olabilmesine imk&acirc;n tanıyan yetkiler d&uuml;zenlendi.<br />\r\n<br />\r\nDS&Ouml;&rsquo;n&uuml;n bu yetkilerine başka hi&ccedil;bir uluslararası kuruluş sahip değil.<br />\r\n<br />\r\n&Ouml;rg&uuml;t, bu g&uuml;c&uuml;ne rağmen, salgın t&uuml;m d&uuml;nyayı kasıp kavururken etkisiz kalmakla eleştiriliyor.<br />\r\n<br />\r\n<strong>&quot;&Ccedil;in ile sınırlarınızı kapatmayın&quot;</strong><br />\r\n<br />\r\n14 Ocak&#39;ta DS&Ouml;&#39;n&uuml;n Twitter hesabından, &Ccedil;inli yetkililere dayandırılarak yapılan paylaşımda, Kovid-19&#39;un insandan insana bulaştığı y&ouml;n&uuml;nde herhangi somut bir kanıt olmadığı iddia edildi.<br />\r\n<br />\r\n30 Ocak&#39;ta &quot;uluslararası kamu sağlığı acil durumu&quot; ilan edildiği g&uuml;n ise &ouml;rg&uuml;t&uuml;n &quot;&Ccedil;in ile sınırlarınızı kapatmayın &ccedil;ağrısı&quot; yapması şaşkınlıkla karşılandı.<br />\r\n<br />\r\nPek &ccedil;ok uzmana g&ouml;re bu &ccedil;ağrı vir&uuml;s&uuml;n t&uuml;m d&uuml;nyaya yayılmasının &ouml;n&uuml;n&uuml; a&ccedil;tı. DS&Ouml; ise bu iddiaları reddetti.<br />\r\n<br />\r\n&Ouml;rg&uuml;t, vir&uuml;s pek &ccedil;ok &uuml;lkeye yayıldıktan sonra 11 Mart&#39;ta salgını k&uuml;resel pandemi ilan etti.<br />\r\n<br />\r\n<strong>&quot;Maske &ccedil;elişkisi&quot;</strong><br />\r\n<br />\r\n&Ouml;rg&uuml;t, salgının ilk g&uuml;nlerinden itibaren sağlıklı kişilerin maske takmasına gerek olmadığı y&ouml;n&uuml;nde ısrarlı a&ccedil;ıklamalar yapmasına karşın 5 Haziran&#39;da h&uuml;k&uuml;metlere, toplu ulaşım ve kamusal alanlarda maske takılması y&ouml;n&uuml;nde ilk kez tavsiyede bulundu.<br />\r\n<br />\r\nDS&Ouml;&#39;n&uuml;n salgına ilişkin k&uuml;resel acil durum ilan edildikten tam 5 ay 5 g&uuml;n sonra sağlıklı kişilere de maske takma &ouml;nerisinde bulunması t&uuml;m d&uuml;nya basınında &quot;maske &ccedil;elişkisi&quot; başlıklarıyla yer aldı.<br />\r\n<br />\r\n<strong>Kovid-19&#39;un k&ouml;keni tartışmaları</strong><br />\r\n<br />\r\nDS&Ouml; salgının ilk g&uuml;nlerinden itibaren Kovid-19 vir&uuml;s&uuml;n&uuml;n doğal kaynaklı olduğu konusunda ısrar etti.<br />\r\n<br />\r\nNitekim, &ouml;rg&uuml;tten 21 Nisan&#39;da yapılan a&ccedil;ıklamada, &quot;(Kovid-19&#39;un hen&uuml;z kaynağını veya k&ouml;kenini bilmiyoruz. Emin olduğumuz tek bir şey var o da vir&uuml;s&uuml;n bir hayvandan kaynaklanmış olması. Bir laboratuvarda manip&uuml;le edilmedi.&quot; ifadesi kullanıldı.<br />\r\n<br />\r\nABD Başkanı Donald Trump ise 1 Mayıs&#39;ta yaptığı a&ccedil;ıklamada, Kovid-19&#39;un &Ccedil;in&#39;in Vuhan kentindeki bir laboratuvardan &ccedil;ıktığına ilişkin kanıtları g&ouml;rd&uuml;ğ&uuml;n&uuml; s&ouml;yledi. &Ouml;rg&uuml;t ise Trump&#39;ın a&ccedil;ıklamaları karşısında vir&uuml;s&uuml;n doğal kaynaklı olduğu konusunda ısrar etti.<br />\r\n<br />\r\n<strong>DS&Ouml; bilim heyeti hen&uuml;z Vuhan&#39;a gidemedi</strong><br />\r\n<br />\r\n&Ouml;rg&uuml;t b&uuml;nyesindeki bir araştırmacı ekip ekim sonunda sanal ortamda &Ccedil;inli uzmanlarla Kovid-19&#39;un k&ouml;kenine ilişkin bir toplantı yaptı.<br />\r\nFakat vir&uuml;s&uuml;n belirtilerinin Vuhan&#39;da ortaya &ccedil;ıkmasının ardından 1 yıl ge&ccedil;mesine rağmen Kovid-19&#39;un k&ouml;kenini araştıracak DS&Ouml; bilim heyeti hen&uuml;z Vuhan&#39;a ulaşabilmiş değil.<br />\r\n<br />\r\n&Ouml;rg&uuml;t, devam eden araştırmalara rağmen vir&uuml;s&uuml;n Vuhan&#39;da &quot;nasıl, nerede ve ne zaman yayılmaya başladığına&quot; dair &ccedil;ok az şey bilindiğini kabul etti.<br />\r\n<br />\r\n&Ccedil;in&#39;de Kovid-19 kaynaklı ilk &ouml;l&uuml;m&uuml;n kaydedilmesinden 1 yıl sonra vir&uuml;s&uuml;n k&ouml;kenini araştırmak i&ccedil;in 10 uluslararası bilim insanının gelecek ay Vuhan&#39;a gideceği bildirildi.<br />\r\n<br />\r\n<strong>Şeffaflık eleştirisi</strong><br />\r\n<br />\r\nDS&Ouml; Genel Direkt&ouml;r&uuml; Ghebreyesus, haftada iki g&uuml;n &ccedil;evrim i&ccedil;i video konferans uygulaması Zoom ile sanal basın toplantıları d&uuml;zenliyor. Bu toplantılara d&uuml;nya genelinden y&uuml;zlerce gazeteci katılıyor. Ancak ekranda katılımcılar gizlendiği i&ccedil;in toplantılara kimlerin katıldığını bilmiyor.<br />\r\nBM Cenevre Ofisi&#39;nde d&uuml;zenlenen t&uuml;m basın toplantıları ise basına a&ccedil;ık.<br />\r\n<br />\r\nBM nezdinde bir kuruluş olan DS&Ouml;&#39;n&uuml;n son y&uuml;zyılın en b&uuml;y&uuml;k sağlık sorununun yaşandığı bir d&ouml;nemde kapılarını fiziki olarak basına kapatması ve sadece &ccedil;evrim i&ccedil;i toplantılar yapması ağır eleştirilere neden oldu.<br />\r\n<br />\r\nCenevre merkezli gazeteciler DS&Ouml;&#39;n&uuml;n basın toplantılarını &quot;k&ouml;r web semineri&quot; olarak niteliyor.<br />\r\n<br />\r\nNitekim, BM Cenevre Ofisine Akredite Basın Mensupları Birliğinin (ACANU) d&uuml;zenlediği geleneksel yıl sonu anketinde DS&Ouml; medya ekibi son sıralarda yer aldı.<br />\r\n<br />\r\nAnkete katılan uluslararası gazetecilerin y&uuml;zde 67&#39;si DS&Ouml; medya ekibinin Kovid-19 salgınını &quot;k&ouml;t&uuml;&quot; y&ouml;nettiği şıkkına imza attı.<br />\r\n<br />\r\nACANU anket sonu&ccedil;larını Twitter &uuml;zerinden yayımladı.<br />\r\n<br />\r\nBM&#39;nin 71 yıllık gazeteci &ouml;rg&uuml;t&uuml; olan ACANU ve İsvi&ccedil;re Yabancı Gazeteciler Derneği (APES) &quot;daha fazla bilgiye erişim ve şeffaflığın sağlanması&quot; i&ccedil;in Genel Direkt&ouml;r Ghebreyesus&#39;a mektuplar g&ouml;nderdi.<br />\r\n<br />\r\n<strong>&quot;DS&Ouml;&#39;n&uuml;n politikaları y&ouml;nlendiriliyor&quot; iddiası</strong><br />\r\n<br />\r\nABD&#39;nin DS&Ouml;&#39;den &ccedil;ekilme kararının ardından Bill &amp; Melinda Gates Vakfı, &ouml;rg&uuml;t&uuml;n bir numaralı finans&ouml;r&uuml; haline geldi.<br />\r\nGhebreyesus&#39;un DS&Ouml; se&ccedil;imlerini Bill Gates&#39;in desteğiyle kazandığı belirtilmişti.<br />\r\n<br />\r\nPandemi d&ouml;neminde &ouml;rg&uuml;te y&ouml;nelik en ciddi eleştirilerden biri de şeffaflığı tartışmalı olan Bill &amp; Melinda Gates Vakfı gibi &ccedil;ok uluslu kar amacı g&uuml;tmeyen bazı grupların &quot;DS&Ouml;&#39;n&uuml;n politikalarını&quot; y&ouml;nlendirdiği iddiaları oldu.<br />\r\n<br />\r\n<strong>DS&Ouml;&#39;n&uuml;n &quot;COVAX&quot; başarısı</strong><br />\r\n<br />\r\nUzmanlar, t&uuml;m eleştirilere rağmen DS&Ouml; eş g&uuml;d&uuml;m&uuml;nde y&uuml;r&uuml;t&uuml;len Kovid-19 Aşıları K&uuml;resel Erişim Programı (COVAX) ile &quot;harika bir iş başarıldığını&quot; ifade ediyor.<br />\r\n<br />\r\nDS&Ouml;, COVAX girişimiyle orta ve d&uuml;ş&uuml;k gelirli &uuml;lkelere 2021 yılında 2 milyar doz aşı dağıtılacağını a&ccedil;ıkladı.<br />\r\n<br />\r\nCOVAX ile Kovid-19 aşılarının adil dağıtımı planlandı ve bu girişime şimdiye kadar 190 &uuml;lke katıldı.<br />\r\n<br />\r\nZengin &uuml;lkelerin d&uuml;ş&uuml;k ve orta gelirli &uuml;lkeleri desteklemesi i&ccedil;in kurulan COVAX, DS&Ouml;&#39;n&uuml;n salgında &quot;en b&uuml;y&uuml;k başarısı&quot; olarak &ouml;n plana &ccedil;ıktı.<br />\r\n<br />\r\n<strong>DS&Ouml;&#39;n&uuml;n ge&ccedil;mişteki başarıları Kovid-19 i&ccedil;in umut veriyor</strong><br />\r\n<br />\r\nDS&Ouml;, epidemiyoloji alanında d&uuml;nyanın en &ouml;nemli bilim insanlarını b&uuml;nyesinde bulunduruyor.<br />\r\n<br />\r\nGhebreyesus&#39;un d&uuml;zenlediği basın toplantılarına bu uzmanlar da katılıyor. &Ouml;rg&uuml;t, &ouml;zellikle son aylarda Kovid-19&#39;a karşı m&uuml;cadelede tutarlı mesajlar vermeye başladı.<br />\r\n<br />\r\nDS&Ouml;&#39;n&uuml;n ge&ccedil;mişteki, &ccedil;i&ccedil;ek hastalığı, &ccedil;ocuk felci ve Ebola&#39;ya karşı başarıları, Kovid-19 salgınının sona erdirilmesi i&ccedil;in insanlığa umut veriyor.<br />\r\nDS&Ouml; Genel Direkt&ouml;r&uuml; Ghebreyesus, neredeyse d&uuml;zenlediği t&uuml;m basın toplantılarında mutlaka &quot;k&uuml;resel dayanışma&quot; &ccedil;ağrısı yaptı.<br />\r\n<br />\r\n&quot;Birimiz g&uuml;vende değilsek kimse g&uuml;vende değil&#39; diyen Ghebreyesus, &quot;aşı milliyet&ccedil;iliğine&quot; karşı uyarılarda bulundu.<br />\r\n<br />\r\nGhebreyesus, pazartesi d&uuml;zenlediği yılın son basın toplantısını &quot;Hi&ccedil;birimiz bir salgını kendi başımıza bitiremeyiz ama bu salgını birlikte bitireceğiz.&quot; s&ouml;zleriyle tamamladı.</p>\r\n','Normal','22 Mar 2021 00:16','Birleşmiş Milletler (BM) nezdinde 1948\'de kurulan Dünya Sağlık Örgütü (DSÖ), yeni tip koronavirüs (Kovid-19) salgınında aldığı gecikmeli kararlar nedeniyle ve şeffaflık konusunda sıkça eleştirilirken, örgüt 2020\'de tarihinin en zor döneminden geçti.','Koronavirüs salgını DSÖ\'yü tartışmaya açtı'),(314,_binary '','Hakan','Eğitim','<p>Milli Eğitim Bakanlığı&#39;ndan (<a href=\"https://www.hurriyet.com.tr/haberleri/meb\" target=\"_blank\">MEB</a>) yapılan a&ccedil;ıklamaya g&ouml;re,&nbsp;<a href=\"https://www.hurriyet.com.tr/haberleri/acikogretim\" target=\"_blank\">A&ccedil;ık&ouml;ğretim</a>&nbsp;Ortaokulu, A&ccedil;ık&ouml;ğretim Lisesi, Mesleki A&ccedil;ık&ouml;ğretim Lisesi ve A&ccedil;ık&ouml;ğretim İmam Hatip Lisesinin 2020-2021 eğitim ve &ouml;ğretim yılı ikinci d&ouml;nem&nbsp;<a href=\"https://www.hurriyet.com.tr/haberleri/merkezi\" target=\"_blank\">merkezi</a>&nbsp;sistem sınavları, 25 Mart&#39;ta 09.30&#39;dan başlayarak, 29 Mart 23.59&#39;a kadar &ccedil;evrimi&ccedil;i olacak. A&ccedil;ık&ouml;ğretim okullarında kayıtlı t&uuml;m &ouml;ğrencilerin sınavlara katılabilmeleri i&ccedil;in, &ouml;ğrencilik durumlarına bakılmaksızın kayıt yenileme ve ders se&ccedil;me işlemleri bakanlık tarafından yapıldı. &Ouml;ğrenciler,&nbsp;<a href=\"https://www.hurriyet.com.tr/haberleri/sinav\" target=\"_blank\">sınav</a>&nbsp;uygulamalarıyla ilgili her t&uuml;rl&uuml; bilgiye, a&ccedil;ık &ouml;ğretim okullarının resmi internet sitelerinden ulaşabilecek.</p>\r\n\r\n<p>&nbsp;</p>\r\n','Normal','22 Mar 2021 21:53','Açıköğretim okulları ikinci dönem merkezi sistem sınavları, 25-29 Mart 2021 tarihleri arasında çevrimiçi yapılacak.','Açıköğretim okulları ikinci dönem merkezi sistem sınavları, 25-29 Mart\'ta'),(315,_binary '','Hakan','Eğitim','<p>Milli&nbsp;<a href=\"https://www.hurriyet.com.tr/haberleri/egitim\" target=\"_blank\">Eğitim</a>&nbsp;Bakanı Ziya Sel&ccedil;uk,&nbsp;<a href=\"https://www.hurriyet.com.tr/haberleri/dunya-bankasi\" target=\"_blank\">D&uuml;nya Bankası</a>&nbsp;ile yaptıkları projede, &lsquo;se&ccedil;-beğen-izle&rsquo; formatında, isteyen herkesin istediği alanda eğitim alabileceği, b&uuml;y&uuml;k bir dijital platform kurulum &ccedil;alışmalarına başlandığını s&ouml;yledi. Bakan Sel&ccedil;uk, COVID-19 salgını sona erdiğinde, uzaktan eğitimin ve &ccedil;evrim i&ccedil;i platformların T&uuml;rk eğitim sistemindeki yerinin nasıl olacağıyla ilgili a&ccedil;ıklamalar yaptı. Uzaktan eğitimin iki yıl &ouml;nce a&ccedil;ıkladıkları 2023 Eğitim Vizyonu, &lsquo;orta&ouml;ğretim tasarımı&rsquo; ve benzeri planlamaların i&ccedil;erisinde yer aldığını belirten Sel&ccedil;uk, konuşmasına ş&ouml;yle devam etti:<br />\r\n&ldquo;O d&ouml;nemde&nbsp;<a href=\"https://www.hurriyet.com.tr/haberleri/uzaktan-egitim\" target=\"_blank\">uzaktan eğitim</a>&nbsp;zihinlere yerleşmedi ve &ccedil;ok fazla soru aldık. T&uuml;rkiye&#39;nin t&uuml;m illerinde y&uuml;z tanıma sistemlerinin entegre edildiği dijital sınav merkezleri a&ccedil;tık. Ayrıca liselerde g&uuml;nl&uuml;k 8-10 saat s&uuml;ren dersleri 6-7 saate indirip geriye kalan 2-3 saatte gen&ccedil;lerin sanat, bilim, k&uuml;lt&uuml;r, spor, kul&uuml;p &ccedil;alışmaları, projeler ve Ar-Ge ile uğraşmasına fırsat verilmesi konusuna da kafa yorduk. Bizim &ccedil;ocuklarımız liselerde 13-14 ayrı ders alıyor da neden Anglosaksonlar 5-6, azami yedi ders alıyor? Bunun yanıtını vermek zorundayız. Hibrit eğitim modelleri, yani y&uuml;ze eğitim ağırlıkta olmak &uuml;zere sertifikalandırılmış ve gerekirse diplomaya d&ouml;n&uuml;şebilecek uzaktan eğitim platformları giderek daha da yaygınlaşacak. D&uuml;nya Bankası ile yaptığımız projede &#39;se&ccedil;-beğen-izle&#39; formatında, isteyen herkesin istediği alanda eğitim alabileceği, b&uuml;y&uuml;k bir dijital platform kuruyoruz.</p>\r\n\r\n<p><strong>PLATFORMDA HER ALANDA EĞİTİMLER YER ALACAK</strong><br />\r\nBu platformda, enstr&uuml;mandan arıcılığa, ilkyardımdan satranca hemen her alanda eğitimler yer alacak. &Ouml;ğretmen ve y&ouml;netici eğitimlerinin tamamı, &ouml;ğrencilerin derslerinin bir kısmı, veli eğitimleri bu platformdan yapılabilecek. Bu platformla 7&#39;den 70&#39;e herkes, istediği y&uuml;z binlerce eğitim i&ccedil;eriğine kolay ve &uuml;cretsiz erişim sağlayabilecek. Eğitimlerin, Mesleki Yeterlilik Kurumundan onaylanarak sertifikalandırılabilmesi g&uuml;ndeme gelecek. Bu platforma isteyenler, mobil cihazlardan, televizyonlardan ya da bilgisayarlardan, EBA destek merkezlerinden ya da halk eğitim merkezlerinden ulaşabilecek. Evde otururken mobil telefondan takip edilerek bir konuda sertifika alınabilir. Yani bu iş b&ouml;yle olmalı. T&uuml;rkiye&#39;nin geleceği, d&uuml;nyanın geleceği, s&uuml;rekli yenilenen iş kolları, s&uuml;rekli yeni beceriye ihtiya&ccedil; duyulan iş kollarında mesleki eğitim ve hayat boyu &ouml;ğrenme kapsamında hangi beceriye ihtiya&ccedil; varsa bunların tamamını halledeceğiz.</p>\r\n\r\n<p><strong>PLATFORM D&Uuml;NYA &Ccedil;APINDA OLACAK</strong><br />\r\nPlatform &ccedil;ok b&uuml;y&uuml;k bir proje ve D&uuml;nya Bankasından alınan b&uuml;y&uuml;k bir b&uuml;t&ccedil;eyle ger&ccedil;ekleştirilecek. Bu, d&uuml;nya &ccedil;apında bir platform olacak, bu platformun yurtdışı tarafı da olacak. Altyapı &ccedil;alışmaları s&uuml;r&uuml;yor. Platform, hayat boyu &ouml;ğrenmeden &ouml;rg&uuml;n eğitime, &ouml;ğretmenlerin mesleki gelişimine kadar t&uuml;m ihtiya&ccedil;lara cevap verecek bir platform olacak. &#39;Kendim i&ccedil;in ne yapabilirim? Danışmanlık desteği hizmeti istiyorum.&#39; diyen de bu platforma başvuru yapabilecek. Bu toplumun t&uuml;m eğitimsel ihtiya&ccedil;larını tanımlayan bir &ccedil;er&ccedil;eve olacak. Biz bunu 1.5-2 yıl i&ccedil;inde belli bir noktaya getirebiliriz.</p>\r\n\r\n<p><strong>YENİ D&Ouml;NEMDE, BAZI DERSLER UZAKTAN EĞİTİMLE VERİLECEK</strong><br />\r\nBazı derslerin uzaktan eğitimle verilmesi konusunda mevzuat ile ilgili bazı taslaklar hazırladık. Bu yılın eyl&uuml;l ayında, yani yeni eğitim-&ouml;ğretim d&ouml;neminde liselerdeki bazı derslerin ya da ortaokuldaki bazı se&ccedil;meli derslerin hangilerinin uzaktan verilebileceğiyle ilgili bir &ouml;n değerlendirme yapıldı. Talim ve Terbiye Kurulu Başkanlığı da uzaktan eğitimle verilecek derslerin hangileri olacağına &ccedil;alışıyor.&nbsp; Biz bu dersleri kredi olarak da sayacağız. Bunun i&ccedil;in &ouml;ğrencinin kayıt olması gerekecek.&rdquo;</p>\r\n\r\n<p><strong>DİJİTAL D&Ouml;N&Uuml;Ş&Uuml;MDEN BAŞKA &Ccedil;IKIŞ YOK</strong><br />\r\n&ldquo;2023 Eğitim Vizyonu&#39;na uzaktan eğitimi alırken bu konunun bu kadar hızlı gelişeceğini d&uuml;ş&uuml;nm&uuml;ş m&uuml;yd&uuml;n&uuml;z?&quot; sorusunu yanıtlayan Sel&ccedil;uk, &quot;O d&ouml;nem, &uuml;lke &ouml;l&ccedil;ekli b&uuml;t&uuml;nsel olarak değil de bu konuda pilot &ccedil;alışmalarla k&uuml;&ccedil;&uuml;k k&uuml;&ccedil;&uuml;k ilerleyebilirim, diye d&uuml;ş&uuml;nm&uuml;şt&uuml;m. Belki 10 yıl uğraşsak &ouml;ğretmenlerimizin dijital becerilerinin d&ouml;n&uuml;ş&uuml;m&uuml;n&uuml; bu kadar hızlı sağlayamazdık. Salgın 1-2 ay s&uuml;rse yine sağlayamazdık, uzun s&uuml;ren bu salgın neticesinde, artık başka &ccedil;ıkış yok ve bunu yapmak durumundayız, noktasına geldik hepimiz&quot; dedi.</p>\r\n\r\n<p>&nbsp;</p>\r\n','Normal','22 Mar 2021 21:54','Milli Eğitim Bakanı Ziya Selçuk, \"Dünya Bankası ile yaptığımız projede, \'seç-beğen-izle\' formatında, isteyen herkesin istediği alanda eğitim alabileceği, büyük bir dijital platform kuruyoruz. Bu platformla 7\'den 70\'e herkes, istediği yüz binlerce eğitim içeriğine kolay ve ücretsiz erişim sağlayabilecek. Eğitimlerin, Mesleki Yeterlilik Kurumundan onaylanarak sertifikalandırılabilmesi gündeme gelecek. Bu yılın eylül ayında, yani yeni eğitim-öğretim döneminde liselerdeki bazı derslerin ya da ortaokuldaki bazı seçmeli derslerin hangilerinin uzaktan verilebileceğiyle ilgili bir ön değerlendirme yapıldı. Talim ve Terbiye Kurulu Başkanlığı da uzaktan eğitimle verilecek derslerin hangileri olacağına çalışıyor\" dedi.','MEB’den Dijital Eğitim Platformu'),(317,_binary '\0','Hakan','Eğitim','<p><a href=\"https://www.hurriyet.com.tr/haberleri/hurriyet\" target=\"_blank\">H&uuml;rriyet</a>&rsquo;in&nbsp;<a href=\"https://www.hurriyet.com.tr/haberleri/egitim\" target=\"_blank\">eğitim</a>-&ouml;ğretim yılının birinci d&ouml;neminde pandemi s&uuml;recinde devam eden uzaktan eğitim s&uuml;recine&nbsp;<a href=\"https://www.hurriyet.com.tr/haberleri/destek\" target=\"_blank\">destek</a>&nbsp;olmak i&ccedil;in hafta i&ccedil;i her g&uuml;n &uuml;cretsiz verilen &lsquo;Eğitime Destek Eki&rsquo;, S&ouml;mestr tatilinin ardından ikinci d&ouml;nemde de devam ediyor.. T&uuml;rkiye&rsquo;nin d&ouml;rt bir yanındaki &ouml;ğrencilere ulaşan, EBA&rsquo;nın m&uuml;fredatıyla eş zamanlı olarak ilerleyen bu ekin i&ccedil;eriğinde; &ouml;zet konu anlatımları, &ouml;zel hazırlanmış sorular ve alıştırmalar yer alıyor.</p>\r\n\r\n<p>Gazeteyle birlikte hafta i&ccedil;i her g&uuml;n &uuml;cretsiz olarak verilen H&uuml;rriyet Eğitime Destek Eki, 1&rsquo;inci sınıftan 12&rsquo;nci sınıfa kadar yaklaşık 18 milyon &ouml;ğrencinin her g&uuml;n kendileri i&ccedil;in &ouml;zel hazırlanan sorulara ve alıştırmalara ulaşmasını sağlıyor. T&uuml;m eğitim s&uuml;re&ccedil;lerini dijital ve g&ouml;rsel olarak ger&ccedil;ekleştiren &ccedil;ocuklara, basılı olarak soru &ccedil;&ouml;zme avantajı da sunacak.</p>\r\n\r\n<p>Nuran &Ccedil;akmak&ccedil;ı y&ouml;netimindeki &quot;H&uuml;rriyet Eğitime Destek Eki&rdquo; hafta i&ccedil;i her g&uuml;n H&uuml;rriyet Gazetesi ile T&uuml;rkiye&rsquo;nin d&ouml;rt bir yanındaki bayilerde yer alıyor.</p>\r\n\r\n<p>&nbsp;</p>\r\n','Normal','14 May 2021 17:33','Hürriyet’in EBA müfredatı ile eş zamanlı, uzaktan eğitimi destekleyen özel eki, eğitim-öğretim yılının ikinci döneminde de devam ediyor. Tüm kademelerin yanı sıra sınavlara hazırlanan öğrenciler için de özel ek önemli bir kaynak oluyor.','Hürriyet\'in eğitime desteği ikinci yarıyılda da sürüyor!'),(319,_binary '','Hakan','Koronavirüs','<p>Başkent Berlin&#39;de, Brandenburg Kapısı ve Federal Meclis &ouml;n&uuml;nde toplanan&nbsp;<a href=\"https://www.hurriyet.com.tr/haberleri/turizm\" target=\"_blank\">turizm</a>&nbsp;sekt&ouml;r&uuml; &ccedil;alışanları, h&uuml;k&uuml;metin, g&uuml;venli seyahat yapılabilmesine olanak sağlaması i&ccedil;in g&ouml;steri yaptı. Ellerine valizlerini alan g&ouml;stericiler, &uuml;zerinde &quot;Bir &ccedil;ıkış stratejisi istiyoruz&quot;, &quot;Seyahat &ouml;zg&uuml;rl&uuml;ğ&uuml; olmadan hepimiz ve d&uuml;nyadaki herkes tehlikededir&quot;, &quot;Seyahatler salgını arttırmıyor&quot;, &quot;Aşı ve testlerle seyahat &ouml;zg&uuml;rl&uuml;ğ&uuml;&quot; ve &quot;Kapanmayı sonlandırın&quot; yazan pankart ve d&ouml;vizler taşıdı.</p>\r\n\r\n<p>G&ouml;steriye katılan &quot;Mein Reisegl&uuml;ck&quot; şirketinin danışmanı Kurt Koch, AA muhabirine, vaka sayıları yukarı &ccedil;ıktığında tedbirleri artırmanın, azaldığında ise gevşetmenin bir strateji olmaması gerektiğini s&ouml;yledi. Koch,&nbsp;<a href=\"https://www.hurriyet.com.tr/haberleri/almanya\" target=\"_blank\">Almanya</a>&#39;da 10 milyon kişinin aşı olduğuna ve &ccedil;eşitli test imkanlarının bulunduğuna işaret ederek, &quot;Bizim, diğer &uuml;lkelerde olduğu gibi bir stratejiye ihtiyacımız var.&quot; dedi.</p>\r\n\r\n<p>Seyahat etmek isteyenlerin, valizlerini hazır tutarak seyahatlere imkan verilmesini beklediklerini anlatan Koch, &quot;M&uuml;şterilerimiz, T&uuml;rkiye&#39;ye seyahat etmeyi bekliyorlar.&quot; diye konuştu. Kurt Koch, T&uuml;rkiye&#39;de misafirperverliğin ve olağan&uuml;st&uuml; fiyat-kalite ilişkisinin bulunduğuna dikkati &ccedil;ekerek, kendi şirketinin de kasım ayında yıllık toplantısını T&uuml;rkiye&#39;de yapacağını kaydetti.</p>\r\n\r\n<p>Cottbus kentinde bir seyahat acentesinde &ccedil;alışan Katrin G&ouml;ring ise h&uuml;k&uuml;metin insanlara tatil yapma imkanı vermesini istediklerini belirterek, &quot;Siyaset&ccedil;iler ve toplumdan, seyahatlerin g&uuml;venli olduğunu anlamasını bekliyoruz.&quot; ifadesini kullandı.<br />\r\nG&ouml;ring, otellerin iyi karantina ve hijyen tasarılarına sahip olduğunu vurgulayarak, &quot;Seyahat etmek su&ccedil; değildir ve seyahat edenler negatif test sonu&ccedil;ları ibraz ettiklerinde anlamsız karantina uygulamalarıyla cezalandırılmamalı.&quot; g&ouml;r&uuml;ş&uuml;n&uuml; dile getirdi.<br />\r\nAlmanya&#39;da kısıtlamalardan etkilenen binlerce kişinin bulunduğunu anımsatan G&ouml;ring, h&uuml;k&uuml;metten kendilerine bundan sonra durumun nasıl devam edeceğine ilişkin bir perspektif sunmasını ve maddi yardım yapmasını istedi.</p>\r\n\r\n<p>&nbsp;</p>\r\n','Normal','22 Mar 2021 22:04','Almanya\'da, yeni tip koronavirüs (Kovid-19) sebebiyle getirilen kısıtlamalardan etkilenen turizm sektörü çalışanları, halkın \"güvenli seyahat\" yapabilmesi için hükümetten strateji geliştirmesi talebinde bulundu.','Almanya\'da turizmcilerden güvenli seyahat talebi'),(320,_binary '','Hakan','Koronavirüs','<p>Vakfıkebir il&ccedil;esinde yaşayan&nbsp;<a href=\"https://www.hurriyet.com.tr/haberleri/mujde-cilingir\" target=\"_blank\">M&uuml;jde &Ccedil;ilingir</a>, bir s&uuml;re &ouml;nce&nbsp;<a href=\"https://www.hurriyet.com.tr/corona-virusu/\" target=\"_blank\">koronavir&uuml;s</a>&nbsp;belirtileri g&ouml;sterince&nbsp;<a href=\"https://www.hurriyet.com.tr/haberleri/trabzon\" target=\"_blank\">Trabzon</a>&nbsp;Kanuni Eğitim ve Araştırma Hastanesi&rsquo;ne başvurdu. 6 aylık hamile olan M&uuml;jde &Ccedil;ilingir&rsquo;in yapılan koronavir&uuml;s testi pozitif &ccedil;ıktı. Hastanede tedaviye alınan &Ccedil;ilingir&rsquo;in sağlık durumu ağırlaşınca sezaryene karar verdi. &Ccedil;ilingir&rsquo;in d&uuml;n sezaryenle karnındaki kız bebeği alındı.</p>\r\n\r\n<p>Yoğun bakım servisine alınan M&uuml;jde &Ccedil;ilingir, doktorların t&uuml;m &ccedil;abasına karşın kurtarılamadı. Hayata tutunan bebek ise hastanede g&ouml;zetim altına alındı. 4 &ccedil;ocuk annesi &Ccedil;ilingir&rsquo;in &ouml;l&uuml;m&uuml;, ailesinin yanı sıra arkadaşlarını h&uuml;zne boğdu.</p>\r\n\r\n<p><strong>CENAZE YOLUNDA KAZA: 4 YARALI</strong></p>\r\n\r\n<p>Hen&uuml;z adı konulmayan yeni doğan bebeğine sarılamadan hayata veda eden M&uuml;jde &Ccedil;ilingir&#39;in ailesi, sabah saatlerinde cenaze i&ccedil;in il&ccedil;eye gitmek &uuml;zere kent merkezinden yola &ccedil;ıktı. Ailenin i&ccedil;erisinde bulunduğu 61 HG 761 plakalı hafif ticari ara&ccedil;, Vakfıkebir-Tonya yolunda s&uuml;r&uuml;c&uuml;s&uuml; &ouml;ğrenilemeyen 11 EL 161 plakalı kamyonet ile kafa kafaya &ccedil;arpıştı. Kazada M&uuml;jde &Ccedil;ilingir&rsquo;in babası İsmet, annesi Emine Garip ile akrabaları &Ouml;.F. A. ve C.K. yaralandı.</p>\r\n\r\n<p>İhbar &uuml;zerine kaza yerine sevk edilen sağlık ekiplerinin ilk m&uuml;dahalede bulunduğu yaralılar, hastaneye kaldırılarak tedaviye alındı.</p>\r\n\r\n<p>&nbsp;</p>\r\n','Normal','22 Mar 2021 22:06','Trabzon\'da kahreden haber geldi. Koronavirüs tedavisi gördüğü hastanede durumu ağırlaşınca 6 aylık kız bebeği sezaryenle alınan Müjde Çilingir (34), bir gün sonra yaşamını yitirdi. Bebek hayata tutunurken kızlarının cenazesine katılmak için yola çıkan Müjde Çilingir\'in anne ve babasıyla 2 yakınları, içinde bulundukları hafif ticari araçla kamyonetin çarpışması sonucu yaralandı.','Koronavirüse yakalandı, bebeği alındı! Müjde Çilingir öldü, bebeği kurtuldu! Cenaze için yola çıkan ailesi kaza geçirdi'),(322,_binary '','Hakan','Koronavirüs','<p>İstanbulluların uğrak yeri&nbsp;<a href=\"https://www.hurriyet.com.tr/haberleri/istiklal-caddesi\" target=\"_blank\">İstiklal Caddesi</a>&nbsp;endişelendiren kalabalık oluştu. Yapılan t&uuml;m uyarılara rağmen İstiklal Caddesi&#39;nde g&uuml;n i&ccedil;erisinde hareketlilik giderek artarken, yayalarının &ouml;nemli b&ouml;l&uuml;m&uuml;n&uuml;n maske kuralına uyduğu ancak sosyal mesafe kuralının uygulanamaz hale geldiği g&ouml;ze &ccedil;arptı.</p>\r\n\r\n<p><img alt=\"\" src=\"https://i4.hurimg.com/i/hurriyet/75/770x0/605898154e3fe106c41fae25\" /></p>\r\n','Normal','22 Mar 2021 22:11','Koronavirüs ile mücadele sürerken İstiklal Caddesi\'ndeki yoğunluk dikkat çekti. Caddeyi dolduranlar sosyal mesafe ve maske kuralını hiçe saydı.','İstiklal Caddesi\'nde endişelendiren kalabalık'),(323,_binary '','Rıdvan','Dünya','<p>Afrika&#39;nın doğusundaki ada &uuml;lkesi&nbsp;<a href=\"https://www.hurriyet.com.tr/haberleri/madagaskar\" target=\"_blank\">Madagaskar</a>&#39;da, yedikleri deniz kaplumbağasından zehirlenen 19 kişi hayatını kaybetti.</p>\r\n\r\n<p>Başkent Antananarivo&#39;nun doğusundaki Vatomandry hastanesi yetkilileri,&nbsp;<a href=\"https://www.hurriyet.com.tr/haberleri/deniz-kaplumbagasi\" target=\"_blank\">deniz kaplumbağası</a>&nbsp;eti&nbsp;yedikten sonra zehirlenme şikayetiyle hastaneye getirilen 34 kişiden 10&#39;unun hastanede yaşamını yitirdiğini belirtti.</p>\r\n\r\n<p>Valilikten yapılan a&ccedil;ıklamada ise&nbsp;aynı deniz kaplumbağasının etinden yiyen 9 &ccedil;ocuğun da evinde &ouml;ld&uuml;ğ&uuml; kaydedildi.</p>\r\n\r\n<p><strong>DENİZ&nbsp;DİBİNDEKİ YOSUNLAR&nbsp;ZEHİRLİ TOKSİNLER SALGILIYOR</strong></p>\r\n\r\n<p>&Uuml;lkede sıcaklıkların artış g&ouml;sterdiği kasım-mart d&ouml;neminde&nbsp;deniz&nbsp;dibindeki yosunların zehirli toksinler salgıladığı biliniyor.</p>\r\n\r\n<p>Deniz&nbsp;kaplumbağaları ve 20&#39;den fazla&nbsp;<a href=\"https://www.hurriyet.com.tr/mahmure/astroloji/balik-burcu/\" target=\"_blank\">balık</a>t&uuml;r&uuml;, bu aylarda&nbsp;denizin dibindeki zehirli yosunlarla beslendiği i&ccedil;in s&ouml;z konusu bitkilerdeki&nbsp;toksinler zamanla bunlarla beslenen canlıların etine ge&ccedil;iyor. T&uuml;ketilmesi halinde ise &ouml;l&uuml;mc&uuml;l sonu&ccedil;lara neden olabiliyor.</p>\r\n\r\n<p>Yetkililer, bu d&ouml;nemde s&ouml;z konusu canlıların t&uuml;ketilmemesi konusunda uyarılarda bulunsa da &ouml;zellikle kıyı b&ouml;lgelerde yaşayan halk, beslenme sıkıntısı nedeniyle uyarıları dikkate almıyor.</p>\r\n','Normal','22 Mar 2021 22:13','Madagaskar\'da yaşanan olay herkesi şoke etti. Deniz kaplumbağası eti yiyen 10\'u yetişkin 9\'u çocuk 19 kişi zehirlenerek hayatını kaybetti. Uzmanların uyarısına rağmen kaplumbağanın etini yiyen halkın bunu besin sıkıntısı nedeniyle yaptığı düşünülüyor.','Madagaskar\'da inanılmaz olay: Deniz kaplumbağası yiyip öldüler!'),(324,_binary '','Muhammed','Dünya','<p>Basın toplantısında konuşan Kremlin S&ouml;zc&uuml;s&uuml; Dmitry Peskov&#39;a,&nbsp;<a href=\"https://www.hurriyet.com.tr/haberleri/rusya\" target=\"_blank\">Rusya</a>&nbsp;Devlet Başkanı Vladimir&nbsp;<a href=\"https://www.hurriyet.com.tr/haberleri/putin\" target=\"_blank\">Putin</a>&#39;in Sibirya&#39;daki tatili sırasında n&uuml;kleer evrak &ccedil;antasının yanında olup olmadığı soruldu.</p>\r\n\r\n<p>Peskov, stratejik olanlar da dahil olmak &uuml;zere gerekli iletişim ara&ccedil;larının nerede olursa olsun Putin&#39;in yanında olduğunu belirtti.</p>\r\n\r\n<p>Peskov, &quot;Stratejik iletişim de dahil olmak &uuml;zere gerekli t&uuml;m iletişim ara&ccedil;ları, ister Rusya ister d&uuml;nyanın herhangi bir &uuml;lkesi olsun nerede olursa olsun her zaman başkanın yanındadır&quot; ifadelerini kullandı.</p>\r\n\r\n<p><strong>HAFTA SONUNU SAVUNMA BAKANI İLE SİBİRYA&#39;DA GE&Ccedil;İRDİ</strong></p>\r\n\r\n<p>D&uuml;n Kremlin&#39;den yapılan a&ccedil;ıklamada, Rusya Devlet Başkanı Vladimir Putin&#39;in hafta sonunu Sibirya&#39;da ge&ccedil;irdiği bildirilmiş ve Başkan Putin&#39;e Savunma Bakanı Sergei Shoigu&#39;nun eşlik ettiği ifade edilmişti.</p>\r\n\r\n<p>Peskov basına yaptığı a&ccedil;ıklamada, hafta sonunu Sibirya b&ouml;lgesinde ge&ccedil;iren Başkan Putin ve Bakan Shoigu&#39;nun arazi aracı kullandığını ve Sibirya taygasında y&uuml;r&uuml;d&uuml;ğ&uuml;n&uuml; belirtmişti.</p>\r\n\r\n<p>Ayrıca Bakan Shoigu&#39;nun, Başkan Putin&#39;e ahşap el sanatları ile uğraştığı at&ouml;lyesini gezdirdiği ifade edilmişti.</p>\r\n','Normal','22 Mar 2021 22:15','Rusya Devlet Başkanı Vladimir Putin\'in Sibirya\'daki tatili sırasında nükleer çantasının yanında olup olmadığı sorulan Kremlin Sözcüsü Dmitry Peskov, gerekli iletişim araçlarının nerede olursa olsun Putin\'in yanında olduğunu belirtti.','Peskov açıkladı: Putin o çantayı bir an olsun yanından ayırmıyor'),(325,_binary '','Hakan','Dünya','<p><a href=\"https://www.hurriyet.com.tr/haberleri/ermenistan\" target=\"_blank\">Ermenistan</a>&nbsp;Başbakanı Nikol&nbsp;<a href=\"https://www.hurriyet.com.tr/haberleri/pasinyan\" target=\"_blank\">Paşinyan</a>, sosyal medya hesabından, Ermenistan ordusunun muhtıra vermesinden sonra g&ouml;revinden aldığı Genelkurmay Başkanı Onik Gasparyan&rsquo;ın yerine atadığı Davtyan ile ilgili a&ccedil;ıklamalarda bulundu.</p>\r\n\r\n<p>Gasparyan&rsquo;ın g&ouml;revden alınmasının ardından yaşanan olayların kronolojisini de i&ccedil;eren a&ccedil;ıklamasında, Paşinyan, &quot;Artak Davtyan, kanun gereği Ermenistan Genelkurmay Başkanı olarak atanmış sayılmaktadır.&quot; ifadesini kullandı.</p>\r\n\r\n<p>10 Mart&rsquo;ta Davtyan&rsquo;ın yeni Genelkurmay Başkanı atanmasıyla ilgili atama &ouml;nerisini Cumhurbaşkanı Armen Sarkisyan&rsquo;a g&ouml;nderdiğini belirten Paşinyan, ertesi g&uuml;n Sarkisyan&rsquo;dan s&ouml;z konusu kararın geri geldiğini ancak geri g&ouml;nderilen yazıyı teslim almadığını bildirdi.</p>\r\n\r\n<p>Paşinyan, Cumhurbaşkanı Sarkisyan&rsquo;ın Davtyan&rsquo;ın atamasıyla ilgili kararı imzalamaması nedeniyle yasalara g&ouml;re belli bir s&uuml;re sonra kararın kabul edilmiş sayılacağından, 22 Mart&rsquo;tan itibaren Davtyan&rsquo;ın Genelkurmay Başkanlığı g&ouml;revine atanmış sayıldığını ifade etti.</p>\r\n\r\n<p>Artak Davtyan, 2018-2020&rsquo;de Ermenistan Genelkurmay Başkanlığı g&ouml;revini y&uuml;r&uuml;tm&uuml;şt&uuml;.</p>\r\n\r\n<p><strong>PAŞİNYAN&#39;IN İSTİFASI İ&Ccedil;İN &quot;MUHTIRA&quot;</strong></p>\r\n\r\n<p>25 Şubat&rsquo;ta Genelkurmay Başkanı Gasparyan ve &uuml;st d&uuml;zey komutanlar, Başbakan Paşinyan&#39;ı istifaya &ccedil;ağıran bildiriye imza atarak, Paşinyan&#39;a muhtıra vermişti.</p>\r\n\r\n<p>Paşinyan, ordu komutanlarının kendisine y&ouml;nelik istifa &ccedil;ağrılarını &quot;darbe girişimi&quot; olarak nitelemişti.</p>\r\n\r\n<p>Paşinyan, hemen Genelkurmay Başkanı Gasparyan&#39;ı g&ouml;revden aldığını duyurmuştu.</p>\r\n\r\n<p>Cumhurbaşkanı Sarkisyan, Gasparyan&#39;ın g&ouml;revden alınmasına ilişkin kararnameyi imzalamamış, Anayasa Mahkemesine g&ouml;ndermişti.</p>\r\n\r\n<p>10 Mart&rsquo;ta Ermenistan Başbakanı Paşinyan, Genelkurmay Başkanlığı g&ouml;revine Eski Genelkurmay Başkanı Korgeneral Artak Davtyan&#39;ı &ouml;neren kararnameyi Cumhurbaşkanı Sarkisyan&rsquo;a g&ouml;ndermişti.</p>\r\n\r\n<p>Ancak Sarkisyan, bu atama &ouml;nerisini i&ccedil;eren kararı Başbakan Paşinyan&rsquo;a geri g&ouml;ndermişti. Paşinyan ise geri g&ouml;nderilen kararı teslim almayarak, kararın Cumhurbaşkanlığında kalmasını sağlamıştı.</p>\r\n\r\n<p>&nbsp;</p>\r\n','Normal','22 Mar 2021 22:16','Ermenistan Başbakanı Paşinyan, bir süre önce Genelkurmay Başkanlığına önerdiği Artak Davtyan’ın bu göreve atanmış sayıldığını bildirdi.','Paşinyan\'dan yeni adım: Genelkurmay Başkanı’nı değiştirdi'),(326,_binary '','Hakan','Dünya','<p><a href=\"https://www.hurriyet.com.tr/haberleri/japonya\" target=\"_blank\">Japonya</a>&#39;da, yeni tip&nbsp;<a href=\"https://www.hurriyet.com.tr/corona-virusu/\" target=\"_blank\">koronavir&uuml;s</a>&nbsp;(Kovid-19) salgınıyla m&uuml;cadele kapsamında başkent Tokyo ve &ccedil;evresinde uygulanan olağan&uuml;st&uuml; hal (OHAL) kaldırıldı.</p>\r\n\r\n<p>Kamu yayıncısı NHK&#39;ye konuşan Tokyo Valisi Koike Yuriko, &quot;Vakaların yeniden y&uuml;kselişine karşı iş birliğini s&uuml;rd&uuml;rmeliyiz. D&ouml;rd&uuml;nc&uuml; dalgaya karşı dikkatli olunmalı.&quot; dedi.</p>\r\n\r\n<p>Kyodo ajansına g&ouml;re yerel idareler, mart sonuna dek restoran ve barların en ge&ccedil; 21.00&#39;de kapanması talebini s&uuml;rd&uuml;recek.</p>\r\n\r\n<p>OHAL şartlarının sona ermesi sebebiyle talebe riayet etmeyenlere para cezası uygulanamayacak.</p>\r\n\r\n<p>Konser ve spor organizasyonları gibi kalabalık programlara halihazırda uygulanan 5 bin seyirci sınırı da 10 bine y&uuml;kseltildi.</p>\r\n\r\n<p>Japonya&#39;da Kovid-19 vaka sayısı 457 bin 577&#39;ye, can kaybı 8 bin 849&#39;a y&uuml;kseldi. &Uuml;lke genelinde 324 kişi yoğun bakım servislerinde tedavi g&ouml;r&uuml;yor.</p>\r\n\r\n<p>Vaka sayısı Tokyo&#39;da 117 bin 517&#39;ye, Osaka&#39;da 49 bin 158&#39;e, Kanagawa&#39;da 47 bin 84&#39;e, Saitama&#39;da 31 bin 661&#39;e ve &Ccedil;iba&#39;da 28 bin 624&#39;e &ccedil;ıktı.</p>\r\n\r\n<p><strong>7 OCAK&#39;TA İLAN EDİLMİŞTİ</strong></p>\r\n\r\n<p>OHAL, 7 Ocak&#39;ta &ouml;nce Tokyo ve &ccedil;evre eyaletlerde, sonraki hafta da &uuml;lke genelinde 11 eyalette ilan edilmiş ve 7 Şubat&#39;a kadar uygulanması planlanmıştı.</p>\r\n\r\n<p>OHAL s&uuml;resi, şubat başında Tokyo ve &ccedil;evresi dahil olmak &uuml;zere &uuml;lkenin farklı b&ouml;lgelerinde 7 Mart&#39;a kadar s&uuml;recek şekilde uzatılmıştı.</p>\r\n\r\n<p>OHAL, Ai&ccedil;i, Gifu, Osaka, Kyoto, Hyogo ve Fukuoka eyaletlerinde ise 28 Şubat Pazar gecesi kaldırılmıştı.</p>\r\n\r\n<p>Sadece Tokyo ve &ccedil;evresinde s&uuml;rd&uuml;r&uuml;len uygulamanın kaldırılmasıyla, &uuml;lke genelinde OHAL uygulanan b&ouml;lge kalmadı.</p>\r\n','Normal','22 Mar 2021 22:17','Kovid-19 vaka sayısının azaldığı Tokyo ile çevresindeki Kanagawa, Çiba ve Saitama eyaletlerinde OHAL uygulaması 21 Mart Pazar gece yarısı sona erdirildi.','Japonya\'dan yeni Kovid-19 kararı: OHAL kaldırıldı'),(327,_binary '','Hakan','Dünya','<p>Alman &quot;Funke&quot; medya grubunun gazetelerine konuşan Avrupa Birliği (<a href=\"https://www.hurriyet.com.tr/haberleri/ab\" target=\"_blank\">AB</a>) Komisyonu Başkanı&nbsp;<a href=\"https://www.hurriyet.com.tr/haberleri/ursula-von-der-leyen\" target=\"_blank\">Ursula von der Leyen</a>, AB&#39;den şu an i&ccedil;in yoksul &uuml;lkelere&nbsp;<a href=\"https://www.hurriyet.com.tr/haberleri/asi\" target=\"_blank\">aşı</a>&nbsp;g&ouml;nderilmemesine ilişkin, &quot;&Uuml;ye devletlerden aşıları kendilerinin alması i&ccedil;in &ccedil;ok fazla baskı var.&quot; a&ccedil;ıklamasında bulundu.</p>\r\n\r\n<p>Yoksul &uuml;lkelere aşı erişimi sağlayan uluslararası&nbsp;<a href=\"https://www.hurriyet.com.tr/haberleri/kovid-19\" target=\"_blank\">Kovid-19</a>&nbsp;Aşıları K&uuml;resel Erişim Programı (<a href=\"https://www.hurriyet.com.tr/haberleri/covax\" target=\"_blank\">COVAX</a>) girişimine AB&#39;nin verdiği mali desteğin altını &ccedil;izen AB Komisyonu Başkanı von der Leyen, &quot;AB&#39;nin aşıyı doğrudan diğer &uuml;lkelerle paylaşma mekanizması ancak AB&#39;de daha iyi bir &uuml;retim durumuna sahip olduğumuzda başlayacaktır.&quot; ifadelerini kullandı.</p>\r\n\r\n<p>AB, şu ana kadar &ouml;nde gelen Kovid-19 aşı &uuml;reticilerinden yaklaşık 2,6 milyar aşı dozu sipariş etti, ancak mart ortası itibarıyla AB&#39;ye &uuml;ye 27 &uuml;lkenin tamamına yaklaşık 70 milyon doz aşı teslim edildi.</p>\r\n\r\n<p><strong>DS&Ouml; A&Ccedil;IKLAMA YAPMIŞTI</strong></p>\r\n\r\n<p>D&uuml;nya Sağlık &Ouml;rg&uuml;t&uuml; (DS&Ouml;) Genel Direkt&ouml;r&uuml; Dr. Tedros Adhanom Ghebreyesus, yeni tip&nbsp;<a href=\"https://www.hurriyet.com.tr/corona-virusu/\" target=\"_blank\">koronavir&uuml;s</a>&nbsp;(Kovid-19) aşılarının yoksul &uuml;lkelere eşit şekilde dağıtılması &ccedil;ağrısında bulunarak, &quot;Aşıların hakkaniyetle dağıtılmasını desteklemek her &uuml;lkenin kendi orta ve uzun vadeli ekonomik &ccedil;ıkarına olacaktır.&quot; a&ccedil;ıklamasını yapmıştı.</p>\r\n\r\n<p>Ghebreyesus, &quot;t&uuml;m &uuml;lkelerde yılın ilk 100 g&uuml;n&uuml;nde sağlık &ccedil;alışanlarının ve yaşlıların aşılanması &ccedil;ağrısında&quot; bulunduğunu anımsatarak, &quot;Aşılar bize umut veriyor, bu y&uuml;zden şimdi kaybettiğimiz her hayat daha da trajik. Y&uuml;rekli olmalı, umut almalı ve harekete ge&ccedil;meliyiz.&quot; diye konuşmuştu</p>\r\n\r\n<p><img alt=\"\" src=\"https://i4.hurimg.com/i/hurriyet/75/770x0/60586c1d4e3fe01ba81d8aab\" /></p>\r\n\r\n<p>Yoksul &uuml;lkelere aşı tedarikinde eşit davranılmaması durumunda &quot;d&uuml;nyanın feci bir ahlaki başarısızlığın eşiğinde&quot; olduğu uyarısında bulunan Ghebreyesus, yeni araştırmaların bunun sadece &quot;ahlaki başarısızlık&quot; olmadığını, ekonomik bir başarısızlık olacağını da g&ouml;sterdiğini aktardı.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>&quot;YOKSUL &Uuml;LKELERE AŞI SAĞLANMAZSA, ZENGİN &Uuml;LKELERİN ZARARI 4,5 TRİLYON DOLAR OLACAK&quot;</strong></p>\r\n\r\n<p>Ghebreyesus, Uluslararası Ticaret Odasının (ICC), h&uuml;k&uuml;metlerin, gelişmekte olan &uuml;lkelere Kovid-19 aşısına erişim sağlamaması halinde k&uuml;resel ekonominin 9,2 trilyon dolara kadar zarar g&ouml;receğini a&ccedil;ıkladığını anımsattı.</p>\r\n\r\n<p>Araştırmaya g&ouml;re, s&ouml;z konusu zararın neredeyse 4,5 trilyon dolarının en zengin &uuml;lkelerde ger&ccedil;ekleşeceğine işaret eden Ghebreyesus, Uluslararası &Ccedil;alışma &Ouml;rg&uuml;t&uuml;n&uuml;n (ILO) yeni raporuna g&ouml;re de salgının k&uuml;resel işg&uuml;c&uuml; gelirinde 3,7 trilyon dolar d&uuml;ş&uuml;şe neden olacağı tahmininde bulunulduğunu hatırlattı.</p>\r\n\r\n<p><img alt=\"\" src=\"https://i4.hurimg.com/i/hurriyet/75/770x0/60586c1d4e3fe01ba81d8aad\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n','Normal','22 Mar 2021 22:19','Dünya Sağlık Örgütü (DSÖ) ve Birleşmiş Milletler (BM) öncülüğünde oluşturulan ve maddi olarak Kovid-19 aşılarına ulaşamayan ülkelere aşı sağlamayı hedefleyen COVAX programına rağmen çözülemeyen aşı krizinden bir itiraf geldi. Avrupa Birliği (AB) Komisyonu Başkanı Ursula von der Leyen, AB\'den yoksul ülkelere yeni tip koronavirüs (Kovid-19) aşılarını gönderemeyeceklerini söyledi.','Acı gerçeği itiraf etti: Yoksul ülkelere aşı yok!'),(328,_binary '','Hakan','Ekonomi','<p><a href=\"https://www.hurriyet.com.tr/haberleri/almanya\" target=\"_blank\">Almanya</a>&nbsp;<a href=\"http://bigpara.hurriyet.com.tr/doviz/merkez-bankasi-doviz-kurlari/\" target=\"_blank\">Merkez Bankası</a>&nbsp;(<a href=\"https://www.hurriyet.com.tr/haberleri/bundesbank\" target=\"_blank\">Bundesbank</a>), salgının yayılmasını &ouml;nlemek amacıyla uygulanan sıkı kısıtlamalar sonucu &uuml;lke ekonomisinin ilk &ccedil;eyrekte keskin şekilde daralabileceğini belirtti.</p>\r\n\r\n<p>Bundesbank&#39;ın ekonomiye y&ouml;nelik mart ayı raporu yayımlandı. Raporda, salgının yayılmasını &ouml;nlemek amacıyla uygulanan sıkı kısıtlamalar sonucu Alman ekonomisinin ilk &ccedil;eyrekte keskin şekilde daralabileceği belirtildi.</p>\r\n\r\n<p>Raporda, &quot;Salgını kontrol altına almaya y&ouml;nelik tedbirler, i&ccedil;inde bulunduğumuz &ccedil;eyrekte ortalama olarak bir &ouml;nceki &ccedil;eyreğe g&ouml;re daha sıkı kalıyor. Bu nedenle 2021&#39;in ilk &ccedil;eyreğinde &ouml;zellikle temasın yoğun olduğu hizmet sekt&ouml;rlerinde ekonomik &uuml;retimin keskin bir şekilde d&uuml;şmesi muhtemel.&quot; denildi.</p>\r\n\r\n<p>Ocakta sanayi &uuml;retiminin otomobil sanayisinde yaşanan tedarik sorunları nedeniyle azaldığına işaret edilen raporda, bunun yanında sanayide siparişlerin g&uuml;&ccedil;l&uuml; olduğu ve mal ihracatının arttığı kaydedildi. KDV indirimlerinin sona ermesi ile perakende satışların ocakta d&uuml;şt&uuml;ğ&uuml; aktarılan raporda, s&ouml;z konusu indirimlerin sona ermesinin inşaat sekt&ouml;r&uuml;nde de &ouml;nemli bir d&uuml;ş&uuml;şe neden olduğu vurgulandı.</p>\r\n\r\n<p>Bundesbank, ekonomiye y&ouml;nelik şubat ayı raporunda, bahar aylarında vaka sayısının d&uuml;şmesi ve aşılamanın ivme kazanmasıyla Alman ekonomisinin toparlanacağını belirtmişti.</p>\r\n\r\n<p>&nbsp;</p>\r\n','Normal','22 Mar 2021 22:21','Almanya Merkez Bankası, ekonomiye yönelik raporunu yayınladı. Raporda salgınla birlikte uygulanan kısıtlamalar sonucunda ülke ekonomisinde keskin daralma beklendiğini açıklandı.','Rapor yayınlandı... Almanya için korkutan tahmin!');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_token`
--

DROP TABLE IF EXISTS `password_reset_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_token` (
  `id` bigint NOT NULL,
  `expiry_date` datetime DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK5lwtbncug84d4ero33v3cfxvl` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_token`
--

LOCK TABLES `password_reset_token` WRITE;
/*!40000 ALTER TABLE `password_reset_token` DISABLE KEYS */;
INSERT INTO `password_reset_token` VALUES (312,'2021-03-23 20:29:34','edc1d48b-ea4e-4a92-ae1e-e86a10d3ab71',310),(337,'2021-04-12 15:37:44','4c15aad4-b82c-4dca-8197-7ec8143901dc',335),(375,'2021-05-11 08:41:20','7018ac63-b40d-4d5c-b404-c750e01e48e1',373),(395,'2021-05-15 22:55:25','ff90e120-1140-4517-a8bb-1070a90ad07a',393),(398,'2021-05-15 23:30:27','d3f03879-ccbc-4008-9cae-af801f0ba2f9',396);
/*!40000 ALTER TABLE `password_reset_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `role_id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'ROLE_ADMIN');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint NOT NULL,
  `author` varchar(255) DEFAULT NULL,
  `big_logo` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `facebook_url` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `instagram_url` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `small_logo` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `twitter_url` varchar(255) DEFAULT NULL,
  `video_url` varchar(255) DEFAULT NULL,
  `youtube_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'Hakan SANDAL','bigLogo.png','Haberler, son dakika haberleri, yerel ve dünyadan en güncel gelişmeler, magazin, ekonomi, spor, gündem ve tüm gazete haberleri, Türkiye\'nin Açılış Sayfası Haber Ekstra\'da!','https://www.facebook.com/','newsicon.png','https://www.instagram.com/','haber, haberler, son dakika, son dakika haberler, haber oku, gazete haberleri, gazeterler, haber ekstra','smallLogo.png','Haber Ekstra','https://twitter.com/','https://www.youtube.com/embed/bTqVqk7FSmY?origin=https://plyr.io&amp;iv_load_policy=3&amp;modestbranding=1&amp;playsinline=1&amp;title=false&amp;showinfo=0&amp;rel=0&amp;enablejsapi=1','https://www.youtube.com/');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trending_topic`
--

DROP TABLE IF EXISTS `trending_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trending_topic` (
  `id` bigint NOT NULL,
  `active` bit(1) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trending_topic`
--

LOCK TABLES `trending_topic` WRITE;
/*!40000 ALTER TABLE `trending_topic` DISABLE KEYS */;
INSERT INTO `trending_topic` VALUES (144,_binary '','#Coronavirus'),(145,_binary '','#Ruritania Protest'),(147,_binary '','#CEF 2021'),(148,_binary '','#MOTOGP'),(149,_binary '','#Photos'),(150,_binary '','#Videos'),(151,_binary '','#deneme');
/*!40000 ALTER TABLE `trending_topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` bigint NOT NULL,
  `authority_id` int NOT NULL,
  `email` varchar(255) NOT NULL,
  `enabled` bit(1) NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `role_id` int NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (401,1,'superadmin@gmail.com',_binary '',NULL,NULL,'$2a$12$il1IYsWMFX5z4ZiZO18O9ud0NIi.PG47CjOezI1C.7OTycLlChiH6',NULL,1,'superadmin'),(405,2,'ridvan@gmail.com',_binary '','Rıdvan','Kadayıfçı','$2a$12$0dn6nMxKJWCweyk3Femw3uZzSO9BIXTCwJzXkm5j4xp55M3ONx3FK','058495448',1,'Ridvan59'),(407,3,'neslihan@gmail.com',_binary '','Neslihan','Toprak','$2a$12$i8AYxMDqvclGau4oNoFFIOrUwGvHfMLvzSBjtY8ZD1oPpy1pkPpJ2','0565165156',1,'neslihan59');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_role` (
  `user_role_id` bigint NOT NULL,
  `role_id` int DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`user_role_id`),
  KEY `FKa68196081fvovjhkek5m97n3y` (`role_id`),
  KEY `FK859n2jvi8ivhui0rl0esws6o` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (402,1,401),(406,1,405),(408,1,407);
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-15 16:50:52