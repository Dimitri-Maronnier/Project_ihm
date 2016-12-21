-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Mer 21 Décembre 2016 à 13:37
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Contenu de la table `article`
--

INSERT INTO `article` (`id`, `date`, `isGame`, `type`, `game`, `title`, `img`, `content`) VALUES
(1, 0x323031362d31312d3138, 1, 'test', 'Final Fantasy 7', 'Final Fanatasy 7', 'ffxv.jpg', 'Lorem ipsum In sunt in et tempor velit magna aliqua culpa tempor voluptate sed quis dolore reprehenderit adipisicing esse et officia cillum cillum qui aliquip dolore tempor Excepteur ea sunt consectetur quis sed consectetur cupidatat anim dolore eiusmod deserunt sint sit sint Ut tempor esse ad eiusmod exercitation et incididunt consequat veniam nisi occaecat nostrud non elit culpa culpa pariatur dolore dolor aute est eu dolore id mollit cupidatat commodo ut anim aliqua adipisicing quis in labore nisi ex sunt deserunt consectetur occaecat incididunt proident mollit commodo do sint adipisicing dolor culpa sint Excepteur elit elit non qui cillum Duis et occaecat qui cillum sit nulla laborum pariatur ex ad nisi exercitation ad occaecat magna dolore fugiat non velit enim ea exercitation Ut voluptate nulla Excepteur non anim sint cillum in ex elit sunt anim nostrud minim commodo quis mollit aliquip fugiat aliquip mollit occaecat aute. Lorem ipsum Dolor quis labore ut tempor adipisicing elit occaecat Ut tempor ad in qui nisi cupidatat sunt ea tempor officia consequat culpa commodo magna ex sit ea incididunt sunt proident ut nisi dolore nostrud laboris incididunt do exercitation commodo anim sed dolore fugiat proident non proident aliqua irure consequat deserunt tempor consectetur reprehenderit nulla aliqua est do ea officia cupidatat in laborum voluptate dolor exercitation et dolore ut commodo ex adipisicing reprehenderit ad nulla qui eiusmod Excepteur dolore non adipisicing elit est sit proident eu nulla in ullamco ullamco enim esse qui quis mollit veniam incididunt in velit nostrud aute pariatur dolore ullamco Duis voluptate do nulla elit esse tempor deserunt ut reprehenderit do Duis dolore commodo irure aliquip anim in eu et fugiat ea culpa reprehenderit in culpa dolore ad sed commodo laboris dolor sed magna laboris aute in do ex in pariatur nostrud culpa occaecat do fugiat commodo culpa deserunt aliqua et deserunt adipisicing fugiat ad sint in tempor nulla Excepteur non consequat qui tempor nisi non elit consectetur proident irure tempor quis pariatur nostrud ullamco minim anim do laboris occaecat est qui elit ex elit tempor in anim nostrud dolor proident velit nostrud esse nulla occaecat Excepteur aliquip cupidatat esse id labore amet culpa amet fugiat consequat cupidatat dolore sint sint ut ut reprehenderit proident exercitation occaecat elit in labore in enim.\r\n                Lorem ipsum Sit incididunt deserunt mollit et ullamco aute tempor sed non sunt esse reprehenderit est velit adipisicing consectetur veniam non aliqua adipisicing sint nostrud dolore eiusmod id sed qui proident ullamco nostrud nostrud velit veniam aliqua veniam voluptate aliquip sit reprehenderit sed culpa ea exercitation adipisicing enim velit elit in dolor minim ex in dolor velit Ut proident sunt id adipisicing qui ut adipisicing proident nulla minim voluptate aliqua reprehenderit ut in proident occaecat enim occaecat incididunt cupidatat dolore est veniam in fugiat cupidatat incididunt occaecat ut amet proident quis pariatur in ea nulla tempor aliqua anim voluptate eu cillum esse dolor nulla sunt officia in dolore proident qui veniam sit amet consequat aliquip officia proident magna tempor minim sit quis ea sed aliqua sint est officia nostrud tempor fugiat sunt in exercitation culpa quis fugiat sit ea tempor ea non magna incididunt ex ullamco nulla velit non.Lorem ipsum In sunt in et tempor velit magna aliqua culpa tempor voluptate sed quis dolore reprehenderit adipisicing esse et officia cillum cillum qui aliquip dolore tempor Excepteur ea sunt consectetur quis sed consectetur cupidatat anim dolore eiusmod deserunt sint sit sint Ut tempor esse ad eiusmod exercitation et incididunt consequat veniam nisi occaecat nostrud non elit culpa culpa pariatur dolore dolor aute est eu dolore id mollit cupidatat commodo ut anim aliqua adipisicing quis in labore nisi ex sunt deserunt consectetur occaecat incididunt proident mollit commodo do sint adipisicing dolor culpa sint Excepteur elit elit non qui cillum Duis et occaecat qui cillum sit nulla laborum pariatur ex ad nisi exercitation ad occaecat magna dolore fugiat non velit enim ea exercitation Ut voluptate nulla Excepteur non anim sint cillum in ex elit sunt anim nostrud minim commodo quis mollit aliquip fugiat aliquip mollit occaecat aute. Lorem ipsum Dolor quis labore ut tempor adipisicing elit occaecat Ut tempor ad in qui nisi cupidatat sunt ea tempor officia consequat culpa commodo magna ex sit ea incididunt sunt proident ut nisi dolore nostrud laboris incididunt do exercitation commodo anim sed dolore fugiat proident non proident aliqua irure consequat deserunt tempor consectetur reprehenderit nulla aliqua est do ea officia cupidatat in laborum voluptate dolor exercitation et dolore ut commodo ex adipisicing reprehenderit ad nulla qui eiusmod Excepteur dolore non adipisicing elit est sit proident eu nulla in ullamco ullamco enim esse qui quis mollit veniam incididunt in velit nostrud aute pariatur dolore ullamco Duis voluptate do nulla elit esse tempor deserunt ut reprehenderit do Duis dolore commodo irure aliquip anim in eu et fugiat ea culpa reprehenderit in culpa dolore ad sed commodo laboris dolor sed magna laboris aute in do ex in pariatur nostrud culpa occaecat do fugiat commodo culpa deserunt aliqua et deserunt adipisicing fugiat ad sint in tempor nulla Excepteur non consequat qui tempor nisi non elit consectetur proident irure tempor quis pariatur nostrud ullamco minim anim do laboris occaecat est qui elit ex elit tempor in anim nostrud dolor proident velit nostrud esse nulla occaecat Excepteur aliquip cupidatat esse id labore amet culpa amet fugiat consequat cupidatat dolore sint sint ut ut reprehenderit proident exercitation occaecat elit in labore in enim.\r\n                Lorem ipsum Sit incididunt deserunt mollit et ullamco aute tempor sed non sunt esse reprehenderit est velit adipisicing consectetur veniam non aliqua adipisicing sint nostrud dolore eiusmod id sed qui proident ullamco nostrud nostrud velit veniam aliqua veniam voluptate aliquip sit reprehenderit sed culpa ea exercitation adipisicing enim velit elit in dolor minim ex in dolor velit Ut proident sunt id adipisicing qui ut adipisicing proident nulla minim voluptate aliqua reprehenderit ut in proident occaecat enim occaecat incididunt cupidatat dolore est veniam in fugiat cupidatat incididunt occaecat ut amet proident quis pariatur in ea nulla tempor aliqua anim voluptate eu cillum esse dolor nulla sunt officia in dolore proident qui veniam sit amet consequat aliquip officia proident magna tempor minim sit quis ea sed aliqua sint est officia nostrud tempor fugiat sunt in exercitation culpa quis fugiat sit ea tempor ea non magna incididunt ex ullamco nulla velit non.'),
(2, 0x323031362d31312d3133, 1, 'new', 'Dishonored 2', 'Is Dishonored2 playable?', 'd2.jpg', 'Lorem ipsum In sunt in et tempor velit magna aliqua culpa tempor voluptate sed quis dolore reprehenderit adipisicing esse et officia cillum cillum qui aliquip dolore tempor Excepteur ea sunt consectetur quis sed consectetur cupidatat anim dolore eiusmod deserunt sint sit sint Ut tempor esse ad eiusmod exercitation et incididunt consequat veniam nisi occaecat nostrud non elit culpa culpa pariatur dolore dolor aute est eu dolore id mollit cupidatat commodo ut anim aliqua adipisicing quis in labore nisi ex sunt deserunt consectetur occaecat incididunt proident mollit commodo do sint adipisicing dolor culpa sint Excepteur elit elit non qui cillum Duis et occaecat qui cillum sit nulla laborum pariatur ex ad nisi exercitation ad occaecat magna dolore fugiat non velit enim ea exercitation Ut voluptate nulla Excepteur non anim sint cillum in ex elit sunt anim nostrud minim commodo quis mollit aliquip fugiat aliquip mollit occaecat aute. Lorem ipsum Dolor quis labore ut tempor adipisicing elit occaecat Ut tempor ad in qui nisi cupidatat sunt ea tempor officia consequat culpa commodo magna ex sit ea incididunt sunt proident ut nisi dolore nostrud laboris incididunt do exercitation commodo anim sed dolore fugiat proident non proident aliqua irure consequat deserunt tempor consectetur reprehenderit nulla aliqua est do ea officia cupidatat in laborum voluptate dolor exercitation et dolore ut commodo ex adipisicing reprehenderit ad nulla qui eiusmod Excepteur dolore non adipisicing elit est sit proident eu nulla in ullamco ullamco enim esse qui quis mollit veniam incididunt in velit nostrud aute pariatur dolore ullamco Duis voluptate do nulla elit esse tempor deserunt ut reprehenderit do Duis dolore commodo irure aliquip anim in eu et fugiat ea culpa reprehenderit in culpa dolore ad sed commodo laboris dolor sed magna laboris aute in do ex in pariatur nostrud culpa occaecat do fugiat commodo culpa deserunt aliqua et deserunt adipisicing fugiat ad sint in tempor nulla Excepteur non consequat qui tempor nisi non elit consectetur proident irure tempor quis pariatur nostrud ullamco minim anim do laboris occaecat est qui elit ex elit tempor in anim nostrud dolor proident velit nostrud esse nulla occaecat Excepteur aliquip cupidatat esse id labore amet culpa amet fugiat consequat cupidatat dolore sint sint ut ut reprehenderit proident exercitation occaecat elit in labore in enim.\r\n                Lorem ipsum Sit incididunt deserunt mollit et ullamco aute tempor sed non sunt esse reprehenderit est velit adipisicing consectetur veniam non aliqua adipisicing sint nostrud dolore eiusmod id sed qui proident ullamco nostrud nostrud velit veniam aliqua veniam voluptate aliquip sit reprehenderit sed culpa ea exercitation adipisicing enim velit elit in dolor minim ex in dolor velit Ut proident sunt id adipisicing qui ut adipisicing proident nulla minim voluptate aliqua reprehenderit ut in proident occaecat enim occaecat incididunt cupidatat dolore est veniam in fugiat cupidatat incididunt occaecat ut amet proident quis pariatur in ea nulla tempor aliqua anim voluptate eu cillum esse dolor nulla sunt officia in dolore proident qui veniam sit amet consequat aliquip officia proident magna tempor minim sit quis ea sed aliqua sint est officia nostrud tempor fugiat sunt in exercitation culpa quis fugiat sit ea tempor ea non magna incididunt ex ullamco nulla velit non.'),
(3, 0x323031362d31312d3130, 1, 'new', 'Final Fantasy 7', '10 years useful?', 'ffxv.jpg', 'Lorem ipsum In sunt in et tempor velit magna aliqua culpa tempor voluptate sed quis dolore reprehenderit adipisicing esse et officia cillum cillum qui aliquip dolore tempor Excepteur ea sunt consectetur quis sed consectetur cupidatat anim dolore eiusmod deserunt sint sit sint Ut tempor esse ad eiusmod exercitation et incididunt consequat veniam nisi occaecat nostrud non elit culpa culpa pariatur dolore dolor aute est eu dolore id mollit cupidatat commodo ut anim aliqua adipisicing quis in labore nisi ex sunt deserunt consectetur occaecat incididunt proident mollit commodo do sint adipisicing dolor culpa sint Excepteur elit elit non qui cillum Duis et occaecat qui cillum sit nulla laborum pariatur ex ad nisi exercitation ad occaecat magna dolore fugiat non velit enim ea exercitation Ut voluptate nulla Excepteur non anim sint cillum in ex elit sunt anim nostrud minim commodo quis mollit aliquip fugiat aliquip mollit occaecat aute. Lorem ipsum Dolor quis labore ut tempor adipisicing elit occaecat Ut tempor ad in qui nisi cupidatat sunt ea tempor officia consequat culpa commodo magna ex sit ea incididunt sunt proident ut nisi dolore nostrud laboris incididunt do exercitation commodo anim sed dolore fugiat proident non proident aliqua irure consequat deserunt tempor consectetur reprehenderit nulla aliqua est do ea officia cupidatat in laborum voluptate dolor exercitation et dolore ut commodo ex adipisicing reprehenderit ad nulla qui eiusmod Excepteur dolore non adipisicing elit est sit proident eu nulla in ullamco ullamco enim esse qui quis mollit veniam incididunt in velit nostrud aute pariatur dolore ullamco Duis voluptate do nulla elit esse tempor deserunt ut reprehenderit do Duis dolore commodo irure aliquip anim in eu et fugiat ea culpa reprehenderit in culpa dolore ad sed commodo laboris dolor sed magna laboris aute in do ex in pariatur nostrud culpa occaecat do fugiat commodo culpa deserunt aliqua et deserunt adipisicing fugiat ad sint in tempor nulla Excepteur non consequat qui tempor nisi non elit consectetur proident irure tempor quis pariatur nostrud ullamco minim anim do laboris occaecat est qui elit ex elit tempor in anim nostrud dolor proident velit nostrud esse nulla occaecat Excepteur aliquip cupidatat esse id labore amet culpa amet fugiat consequat cupidatat dolore sint sint ut ut reprehenderit proident exercitation occaecat elit in labore in enim.\r\n                Lorem ipsum Sit incididunt deserunt mollit et ullamco aute tempor sed non sunt esse reprehenderit est velit adipisicing consectetur veniam non aliqua adipisicing sint nostrud dolore eiusmod id sed qui proident ullamco nostrud nostrud velit veniam aliqua veniam voluptate aliquip sit reprehenderit sed culpa ea exercitation adipisicing enim velit elit in dolor minim ex in dolor velit Ut proident sunt id adipisicing qui ut adipisicing proident nulla minim voluptate aliqua reprehenderit ut in proident occaecat enim occaecat incididunt cupidatat dolore est veniam in fugiat cupidatat incididunt occaecat ut amet proident quis pariatur in ea nulla tempor aliqua anim voluptate eu cillum esse dolor nulla sunt officia in dolore proident qui veniam sit amet consequat aliquip officia proident magna tempor minim sit quis ea sed aliqua sint est officia nostrud tempor fugiat sunt in exercitation culpa quis fugiat sit ea tempor ea non magna incididunt ex ullamco nulla velit non.'),
(4, 0x323031362d31322d3135, 1, 'review', 'Final Fantasy 7', 'review', 'ffxv.jpg', 'Lorem ipsum In sunt in et tempor velit magna aliqua culpa tempor voluptate sed quis dolore reprehenderit adipisicing esse et officia cillum cillum qui aliquip dolore tempor Excepteur ea sunt consectetur quis sed consectetur cupidatat anim dolore eiusmod deserunt sint sit sint Ut tempor esse ad eiusmod exercitation et incididunt consequat veniam nisi occaecat nostrud non elit culpa culpa pariatur dolore dolor aute est eu dolore id mollit cupidatat commodo ut anim aliqua adipisicing quis in labore nisi ex sunt deserunt consectetur occaecat incididunt proident mollit commodo do sint adipisicing dolor culpa sint Excepteur elit elit non qui cillum Duis et occaecat qui cillum sit nulla laborum pariatur ex ad nisi exercitation ad occaecat magna dolore fugiat non velit enim ea exercitation Ut voluptate nulla Excepteur non anim sint cillum in ex elit sunt anim nostrud minim commodo quis mollit aliquip fugiat aliquip mollit occaecat aute. Lorem ipsum Dolor quis labore ut tempor adipisicing elit occaecat Ut tempor ad in qui nisi cupidatat sunt ea tempor officia consequat culpa commodo magna ex sit ea incididunt sunt proident ut nisi dolore nostrud laboris incididunt do exercitation commodo anim sed dolore fugiat proident non proident aliqua irure consequat deserunt tempor consectetur reprehenderit nulla aliqua est do ea officia cupidatat in laborum voluptate dolor exercitation et dolore ut commodo ex adipisicing reprehenderit ad nulla qui eiusmod Excepteur dolore non adipisicing elit est sit proident eu nulla in ullamco ullamco enim esse qui quis mollit veniam incididunt in velit nostrud aute pariatur dolore ullamco Duis voluptate do nulla elit esse tempor deserunt ut reprehenderit do Duis dolore commodo irure aliquip anim in eu et fugiat ea culpa reprehenderit in culpa dolore ad sed commodo laboris dolor sed magna laboris aute in do ex in pariatur nostrud culpa occaecat do fugiat commodo culpa deserunt aliqua et deserunt adipisicing fugiat ad sint in tempor nulla Excepteur non consequat qui tempor nisi non elit consectetur proident irure tempor quis pariatur nostrud ullamco minim anim do laboris occaecat est qui elit ex elit tempor in anim nostrud dolor proident velit nostrud esse nulla occaecat Excepteur aliquip cupidatat esse id labore amet culpa amet fugiat consequat cupidatat dolore sint sint ut ut reprehenderit proident exercitation occaecat elit in labore in enim.\r\n                    Lorem ipsum Sit incididunt deserunt mollit et ullamco aute tempor sed non sunt esse reprehenderit est velit adipisicing consectetur veniam non aliqua adipisicing sint nostrud dolore eiusmod id sed qui proident ullamco nostrud nostrud velit veniam aliqua veniam voluptate aliquip sit reprehenderit sed culpa ea exercitation adipisicing enim velit elit in dolor minim ex in dolor velit Ut proident sunt id adipisicing qui ut adipisicing proident nulla minim voluptate aliqua reprehenderit ut in proident occaecat enim occaecat incididunt cupidatat dolore est veniam in fugiat cupidatat incididunt occaecat ut amet proident quis pariatur in ea nulla tempor aliqua anim voluptate eu cillum esse dolor nulla sunt officia in dolore proident qui veniam sit amet consequat aliquip officia proident magna tempor minim sit quis ea sed aliqua sint est officia nostrud tempor fugiat sunt in exercitation culpa quis fugiat sit ea tempor ea non magna incididunt ex ullamco nulla velit non.'),
(6, 0x323031362d30392d3135, 1, 'test', 'Dragon Quest 7', 'test', 'dq7.jpg', 'In a fast-moving medium like games the passage of time can be particularly cruel, but remakes give us the opportunity to revisit games as our fallible brains recall them rather than as they actually were, and introduce them to new generations without having to look past stale graphics and design. Dragon Quest VII is a sensitive update of a 16-year-old JRPG that captures the spirit of the respected original, though it doesn’t quite fill in all of the wrinkles of its outdated design.\r\n\r\nNew players should be warned that this game is, even by JRPG standards, a huge commitment. If you know exactly what you’re doing and where you’re going, you could conceivably finish the story within 75 hours – those who remember playing through the 2000 PlayStation original (released in North America a year later as Dragon Warrior VII) will find little to hinder their progress. But for most players the runtime will extend well into three figures. Completists, meanwhile, might be advised to clear their schedule until December. That’s December 2017. I’m not convinced it always manages to justify such volume (you could say that for most JRPGs) but even if it takes its sweet time on occasion its payoffs reward your patience.\r\n\r\n“\r\n\r\nThe introduction has been intelligently streamlined.\r\n\r\nDespite its formidable size, one of the first things seasoned JRPG fans will notice is that the introduction has been intelligently streamlined. It’s still quite some time before you’ll face your first monster battle, but you don’t have quite so long to wait until you’re exploring the wider world. It might seem an unusually slow start by modern standards, but it helps establish its central trio and why they’re so keen to leave their home: your young avatar, the rebellious Prince Kiefer, and inquisitive local girl Maribel are all certain there must be life beyond their lonely island, despite the protestations of others that nothing lies beyond its shores but an endless sea.\r\n\r\nIf every JRPG journey is essentially a coming-of-age tale about the world getting bigger – their youthful heroes learning and growing as they’re exposed to different places and people outside their home – Dragon Quest VII takes the metaphor more literally. The title gives the goal away: as you explore you’ll find stone fragments that, when placed on plinths at a mythical temple, unlock portals to new realms from a forgotten time. In each new place, you’ll arrive at a time of crisis with a problem to solve; once you’ve done that you’ll find the island is now accessible in the present day.\r\nDragon Quest VII: Fragments of the Forgotten Past --What''s New with Traveller''s Tablets Demo\r\nDragon Quest VII: Fragments of the Forgotten Past --What''s New with Traveller''s Tablets Demo\r\n13:22\r\n\r\nThis structural shift makes for a very different kind of journey. Where most JRPGs have a strong plot that drives you forward, this is essentially a collection of small, self-contained stories. At times it’s like watching a season of a favourite TV show that spends the first two-thirds on mystery-of-the-week episodes before belatedly bringing in the big bad for the closing stretch. You do lose something of the party’s personal journey, but these intimate little vignettes are nicely told and offer plenty of variety. You’ll be asked to convince a god-fearing community not to go ahead with a dangerous ritual, witness a thorny love triangle, and defend a city against an army of automatons (with a surprisingly moving coda).\r\n\r\n“\r\n\r\nDragon Quest 7 sends a positive message about embracing other cultures.\r\n\r\nThe effect is like playing through a series of unusually expansive side quests, and that’s not necessarily a complaint - though one or two could have perhaps been trimmed and not much would be lost. In inviting you to observe each island’s quirks and rituals, Dragon Quest 7 sends a positive message about embracing other cultures, conveyed by an excellent localisation that works hard to distinguish each settlement from the next. It repeats a trick we’ve seen before in previous Dragon Quest remakes by using dialogue inflections to convey a range of accents, from Texan to Italian, Irish to German. But while purists might be unhappy with some of the name changes, the writers haven’t gone overboard with the puns and the writing adds humour and texture.\r\nDragon Quest 7: Fragments of the Forgotten Past Official Discover Classes Trailer\r\nDragon Quest 7: Fragments of the Forgotten Past Official Discover Classes Trailer\r\n01:54\r\n\r\nThe downside is that while you’re supposedly helping the world get bigger, it doesn’t really feel like you’re expanding its boundaries because you’re often contained within a relatively small part of it. Even within each island there’s a lot of back and forth between areas. Rather than spending a short time in a new place and then moving on, as in most JRPGs, I sometimes felt stuck in a holding pattern for just a little too long. It doesn’t help that many of the people you meet look the same, with frequently recycled character models. The writing might be trying its best to convince you otherwise, but it’s hard to mourn the death of an NPC in one section when minutes later you arrive in a new town where he appears to have been cloned.\r\n\r\n“\r\n\r\nRevamped graphics really do justice to the characterful monster designs.\r\n\r\nThat might be a minor gripe, but it’s all the more disappointing given the visual lick of paint elsewhere. The original game was considered pretty ugly in its time, but the revamped graphics really do justice to Akira Toriyama’s characterful monster designs (the walking corpses are surely gaming’s most adorable zombies). And though the field environments are sparse, the villages and towns are suitably lively and the dungeons appropriately labyrinthine and imposing.\r\n\r\n\r\nIn that light, it’s strange that the interface is so old-fashioned and occasionally counter-intuitive. You’ll often find NPCs repeating lines because you triggered another conversation when you were trying to skip through their dialogue, and while shopkeepers will kindly rearrange your items to make room for new purchases you’ll still have to go through the painstaking process of selling items individually and transferring things one by one between party members before they can be equipped.\r\n\r\n“\r\n\r\nYou’ll rarely need to worry too much about the composition of your team.\r\n\r\nThe relative lack of difficulty in the turn-based combat is a more debatable issue. Dragon Quest has always been designed as an entry-level RPG, and its easygoing challenge won’t be a problem for those wanting to get on with the story. It does, however, mean that there’s little incentive for most players to fully get to grips with the interesting but underused job system that comes into play around 20 hours in, give or take. Though there’s a wide range of vocations to choose from, with additional specialities available once you’ve mastered the basic roles, outside the optional endgame content you’ll rarely need to worry too much about the composition of your team. As long as you’ve got a healer with plenty of MP in reserve and a couple of powerful attackers, you’ll probably breeze past most bosses without coming close to dying. This might not be an issue for those who play JRPGs for the story, but if you’re looking for a sterner test you’ll be waiting quite a while.\r\n\r\nThis new version attempts to address that with one of its new features, though this isn’t introduced for a surprisingly long time. Connecting to other players via StreetPass allows you to send monsters you’ve befriended to share special fragments. Each connection will raise your monster’s level, which in turn unlocks new dungeons with more powerful creatures to face. With such a substantial story and an embarrassment of optional diversions – some players will spend hours in the casino alone – this isn’t a game that really needs greater longevity, but the truly committed will be delighted to know it’s there.\r\nThe Verdict\r\n\r\nDespite the much-needed visual overhaul, if you spent 100+ hours with the PlayStation original there’s maybe not quite enough in this 3DS update to tempt you back. But if Dragon Quest VII doesn’t always justify the significant length of its journey, anyone looking for some good story content to last them well into the winter months will find a portable RPG that dwarfs most of its console counterparts.'),
(7, 0x323031362d31312d3136, 1, 'new', 'CS GO', 'Whoaaa', 'csgo.jpg', 'Lorem ipsum Consectetur laboris sit laborum ut id eu officia reprehenderit nostrud in reprehenderit laboris elit Ut sint adipisicing esse ea Duis eu pariatur ex nostrud sint cupidatat nulla sit sint proident Duis labore esse adipisicing officia in occaecat commodo non irure nostrud fugiat non eiusmod in elit reprehenderit non nulla officia elit dolor esse dolore eu id eu eiusmod nulla nulla irure Ut do tempor laborum aute ea Ut velit sit nisi qui nisi ea aliquip laboris esse sit id magna eiusmod reprehenderit magna nisi Excepteur minim id cupidatat dolor fugiat id in id in reprehenderit sit deserunt do veniam consequat ullamco occaecat non nostrud Duis enim dolore nulla laboris esse eu laboris nulla id sint quis dolor minim dolor exercitation aute nostrud pariatur veniam in aute esse sed officia et in anim cillum et pariatur pariatur consectetur consequat eiusmod voluptate culpa consectetur veniam Ut exercitation labore fugiat tempor anim dolore tempor sit ut irure incididunt amet elit enim eiusmod est aute voluptate occaecat qui sit eiusmod cupidatat nisi cillum enim occaecat Excepteur in pariatur dolore dolor aute reprehenderit Duis aliqua laboris officia nostrud sint ad veniam qui labore Ut quis dolore velit mollit quis cillum pariatur irure deserunt in veniam ex proident dolor in laboris dolor cupidatat proident nulla sunt ullamco quis tempor velit incididunt nostrud sint ut pariatur qui ullamco Duis ea labore aliquip. Lorem ipsum Mollit pariatur officia in in sunt dolore laborum magna esse consectetur id cillum irure in anim amet velit sit qui adipisicing tempor ut ut aliquip velit ut dolor non consequat non ea sit sit ullamco commodo nostrud velit quis deserunt pariatur aliqua pariatur laboris do est irure enim est nostrud cillum tempor ut amet in Excepteur est laborum laboris sunt in eiusmod tempor culpa non esse aute ut sunt sit ut voluptate dolore aute cillum esse est occaecat aute exercitation exercitation elit qui ut ex anim sit ut nostrud laboris laborum occaecat exercitation nisi dolore tempor in laborum laborum mollit non tempor id sint est deserunt Ut adipisicing est culpa ullamco tempor consectetur ut ad et fugiat voluptate in anim proident voluptate enim Excepteur sunt cupidatat qui adipisicing reprehenderit irure cillum elit consequat ex est sed laborum Duis adipisicing Duis deserunt in aute et in Excepteur commodo id eu non aute Ut sunt nulla sed velit amet mollit in aute veniam culpa ad irure voluptate dolor culpa aliquip sint amet. Lorem ipsum Duis aliquip ullamco ullamco in pariatur qui tempor aliquip dolor culpa non mollit ut Excepteur ut exercitation id nulla reprehenderit nisi reprehenderit minim ut anim pariatur commodo aliquip dolore ad irure occaecat non in eiusmod ea dolor enim eu eu sunt pariatur consequat esse sunt proident occaecat eiusmod Duis consequat Ut dolor sint eiusmod ea ut in ad id ullamco anim culpa enim incididunt magna mollit voluptate consequat anim dolor incididunt exercitation sint eiusmod tempor ad minim aute labore cillum laboris in do ullamco eu velit labore laborum consequat anim voluptate dolor consectetur pariatur culpa do fugiat pariatur ad labore Excepteur consequat minim enim mollit sunt quis qui ut dolore labore sint Ut quis non Excepteur anim id non non in anim quis laboris consectetur amet esse deserunt dolor sed aliquip labore quis sunt magna cupidatat dolor ut nisi Duis proident dolore ea veniam consectetur ad culpa esse dolore anim Duis cupidatat laborum anim velit consectetur irure reprehenderit consequat dolore amet non occaecat in occaecat ut dolor nostrud sunt amet minim nostrud Excepteur veniam eiusmod fugiat Ut aliqua consequat exercitation sint consectetur Excepteur culpa mollit incididunt in in nisi minim Ut nostrud elit et sint fugiat dolor magna voluptate ex fugiat do labore dolore cupidatat labore nostrud do aliquip quis Ut exercitation pariatur fugiat minim Duis elit nulla eiusmod ullamco sed officia quis enim aliquip cillum est ex ex dolor adipisicing occaecat dolore labore eiusmod Excepteur adipisicing sint Ut eu Excepteur ut fugiat nulla occaecat exercitation ullamco cillum in amet Duis sint ullamco. Lorem ipsum Ullamco irure occaecat fugiat ad aliquip eiusmod non in sit labore esse Ut qui adipisicing cupidatat consequat incididunt sint Duis incididunt ad occaecat adipisicing in in adipisicing sint Excepteur in amet Ut dolore labore sit commodo ad aliquip velit enim est elit dolore magna commodo est ad ad veniam eiusmod velit reprehenderit incididunt occaecat culpa tempor mollit in tempor esse pariatur minim magna culpa Ut exercitation nostrud in cillum fugiat elit irure velit in anim minim est qui aliqua laboris ea est nisi labore eiusmod labore nulla labore enim Excepteur in aute dolor Excepteur velit elit laborum et consectetur commodo fugiat dolor nisi non consectetur Excepteur nostrud sint quis nostrud enim adipisicing ullamco quis est eu sed incididunt aliquip nulla Excepteur in proident eu dolor non magna irure consectetur eiusmod do elit laboris dolore ullamco in irure eiusmod ut proident elit ullamco pariatur culpa ut irure velit sed velit ad adipisicing dolor sed est aliqua nulla eiusmod laboris non anim tempor irure magna laboris pariatur dolore exercitation aliquip eiusmod laboris elit ut proident amet Duis eu enim mollit velit cupidatat eiusmod Excepteur laborum incididunt enim velit Ut anim proident mollit et deserunt sint enim in et enim quis sed fugiat nisi nulla officia minim in laborum minim fugiat commodo anim et fugiat est sit ex cillum qui veniam laboris quis ullamco nisi consequat labore velit esse nostrud dolor irure dolor labore occaecat adipisicing in adipisicing quis.'),
(8, 0x323031362d31312d3131, 1, 'test', 'Dishonored 2', 'test', 'd2.jpg', 'Lorem ipsum Consectetur laboris sit laborum ut id eu officia reprehenderit nostrud in reprehenderit laboris elit Ut sint adipisicing esse ea Duis eu pariatur ex nostrud sint cupidatat nulla sit sint proident Duis labore esse adipisicing officia in occaecat commodo non irure nostrud fugiat non eiusmod in elit reprehenderit non nulla officia elit dolor esse dolore eu id eu eiusmod nulla nulla irure Ut do tempor laborum aute ea Ut velit sit nisi qui nisi ea aliquip laboris esse sit id magna eiusmod reprehenderit magna nisi Excepteur minim id cupidatat dolor fugiat id in id in reprehenderit sit deserunt do veniam consequat ullamco occaecat non nostrud Duis enim dolore nulla laboris esse eu laboris nulla id sint quis dolor minim dolor exercitation aute nostrud pariatur veniam in aute esse sed officia et in anim cillum et pariatur pariatur consectetur consequat eiusmod voluptate culpa consectetur veniam Ut exercitation labore fugiat tempor anim dolore tempor sit ut irure incididunt amet elit enim eiusmod est aute voluptate occaecat qui sit eiusmod cupidatat nisi cillum enim occaecat Excepteur in pariatur dolore dolor aute reprehenderit Duis aliqua laboris officia nostrud sint ad veniam qui labore Ut quis dolore velit mollit quis cillum pariatur irure deserunt in veniam ex proident dolor in laboris dolor cupidatat proident nulla sunt ullamco quis tempor velit incididunt nostrud sint ut pariatur qui ullamco Duis ea labore aliquip. Lorem ipsum Mollit pariatur officia in in sunt dolore laborum magna esse consectetur id cillum irure in anim amet velit sit qui adipisicing tempor ut ut aliquip velit ut dolor non consequat non ea sit sit ullamco commodo nostrud velit quis deserunt pariatur aliqua pariatur laboris do est irure enim est nostrud cillum tempor ut amet in Excepteur est laborum laboris sunt in eiusmod tempor culpa non esse aute ut sunt sit ut voluptate dolore aute cillum esse est occaecat aute exercitation exercitation elit qui ut ex anim sit ut nostrud laboris laborum occaecat exercitation nisi dolore tempor in laborum laborum mollit non tempor id sint est deserunt Ut adipisicing est culpa ullamco tempor consectetur ut ad et fugiat voluptate in anim proident voluptate enim Excepteur sunt cupidatat qui adipisicing reprehenderit irure cillum elit consequat ex est sed laborum Duis adipisicing Duis deserunt in aute et in Excepteur commodo id eu non aute Ut sunt nulla sed velit amet mollit in aute veniam culpa ad irure voluptate dolor culpa aliquip sint amet. Lorem ipsum Duis aliquip ullamco ullamco in pariatur qui tempor aliquip dolor culpa non mollit ut Excepteur ut exercitation id nulla reprehenderit nisi reprehenderit minim ut anim pariatur commodo aliquip dolore ad irure occaecat non in eiusmod ea dolor enim eu eu sunt pariatur consequat esse sunt proident occaecat eiusmod Duis consequat Ut dolor sint eiusmod ea ut in ad id ullamco anim culpa enim incididunt magna mollit voluptate consequat anim dolor incididunt exercitation sint eiusmod tempor ad minim aute labore cillum laboris in do ullamco eu velit labore laborum consequat anim voluptate dolor consectetur pariatur culpa do fugiat pariatur ad labore Excepteur consequat minim enim mollit sunt quis qui ut dolore labore sint Ut quis non Excepteur anim id non non in anim quis laboris consectetur amet esse deserunt dolor sed aliquip labore quis sunt magna cupidatat dolor ut nisi Duis proident dolore ea veniam consectetur ad culpa esse dolore anim Duis cupidatat laborum anim velit consectetur irure reprehenderit consequat dolore amet non occaecat in occaecat ut dolor nostrud sunt amet minim nostrud Excepteur veniam eiusmod fugiat Ut aliqua consequat exercitation sint consectetur Excepteur culpa mollit incididunt in in nisi minim Ut nostrud elit et sint fugiat dolor magna voluptate ex fugiat do labore dolore cupidatat labore nostrud do aliquip quis Ut exercitation pariatur fugiat minim Duis elit nulla eiusmod ullamco sed officia quis enim aliquip cillum est ex ex dolor adipisicing occaecat dolore labore eiusmod Excepteur adipisicing sint Ut eu Excepteur ut fugiat nulla occaecat exercitation ullamco cillum in amet Duis sint ullamco. Lorem ipsum Ullamco irure occaecat fugiat ad aliquip eiusmod non in sit labore esse Ut qui adipisicing cupidatat consequat incididunt sint Duis incididunt ad occaecat adipisicing in in adipisicing sint Excepteur in amet Ut dolore labore sit commodo ad aliquip velit enim est elit dolore magna commodo est ad ad veniam eiusmod velit reprehenderit incididunt occaecat culpa tempor mollit in tempor esse pariatur minim magna culpa Ut exercitation nostrud in cillum fugiat elit irure velit in anim minim est qui aliqua laboris ea est nisi labore eiusmod labore nulla labore enim Excepteur in aute dolor Excepteur velit elit laborum et consectetur commodo fugiat dolor nisi non consectetur Excepteur nostrud sint quis nostrud enim adipisicing ullamco quis est eu sed incididunt aliquip nulla Excepteur in proident eu dolor non magna irure consectetur eiusmod do elit laboris dolore ullamco in irure eiusmod ut proident elit ullamco pariatur culpa ut irure velit sed velit ad adipisicing dolor sed est aliqua nulla eiusmod laboris non anim tempor irure magna laboris pariatur dolore exercitation aliquip eiusmod laboris elit ut proident amet Duis eu enim mollit velit cupidatat eiusmod Excepteur laborum incididunt enim velit Ut anim proident mollit et deserunt sint enim in et enim quis sed fugiat nisi nulla officia minim in laborum minim fugiat commodo anim et fugiat est sit ex cillum qui veniam laboris quis ullamco nisi consequat labore velit esse nostrud dolor irure dolor labore occaecat adipisicing in adipisicing quis.');

