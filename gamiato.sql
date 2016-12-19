-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Lun 19 Décembre 2016 à 20:32
-- Version du serveur :  5.6.20-log
-- Version de PHP :  5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `gamiato`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE IF NOT EXISTS `article` (
`id` int(11) NOT NULL,
  `date` date NOT NULL,
  `isGame` tinyint(1) NOT NULL,
  `type` varchar(30) NOT NULL,
  `game` varchar(30) NOT NULL,
  `title` varchar(128) NOT NULL,
  `img` varchar(30) NOT NULL,
  `content` mediumtext NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `article`
--

INSERT INTO `article` (`id`, `date`, `isGame`, `type`, `game`, `title`, `img`, `content`) VALUES
(1, 0x323031362d31312d3138, 1, 'test', 'Final Fantasy 7', 'Final Fanatasy 7', 'ffxv.jpg', 'Lorem ipsum In sunt in et tempor velit magna aliqua culpa tempor voluptate sed quis dolore reprehenderit adipisicing esse et officia cillum cillum qui aliquip dolore tempor Excepteur ea sunt consectetur quis sed consectetur cupidatat anim dolore eiusmod deserunt sint sit sint Ut tempor esse ad eiusmod exercitation et incididunt consequat veniam nisi occaecat nostrud non elit culpa culpa pariatur dolore dolor aute est eu dolore id mollit cupidatat commodo ut anim aliqua adipisicing quis in labore nisi ex sunt deserunt consectetur occaecat incididunt proident mollit commodo do sint adipisicing dolor culpa sint Excepteur elit elit non qui cillum Duis et occaecat qui cillum sit nulla laborum pariatur ex ad nisi exercitation ad occaecat magna dolore fugiat non velit enim ea exercitation Ut voluptate nulla Excepteur non anim sint cillum in ex elit sunt anim nostrud minim commodo quis mollit aliquip fugiat aliquip mollit occaecat aute. Lorem ipsum Dolor quis labore ut tempor adipisicing elit occaecat Ut tempor ad in qui nisi cupidatat sunt ea tempor officia consequat culpa commodo magna ex sit ea incididunt sunt proident ut nisi dolore nostrud laboris incididunt do exercitation commodo anim sed dolore fugiat proident non proident aliqua irure consequat deserunt tempor consectetur reprehenderit nulla aliqua est do ea officia cupidatat in laborum voluptate dolor exercitation et dolore ut commodo ex adipisicing reprehenderit ad nulla qui eiusmod Excepteur dolore non adipisicing elit est sit proident eu nulla in ullamco ullamco enim esse qui quis mollit veniam incididunt in velit nostrud aute pariatur dolore ullamco Duis voluptate do nulla elit esse tempor deserunt ut reprehenderit do Duis dolore commodo irure aliquip anim in eu et fugiat ea culpa reprehenderit in culpa dolore ad sed commodo laboris dolor sed magna laboris aute in do ex in pariatur nostrud culpa occaecat do fugiat commodo culpa deserunt aliqua et deserunt adipisicing fugiat ad sint in tempor nulla Excepteur non consequat qui tempor nisi non elit consectetur proident irure tempor quis pariatur nostrud ullamco minim anim do laboris occaecat est qui elit ex elit tempor in anim nostrud dolor proident velit nostrud esse nulla occaecat Excepteur aliquip cupidatat esse id labore amet culpa amet fugiat consequat cupidatat dolore sint sint ut ut reprehenderit proident exercitation occaecat elit in labore in enim.\r\n                Lorem ipsum Sit incididunt deserunt mollit et ullamco aute tempor sed non sunt esse reprehenderit est velit adipisicing consectetur veniam non aliqua adipisicing sint nostrud dolore eiusmod id sed qui proident ullamco nostrud nostrud velit veniam aliqua veniam voluptate aliquip sit reprehenderit sed culpa ea exercitation adipisicing enim velit elit in dolor minim ex in dolor velit Ut proident sunt id adipisicing qui ut adipisicing proident nulla minim voluptate aliqua reprehenderit ut in proident occaecat enim occaecat incididunt cupidatat dolore est veniam in fugiat cupidatat incididunt occaecat ut amet proident quis pariatur in ea nulla tempor aliqua anim voluptate eu cillum esse dolor nulla sunt officia in dolore proident qui veniam sit amet consequat aliquip officia proident magna tempor minim sit quis ea sed aliqua sint est officia nostrud tempor fugiat sunt in exercitation culpa quis fugiat sit ea tempor ea non magna incididunt ex ullamco nulla velit non.Lorem ipsum In sunt in et tempor velit magna aliqua culpa tempor voluptate sed quis dolore reprehenderit adipisicing esse et officia cillum cillum qui aliquip dolore tempor Excepteur ea sunt consectetur quis sed consectetur cupidatat anim dolore eiusmod deserunt sint sit sint Ut tempor esse ad eiusmod exercitation et incididunt consequat veniam nisi occaecat nostrud non elit culpa culpa pariatur dolore dolor aute est eu dolore id mollit cupidatat commodo ut anim aliqua adipisicing quis in labore nisi ex sunt deserunt consectetur occaecat incididunt proident mollit commodo do sint adipisicing dolor culpa sint Excepteur elit elit non qui cillum Duis et occaecat qui cillum sit nulla laborum pariatur ex ad nisi exercitation ad occaecat magna dolore fugiat non velit enim ea exercitation Ut voluptate nulla Excepteur non anim sint cillum in ex elit sunt anim nostrud minim commodo quis mollit aliquip fugiat aliquip mollit occaecat aute. Lorem ipsum Dolor quis labore ut tempor adipisicing elit occaecat Ut tempor ad in qui nisi cupidatat sunt ea tempor officia consequat culpa commodo magna ex sit ea incididunt sunt proident ut nisi dolore nostrud laboris incididunt do exercitation commodo anim sed dolore fugiat proident non proident aliqua irure consequat deserunt tempor consectetur reprehenderit nulla aliqua est do ea officia cupidatat in laborum voluptate dolor exercitation et dolore ut commodo ex adipisicing reprehenderit ad nulla qui eiusmod Excepteur dolore non adipisicing elit est sit proident eu nulla in ullamco ullamco enim esse qui quis mollit veniam incididunt in velit nostrud aute pariatur dolore ullamco Duis voluptate do nulla elit esse tempor deserunt ut reprehenderit do Duis dolore commodo irure aliquip anim in eu et fugiat ea culpa reprehenderit in culpa dolore ad sed commodo laboris dolor sed magna laboris aute in do ex in pariatur nostrud culpa occaecat do fugiat commodo culpa deserunt aliqua et deserunt adipisicing fugiat ad sint in tempor nulla Excepteur non consequat qui tempor nisi non elit consectetur proident irure tempor quis pariatur nostrud ullamco minim anim do laboris occaecat est qui elit ex elit tempor in anim nostrud dolor proident velit nostrud esse nulla occaecat Excepteur aliquip cupidatat esse id labore amet culpa amet fugiat consequat cupidatat dolore sint sint ut ut reprehenderit proident exercitation occaecat elit in labore in enim.\r\n                Lorem ipsum Sit incididunt deserunt mollit et ullamco aute tempor sed non sunt esse reprehenderit est velit adipisicing consectetur veniam non aliqua adipisicing sint nostrud dolore eiusmod id sed qui proident ullamco nostrud nostrud velit veniam aliqua veniam voluptate aliquip sit reprehenderit sed culpa ea exercitation adipisicing enim velit elit in dolor minim ex in dolor velit Ut proident sunt id adipisicing qui ut adipisicing proident nulla minim voluptate aliqua reprehenderit ut in proident occaecat enim occaecat incididunt cupidatat dolore est veniam in fugiat cupidatat incididunt occaecat ut amet proident quis pariatur in ea nulla tempor aliqua anim voluptate eu cillum esse dolor nulla sunt officia in dolore proident qui veniam sit amet consequat aliquip officia proident magna tempor minim sit quis ea sed aliqua sint est officia nostrud tempor fugiat sunt in exercitation culpa quis fugiat sit ea tempor ea non magna incididunt ex ullamco nulla velit non.'),
(2, 0x323031362d31312d3133, 1, 'new', 'dishonored2', 'Is Dishonored2 playable?', 'd2.jpg', 'Lorem ipsum In sunt in et tempor velit magna aliqua culpa tempor voluptate sed quis dolore reprehenderit adipisicing esse et officia cillum cillum qui aliquip dolore tempor Excepteur ea sunt consectetur quis sed consectetur cupidatat anim dolore eiusmod deserunt sint sit sint Ut tempor esse ad eiusmod exercitation et incididunt consequat veniam nisi occaecat nostrud non elit culpa culpa pariatur dolore dolor aute est eu dolore id mollit cupidatat commodo ut anim aliqua adipisicing quis in labore nisi ex sunt deserunt consectetur occaecat incididunt proident mollit commodo do sint adipisicing dolor culpa sint Excepteur elit elit non qui cillum Duis et occaecat qui cillum sit nulla laborum pariatur ex ad nisi exercitation ad occaecat magna dolore fugiat non velit enim ea exercitation Ut voluptate nulla Excepteur non anim sint cillum in ex elit sunt anim nostrud minim commodo quis mollit aliquip fugiat aliquip mollit occaecat aute. Lorem ipsum Dolor quis labore ut tempor adipisicing elit occaecat Ut tempor ad in qui nisi cupidatat sunt ea tempor officia consequat culpa commodo magna ex sit ea incididunt sunt proident ut nisi dolore nostrud laboris incididunt do exercitation commodo anim sed dolore fugiat proident non proident aliqua irure consequat deserunt tempor consectetur reprehenderit nulla aliqua est do ea officia cupidatat in laborum voluptate dolor exercitation et dolore ut commodo ex adipisicing reprehenderit ad nulla qui eiusmod Excepteur dolore non adipisicing elit est sit proident eu nulla in ullamco ullamco enim esse qui quis mollit veniam incididunt in velit nostrud aute pariatur dolore ullamco Duis voluptate do nulla elit esse tempor deserunt ut reprehenderit do Duis dolore commodo irure aliquip anim in eu et fugiat ea culpa reprehenderit in culpa dolore ad sed commodo laboris dolor sed magna laboris aute in do ex in pariatur nostrud culpa occaecat do fugiat commodo culpa deserunt aliqua et deserunt adipisicing fugiat ad sint in tempor nulla Excepteur non consequat qui tempor nisi non elit consectetur proident irure tempor quis pariatur nostrud ullamco minim anim do laboris occaecat est qui elit ex elit tempor in anim nostrud dolor proident velit nostrud esse nulla occaecat Excepteur aliquip cupidatat esse id labore amet culpa amet fugiat consequat cupidatat dolore sint sint ut ut reprehenderit proident exercitation occaecat elit in labore in enim.\r\n                Lorem ipsum Sit incididunt deserunt mollit et ullamco aute tempor sed non sunt esse reprehenderit est velit adipisicing consectetur veniam non aliqua adipisicing sint nostrud dolore eiusmod id sed qui proident ullamco nostrud nostrud velit veniam aliqua veniam voluptate aliquip sit reprehenderit sed culpa ea exercitation adipisicing enim velit elit in dolor minim ex in dolor velit Ut proident sunt id adipisicing qui ut adipisicing proident nulla minim voluptate aliqua reprehenderit ut in proident occaecat enim occaecat incididunt cupidatat dolore est veniam in fugiat cupidatat incididunt occaecat ut amet proident quis pariatur in ea nulla tempor aliqua anim voluptate eu cillum esse dolor nulla sunt officia in dolore proident qui veniam sit amet consequat aliquip officia proident magna tempor minim sit quis ea sed aliqua sint est officia nostrud tempor fugiat sunt in exercitation culpa quis fugiat sit ea tempor ea non magna incididunt ex ullamco nulla velit non.'),
(3, 0x323031362d31312d3130, 1, 'new', 'Final Fantasy 7', '10 years useful?', 'ffxv.jpg', 'Lorem ipsum In sunt in et tempor velit magna aliqua culpa tempor voluptate sed quis dolore reprehenderit adipisicing esse et officia cillum cillum qui aliquip dolore tempor Excepteur ea sunt consectetur quis sed consectetur cupidatat anim dolore eiusmod deserunt sint sit sint Ut tempor esse ad eiusmod exercitation et incididunt consequat veniam nisi occaecat nostrud non elit culpa culpa pariatur dolore dolor aute est eu dolore id mollit cupidatat commodo ut anim aliqua adipisicing quis in labore nisi ex sunt deserunt consectetur occaecat incididunt proident mollit commodo do sint adipisicing dolor culpa sint Excepteur elit elit non qui cillum Duis et occaecat qui cillum sit nulla laborum pariatur ex ad nisi exercitation ad occaecat magna dolore fugiat non velit enim ea exercitation Ut voluptate nulla Excepteur non anim sint cillum in ex elit sunt anim nostrud minim commodo quis mollit aliquip fugiat aliquip mollit occaecat aute. Lorem ipsum Dolor quis labore ut tempor adipisicing elit occaecat Ut tempor ad in qui nisi cupidatat sunt ea tempor officia consequat culpa commodo magna ex sit ea incididunt sunt proident ut nisi dolore nostrud laboris incididunt do exercitation commodo anim sed dolore fugiat proident non proident aliqua irure consequat deserunt tempor consectetur reprehenderit nulla aliqua est do ea officia cupidatat in laborum voluptate dolor exercitation et dolore ut commodo ex adipisicing reprehenderit ad nulla qui eiusmod Excepteur dolore non adipisicing elit est sit proident eu nulla in ullamco ullamco enim esse qui quis mollit veniam incididunt in velit nostrud aute pariatur dolore ullamco Duis voluptate do nulla elit esse tempor deserunt ut reprehenderit do Duis dolore commodo irure aliquip anim in eu et fugiat ea culpa reprehenderit in culpa dolore ad sed commodo laboris dolor sed magna laboris aute in do ex in pariatur nostrud culpa occaecat do fugiat commodo culpa deserunt aliqua et deserunt adipisicing fugiat ad sint in tempor nulla Excepteur non consequat qui tempor nisi non elit consectetur proident irure tempor quis pariatur nostrud ullamco minim anim do laboris occaecat est qui elit ex elit tempor in anim nostrud dolor proident velit nostrud esse nulla occaecat Excepteur aliquip cupidatat esse id labore amet culpa amet fugiat consequat cupidatat dolore sint sint ut ut reprehenderit proident exercitation occaecat elit in labore in enim.\r\n                Lorem ipsum Sit incididunt deserunt mollit et ullamco aute tempor sed non sunt esse reprehenderit est velit adipisicing consectetur veniam non aliqua adipisicing sint nostrud dolore eiusmod id sed qui proident ullamco nostrud nostrud velit veniam aliqua veniam voluptate aliquip sit reprehenderit sed culpa ea exercitation adipisicing enim velit elit in dolor minim ex in dolor velit Ut proident sunt id adipisicing qui ut adipisicing proident nulla minim voluptate aliqua reprehenderit ut in proident occaecat enim occaecat incididunt cupidatat dolore est veniam in fugiat cupidatat incididunt occaecat ut amet proident quis pariatur in ea nulla tempor aliqua anim voluptate eu cillum esse dolor nulla sunt officia in dolore proident qui veniam sit amet consequat aliquip officia proident magna tempor minim sit quis ea sed aliqua sint est officia nostrud tempor fugiat sunt in exercitation culpa quis fugiat sit ea tempor ea non magna incididunt ex ullamco nulla velit non.');

-- --------------------------------------------------------

--
-- Structure de la table `members`
--

CREATE TABLE IF NOT EXISTS `members` (
`id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` char(128) NOT NULL,
  `rank` varchar(30) NOT NULL,
  `date` date NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Contenu de la table `members`
--

INSERT INTO `members` (`id`, `username`, `email`, `password`, `rank`, `date`) VALUES
(1, 'Zenor', 'dmaronnier@laposte.net', '0000', 'administrateur', 0x323031362d31322d3139);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `article`
--
ALTER TABLE `article`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `members`
--
ALTER TABLE `members`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `article`
--
ALTER TABLE `article`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `members`
--
ALTER TABLE `members`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