-- --------------------------------------------------------

--
-- Structure de la table `commentary`
--

CREATE TABLE IF NOT EXISTS `commentary` (
`id` int(11) NOT NULL,
  `date` date NOT NULL,
  `username` varchar(30) NOT NULL,
  `isArticle` tinyint(1) NOT NULL,
  `id_A` int(11) NOT NULL,
  `url_V` varchar(50) NOT NULL,
  `comment` text NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=82 ;

--
-- Contenu de la table `commentary`
--

INSERT INTO `commentary` (`id`, `date`, `username`, `isArticle`, `id_A`, `url_V`, `comment`) VALUES
(81, 0x323031362d31322d3231, 'Zenor', 1, 7, '', 'amazing'),
(74, 0x323031362d31322d3231, 'Zenor', 1, 0, '', 'test'),
(79, 0x323031362d31322d3231, 'Zenor', 1, 4, '', 'test'),
(63, 0x323031362d31322d3231, 'Zenor', 0, 7, '', 'ff'),
(77, 0x323031362d31322d3231, 'Zenor', 1, 6, '', 'one random comment'),
(72, 0x323031362d31322d3231, 'Zenor', 1, 0, '', 'test'),
(73, 0x323031362d31322d3231, 'Zenor', 1, 0, '', 'test'),
(61, 0x323031362d31322d3231, 'Zenor', 0, 0, 'otVk3EEjgd8', 'Bonjour!');

-- --------------------------------------------------------

--
-- Structure de la table `games`
--

CREATE TABLE IF NOT EXISTS `games` (
`id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `editor` varchar(50) NOT NULL,
  `developer` varchar(50) NOT NULL,
  `type` varchar(128) NOT NULL,
  `multiplayer` varchar(11) NOT NULL,
  `release` date NOT NULL,
  `cover` varchar(30) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Contenu de la table `games`
--

INSERT INTO `games` (`id`, `title`, `editor`, `developer`, `type`, `multiplayer`, `release`, `cover`) VALUES
(1, 'Final Fantasy 7', 'Square Enix', 'Square Enix', 'RPG', '1', 0x323031362d31312d3239, 'ffxv_cover.jpg'),
(2, 'Persona 5', 'Atlus', 'Atlus', 'RPG', '1', 0x323031372d30342d3034, 'P5_cover.jpg'),
(3, 'Dragon Quest 8', 'Square Enix', 'Square Enix', 'RPG', '1', 0x323031372d30312d3230, 'DQ8DS_cover.jpg'),
(4, 'Dragon Quest 7', 'Square Enix', 'Square Enix', 'RPG', '1', 0x323031362d30392d3136, 'DQ7DS_cover.jpg'),
(5, 'CS GO', 'Hidden Path', 'Valve', 'FPS', 'online', 0x323031322d30382d3231, 'csgo_cover.jpg'),
(6, 'Dishonored 2', ' Bethesda', 'Arkane Studios  ', 'FPS', '1', 0x323031362d31312d3131, 'D2_cover.jpg');

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

-- --------------------------------------------------------

--
-- Structure de la table `videos`
--

CREATE TABLE IF NOT EXISTS `videos` (
`id` int(11) NOT NULL,
  `game` varchar(30) NOT NULL,
  `url` varchar(50) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `videos`
--

INSERT INTO `videos` (`id`, `game`, `url`) VALUES
(1, 'Final Fantasy 7', 'otVk3EEjgd8'),
(2, 'Final Fantasy 7', 'CNM6o9um1dc'),
(3, 'Dishonored 2', 'tdI5E_50aBE');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `article`
--
ALTER TABLE `article`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `commentary`
--
ALTER TABLE `commentary`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `games`
--
ALTER TABLE `games`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `members`
--
ALTER TABLE `members`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `videos`
--
ALTER TABLE `videos`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `article`
--
ALTER TABLE `article`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `commentary`
--
ALTER TABLE `commentary`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=82;
--
-- AUTO_INCREMENT pour la table `games`
--
ALTER TABLE `games`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `members`
--
ALTER TABLE `members`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `videos`
--
ALTER TABLE `videos`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
