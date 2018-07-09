-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2018 at 01:51 PM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simslegacy`
--

-- --------------------------------------------------------

--
-- Table structure for table `careers`
--

CREATE TABLE `careers` (
  `id` int(11) NOT NULL,
  `career` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `conventional` tinyint(1) NOT NULL,
  `xp` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `careers`
--

INSERT INTO `careers` (`id`, `career`, `description`, `conventional`, `xp`) VALUES
(1, 'Entertainer (Musician)', 'No additional money-making opportunities. ', 1, ''),
(2, 'Entertainer (Comedian)', 'May perform comedy in space. ', 1, ''),
(3, 'Writer (Author)', 'May publish all book genres. ', 1, ''),
(4, 'Writer (Journalist)', 'May publish all book genres (self publishing), and write articles. ', 1, ''),
(5, 'Painter (Master of the Real)', 'May sell crafted paintings and call agent to collect money. ', 1, ''),
(6, 'Painter (Patron of the Arts)', 'May sell crafted paintings and call agent to collect money. ', 1, ''),
(7, 'Secret Agent (Diamond Agent)', 'No additional money-making opportunities. ', 1, ''),
(8, 'Secret Agent (Villain)', 'No additional money-making opportunities. ', 1, ''),
(9, 'Criminal (Boss) ', 'May pickpocket sims. ', 1, ''),
(10, 'Criminal (Oracle) ', 'My pickpocket sims. May hack and create viruses. ', 1, ''),
(11, 'Astronaut (Space Ranger)', 'May go on space missions with the rocket ship.', 1, ''),
(12, 'Astronaut (Smuggler)', 'May go on space missions with the rocket ship. ', 1, ''),
(13, 'Culinary(Chef)', 'May publish cookbooks (self publishing). ', 1, ''),
(14, 'Culinary (Mixologist)', 'May publish bar guides (self publishing)', 1, ''),
(15, 'Tech Guru (eSport Gamer)', 'No additional money-making opportunities. ', 1, ''),
(16, 'Tech Guru (Start-up Entrepreneur)', 'No additional money-making opportunities. ', 1, ''),
(17, 'Athlete (Bodybuilder) ', 'No additional money-making opportunities. ', 1, ''),
(18, 'Athlete (Pro Athlete)', 'No additional money-making opportunities. ', 1, ''),
(19, 'Business (Management) ', 'No additional money-making opportunities. ', 1, ''),
(20, 'Business (Investor)', 'May invest in stocks. ', 1, ''),
(21, 'Doctor', 'No additional money-making opportunities. This career counts as a profession. ', 1, 'Get To Work'),
(22, 'Detective ', 'No additional money-making opportunities. This career counts as a profession. ', 1, 'Get To Work'),
(23, 'Scientist', 'No additional money-making opportunities. This career counts as a profession. ', 1, 'Get To Work'),
(24, 'Critic (Art Critic)', 'No additional money-making opportunities. ', 1, 'City Living'),
(25, 'Critic (Food Critic) ', 'If you have rolled Homemade, your food critic (and only your food critic) may eat out for food review purposes. No additional money making opportunities. ', 1, 'City Living'),
(26, 'Politician (Charity Organizer)', 'No additional money-making opportunities. ', 1, 'City Living'),
(27, 'Politician (Politician)', 'May ask for bribes. ', 1, 'City Living'),
(28, 'Social Media (Internet Personality)', 'May advertise on your social media page. ', 1, 'City Living'),
(29, 'Social Media (Public Relations)', 'No additional money-making opportunities. ', 1, 'City Living'),
(30, 'Gardener (Botanist)', 'If you choose to also sell plants you are limited to one of each type. ', 1, 'Seasons'),
(31, 'Gardener (Flower Designer)', 'May only sell arrangements for income. ', 1, 'Seasons'),
(32, 'Freelance Painter', 'Paint whatever you want, whenever you want, and sell it to collectors.', 0, ''),
(33, 'Freelance Author', 'Write and publish whatever you want, whenever you want.', 0, ''),
(34, 'Freelance Musician', 'Play a musical instrument of your choice in public to earn money from tips. You may also sell jingles and license songs you\'ve written. If you have City Living, singing counts as an instrument.', 0, ''),
(35, 'Gardener ', 'Plant, harvest and sell produce and flowers of all kinds.', 0, ''),
(36, 'Fishersim', 'Sell whatever you can manage to catch.', 0, ''),
(37, 'Treasure Hunter', 'Dig up those little weird rocky-looking things and sell what you find. You may also sell the little treasures (unwanted upgrade parts) that you dig out of your household plumbing, electronics and appliances. Collecting and breeding frogs is also allowed, as is collecting and selling insects. Selling collectibles you\'ve traded for at the flea market is allowed. The new dig spots (C&D) are allowed as well. ', 0, ''),
(38, 'Carpenter', 'Use the wood crafting bench to make and sell furniture, as well as complete wood crafting projects.', 0, ''),
(39, 'Freelance Comedian', 'Use the microphone to perform comedy routines and publish comedy books (self-publishing)', 0, ''),
(40, 'Freelance Programmer', 'Use your programming skills on the computer for a variety of tasks, including creating apps, creating plugins and freelance work.', 0, ''),
(41, 'Space Explorer', 'Build your own rocket and take to the stars, selling what you bring back from your travels.', 0, ''),
(42, 'Professional Gamer ', 'Create computer games (programming 9), livestream and compete in gaming tournaments to earn money.', 0, ''),
(43, 'Cybercriminal ', 'Create viruses and hack for money.', 0, ''),
(44, 'Professional Host/Hostess', 'Host social gatherings of all kinds and sell the rewards you earn for money.', 0, ''),
(45, 'Remedy Brewer', 'Brew herbal remedies and sell them for profit.', 0, 'Outdoor Retreat'),
(46, 'Freelance Photographer', 'Take and sell photographs', 0, 'Get To Work'),
(47, 'Retail Owner', 'Manage a retail store that does not sell anything that\'s covered by any of the other options above. For example, you could have a store that sells food you\'ve cooked, but you could not sell raw produce at the store unless you had another sim in the household that rolled Gardener. Alternately, you may also choose to operate one of the vendor tables or display walls that come with City Living. This career counts as a profession unless you choose to operate a vendor table/ ddisplay wall in lieu of a real store.', 0, 'Get To Work / City Living'),
(48, 'DJ', 'Manage your own restaurant. This career counts as a profession', 0, 'Get Together'),
(49, 'Restaurateur ', 'Manage your own restaurant. This career counts as a profession.', 0, 'Dine Out'),
(50, 'Animal Trainer', 'Adopt or create a pet with the Prowler (c) or Hunter (d) trait and send them out to bring back loot for you. It may be possible to also make money off of having a trained pet perform tricks.', 0, 'Cats & Dogs'),
(51, 'Veterinarian', 'May also craft pet treats to sell.', 0, 'Cats & Dogs'),
(52, 'Archaeologist', 'Excavate and use the archaelogoy table to authenticate relics. You may also write archaeology books and verify items mailed to you. Only items you find through excavation can be sold. If you choose to explore temples you can never sell the treasures. You can, on the other hand, keep them to display in your home.', 0, 'Jungle Adcentures'),
(53, 'Treasure Hunter', 'Go on adventures to find simoleons, Omiscan treasures, relics, artifacts and fossils to sell or keep. Note: Only items you can find within temples or through pop-up quests can be sold. If you choose to do arcaeology such as excavating and using the table you can never sell the items. You can, on the other hand, keep them to display in your home.', 0, 'Jungle Adventures'),
(54, 'Flower Arranging', 'Craft flower arrangements to sell. You may sell these via inventory, store or yard sale table if this is possible. You may have a small garden with flowers only, but you may not sell the flowers in any other way than through arrangements.', 0, 'Seasons');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` int(11) NOT NULL,
  `color` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `color`) VALUES
(1, 'Red'),
(2, 'Pink'),
(3, 'Yellow'),
(4, 'Green'),
(5, 'Blue'),
(6, 'Purple'),
(7, 'White'),
(8, 'Gray'),
(9, 'Black'),
(10, 'Brown');

-- --------------------------------------------------------

--
-- Table structure for table `gengoals`
--

CREATE TABLE `gengoals` (
  `id` int(11) NOT NULL,
  `title` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `xp` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gengoals`
--

INSERT INTO `gengoals` (`id`, `title`, `description`, `xp`) VALUES
(1, 'Perfect Careers', 'The heir, spouse and helpers must reach level 10 in their careers. Re-roll if no conventional careers are rolled this generation', ''),
(2, 'Fulfilled', 'The heir and spouse, if applicable, must complete their first aspiration. If the spouse is accidentally too old when they move in to have time to complete an aspiration, they are not required to do so, but try to be reasonable with this provision.', ''),
(3, 'Perfect Children', 'All children born this generation must complete their childhood aspiration and receive a B grade in elementary school and an A grade in high school. They should also have a BFF during childhood, and at least one boyfriend or girlfriend lasting at least 24 sim hours during their teen years. As toddlers, they must reach level 3 in all skills, including potty training, and raise at least one skill to level 5. Each child must gain at least 3 positive character traits when aging to YA.', ''),
(4, 'Dependable', 'Your heir, spouse and helpers must complete all daily tasks for school and work, beginning in childhood or upon move-in to the house. You may use vacation days given by the game to skip school or work if you are not going to be able to handle the task, but you may not skip if you have no vacation, or without using your vacation or attend without having your daily task completed, even if you have saved vacation. Re-roll if no non-profession conventional careers are rolled this generation.', ''),
(5, 'Expansionist ', 'You must construct a significant expansion to the house this generation. You may also add or change a single lot trait if you wish. If Random is your miscellaneous fun this generation, the trait changed and a new trait must be randomly generated.', ''),
(6, 'Collector', 'Your heir, spouse, helpers and children must complete and display one of the collections. All items must be found or grown that generation, and for plants you may not use seeds from previous generations - find your own! If you already completed part of a collection in a previous generation, you can choose that collection, but you must collect the objects you already have again with a sim from this generation. Collections and display requirements are as follows: Frogs, Gardening - Must be planted and grown to maturity, may be of any quality. You must have one plant for each collectible, MySims Trophies, Metals, Crystals, Elements  - Elemental Display Rack, Insects, Postcards - Bunchapals Postcard Corkboard, Fossils, Microscope Prints, Space Prints, Aliens, Space Rocks, Fish - any combination of bowls and mounting, Geodes, Experimental Food Photos, VoidCritter Cards - Foil preferred, Snow Globes, City Posters, Feathers - Both the wall plaques and owl statue, Ancient Omiscan Artifacts, Omiscan Treasures.', ''),
(7, 'Deadbeat Parents', 'The heir, spouse and helpers may not help their children this generation, apart from basic needs like food and autonomous chatting over dinner. This includes helping with homework, mentoring or encouraging children in skills, and reading books to them. For toddlers, it is permitted to provide basic care such as food and diaper changes, but try to avoid any parent-child interactions that raise a skill bar, such as flash cards, reading books, potty training and so on. Some autonomous talking is okay - the parents are deadbeat, not abusive. But do not deliberately train the communication skill. Children may teach themselves. Each child should age up to YA with at least one negative character trait.', ''),
(8, 'Change of Scenery', 'It is moving time! At some point, after the heir comes of age, you must either move to a new lot or completely demolish the entire house and start over from scratch on your current lot. Your new lot may not share any lot traits with your old lot. If Random is your Miscellaneous fun this generation, the new lots traits must be randomly determined. Re-roll if its generation 1.', ''),
(9, 'Party Queen or King', 'Host house, dinner, wedding and birthday parties with a gold medal in each. If you have more than four party types, roll to determine which for types you will be attempting for this gold. Re-roll any duplicates.', ''),
(10, 'Idle Careers', 'You may not make an effort to advance in your heirs, helpers or spouses careers, including school. If the career goals happen to line up with aspiration goals, thats a happy coincidence, because you may advance in aspiration freely. Autonomous actions are also acceptable. If you have rolled an unconventional career that has no tasks that sims will perform autonomously, you may only perform tasks for it if your sim has a whim to do it, or if they do them autonomously. If you rolled for this generation before the heir aged to YA they may not have the Responsible trait. If you rolled an interactive career, never chhos the Travel to Work option. Send them alone, as the work performance should, in theory stay stagnant that way.', ''),
(11, 'Friendship is Forever', 'Beginning when the heir is a child, they must make one new good friend every week. This friendship must be maintained through subsequent weeks, and may only be ended by the death of the friend.', ''),
(12, 'Midlife Crisis', 'This generation, one of the heir, spouses - including second chances or helpers will experience a randomly generated midlife crisis event. Between when this generation is rolled and when the first of the eligible sims reach the adult life stage, not YA, determine who will go through the crisis. If you have not picked someone before the first sim reaches adulthood, or is moved in as an adult, that sim will be the one. Once the selected sim reaches adulthood, roll three aspects of midlife crisis. Each aspect has a deadline which it must be either completed or started during. The goal is complete when all aspects have been completed.', ''),
(13, 'Memorial ', 'The heir, along with any spouses or helpers, must be memorialized this generation, by a sim with maxed skill in the relevant crafting skill, painting, photography or writing. Memorials may consist of a painted portrait, a photograph, a biography or a book of life. Each memorial can be crafted by a differnt sim if you want, and they do not have to all be the same type, though they should all be displayed together.', ''),
(14, 'Themed Display', 'This generation, the heir, spouses and helpers should create a themed display somewhere in their house or yard. The display must contain at least 10 items, plant and craft level excellent or higher, from at least two different collections or craft disciplines, and must contain at least one craft and one collected item. For example, a display with 3 plants, 5 photographs and 2 space rocks would be okay, but a display with 4 photographs and 6 paintings would not, because there is no collected item. The theme is left up to you, but examples include space telescope prints and photographs of the alien homeworld, botany - plants, photographs of plants and microscope prints of plants, flowers - plants and paintings of plants in the wild and animals - frogs, insects, and photographs of insects in the wild', ''),
(15, 'Haunted House', 'From the time the heir comes of age to the time the heir dies, three sims must die an unnatural death on your home lot. Unnatural death is defined as any death except by old age, and the sims may be members of your household - such as unneeded spouses, spares that are about to move out, or even the heir themselves, or guests. Furthermore, the graves must stay on your home lot, and the ghosts be allowed to roam the house freely. The graves may be removed after this generations heir dies.', ''),
(16, 'Best Club Ever', 'Your heir must start their own club from scratch this generation. To complete this goal, the following criteria must be met concurrently: The club must have 8 members. Sims may not join the club unless they are already friends with the club leader, so get recruiting! The club must have a hangout built specially for them, either on your home lot or on a community lot. The hangout should contain enough seating for the entire club and any necessary items to complete club activities. If you build on a community lot from the map view, take note of how much money you spent on the hangout and subtract it from your familys funds. The club should have all ranks of one of the emotional vibes purchaes, depending on the clubs focus. Happy counts. The club cdoor perk must be unlocked - since you have a hangout. In addition, three other club spirit perks must be unlocked and used - hats, jackets, wall decorations, etc.', 'Get Together'),
(17, 'Domestic Dilemma', 'When this generation comes of age, or at the start of the game, you must either add a new negative trait or replace an existing trait. Determine which of the three randomly, with a negative trait of your choice. That is unless you have rolled Random. This generation, you must find a creative way in your story to overcome said negative trait. For example, Quake Zone might be overcome by a sim maxing their writing skill and writing 5 nonfiction beststeller books about earthquake safety, or perhaps by a sim maxing their handiness skill and equipping every appliance or plumbing object in the house with the unbreakable upgrade. Be creative! When the negative trait has been overcome, you may replace it with a trait of your choice if you wish - unless you rolled Random. Negative traits include: Cursed, Filthy, Gremlins, Grody, Haunted, Mean Vibe, On a Dark Ley Line, Quake Zone, Vampire Nexus, Creepy Crawlies.', 'City Living'),
(18, 'My Honor Student', 'In this generation complete every school project in every possible level from poor-excellent and create a prominent display area so that any guests to the house can marvel at your childs intellect - even if the parent did most if it themselves.', 'Parenthood'),
(19, 'Pet Shrine', 'Adopt, create or bring home a stray pet. Through the generation, build a shrine to the pet. Example: A wall of Simstigram photos, their urn, favorite toys, collected feathers, collected presents unopened.', 'Cats & Dogs'),
(20, 'Bad Investment ', 'At the end of the previous generation the former heir made a bad investment and lost most of the families money. Add their household funds and lot value, then multiply that by 90 percent. This is the amount you will need to subtract. Once there are no funds left, the repo man comes. You will need to sell any and all household items until the debt is paid. You may choose to sell the house and start over if you would like.', ''),
(21, 'Bring Me Back To Life', 'At some point during this generation, one of the family members teen-elder will have a terrible accident - of your choice of course. After Grim has done his duty, have the remaining family members work towards having the poor soul rejoin the family, and ressurect them. If you will not have at least one living caretaker left in the house, re-roll this.', ''),
(22, 'Do-Gooders', 'This familys mantra is do onto others. And they do! They volunteer together at least once a week. They feed strays in the park. They invite homeless sims to dinner and let them stay the night. They regularly donate to charity. Basically, any do-gooder thing you can think of.', ''),
(23, 'Holiday Fanatics', 'Must celebrate at least one holiday each sim week with 5 goals and all completed if possible depending on the sims likes.', 'Seasons');

-- --------------------------------------------------------

--
-- Table structure for table `maritalstatus`
--

CREATE TABLE `maritalstatus` (
  `id` int(11) NOT NULL,
  `title` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `working_sims` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `maritalstatus`
--

INSERT INTO `maritalstatus` (`id`, `title`, `description`, `working_sims`) VALUES
(1, 'Single', 'Your heir may not have a live-in partner after the first child is born. Any extra sims must be moved out of the house by 24 hours after the first child is born. A male heir may move in a female partner for the course of any pregnancies, but the 24-hour rule applies and she may not contribute financially. Partners that have moved out are not allowed to lurk around the house to help out with toddler care and must be removed if they will not leave.', 1),
(2, 'Couple', 'Your heir must obtain a romantic live-in partner. They do not have to be married.', 2),
(3, 'Mixed Single', 'Children must be a mix of naturally born and adopted. If you have rolled to have only one child, you may have a second to satisfy this parameter.', 1),
(4, 'Mixed Couple', 'Children must be a mix of naturally born and adopted. If you have rolled to have only one child, you may have a second to satisfy this parameter.', 2),
(5, 'Second Chance', 'Your heir must obtain two live-in partners during the course of the generation. At least one child must be born or adopted with the first partner.', 3),
(6, 'Single with Help', 'A non-romantic helper sim must live in the house. The helper sim can be anything you desire, from a friend of the family to a spare who decides to stick around.', 2),
(7, 'Mixed Single with Help', 'Children must be a mix of naturally born and adopted. If you have rolled to have only one child, you may have a second to satisfy this parameter.', 2),
(8, 'Couple with Help', 'A non-romantic helper sim must live in the house. The helper sim can be anything you desire, from a friend of the family to a spare who decides to stick around.', 3),
(9, 'Mixed Couple w/ Help', 'A non-romantic helper sim must live in the house. The helper sim can be anything you desire, from a friend of the family to a spare who decides to stick around. Children must be a mix of naturally born and adopted. If you have rolled to have only one child, you may have a second to satisfy this parameter.', 3),
(10, 'Single w/ 2 Help', 'Two non-romantic helper sims must live in the house. The helper sims can be anything you desire, from a friend of the family to a spare who decides to stick around. The helpers may be romantically involved with each other.', 3),
(11, 'Mixed Single w/ 2 Help', 'A non-romantic helper sim must live in the house. The helper sim can be anything you desire, from a friend of the family to a spare who decides to stick around. Children must be a mix of naturally born and adopted. If you have rolled to have only one child, you may have a second to satisfy this parameter.', 3),
(12, 'Full House', 'Three non-romantic helper sims must live in the house. The helper sims can be anything you desire, from a friend of the family to a spare who decides to stick around.. Children must be a mix of naturally born and adopted. If you have rolled to have only one child, you may have a second to satisfy this parameter.', 4);

-- --------------------------------------------------------

--
-- Table structure for table `midlifecrisis`
--

CREATE TABLE `midlifecrisis` (
  `id` int(11) NOT NULL,
  `title` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `midlifecrisis`
--

INSERT INTO `midlifecrisis` (`id`, `title`, `description`) VALUES
(1, 'Re-roll Miscellaneous Fun', 'Re-roll your Miscellaneous Fun within 24 hours. It takes effect immediately, with weekly tasks starting the following Sunday.'),
(2, 'Randomize a trait', 'Randomly determine which of your sims trait will change, then use a cheat to remove that trait, replacing it with another that has been randomly determined.'),
(3, 'Re-roll Career', 'Re-roll your sims career within 24 hours. This means a new Primary Career if its the heir, and a new Secondary Career if its a spouse or spare.'),
(4, 'Make a major purchase', 'Buy something shiny and expensive (relative to how much wealth you have) for your house within 24 hours.'),
(5, 'Have a romantic crisis', 'Your sims love life is thrown into turmoil. Perhaps they meet a new lover, cheat on their spouse, or simply have a falling out with a long-time partner. This must begin within 48 hors, but doesnt have to resolve ever.'),
(6, 'Change style to recapture youth', 'Change style to recapture youth within 24 hours. Your sim must change their style, mirror and dresser, CAS cheats if necessary. Perhaps even get a tattoo. They can change back after a period of a few days if they want.'),
(7, 'Gain a new skill', 'Your sim must gain at least 5 skill levels in a skill they haven\'t used much previously, within one week. This counts from the level they are currently at, so if a sim has level 2 charisma, they must attain level 7.'),
(8, 'Have a child', 'Your sim must either have a biological child or adopt a child within a week. Either way, it will be raised with the rest of the generations children. Add one child to the number of children you will have this generation.'),
(9, 'Randomize Aspiration', 'Pick a random new aspiration for your sim, throwing out any that are incompatible with your other rolls. If you also have to re-roll your sims career, use the new career when determining aspiration compatibility.'),
(10, 'Adopt a pet', 'Adopt a pet through an agency, or befriend a stray and bring them home, within 24 hours.');

-- --------------------------------------------------------

--
-- Table structure for table `misc`
--

CREATE TABLE `misc` (
  `id` int(11) NOT NULL,
  `title` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `xp` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `misc`
--

INSERT INTO `misc` (`id`, `title`, `description`, `xp`) VALUES
(1, 'Random', 'Determine traits and aspirations (including the childhood aspiration) randomly for all sims of this generation (the heir and their siblings). Adult aspirations should be chosen randomly from the list of aspirations, discarding any which are incompatible with others parameters, as stated earlier in the rules. Helpers and spouses moved in should have their adult aspiration randomized in a similar manner, if you choose to change it. Any lot traits determined this generation, including initial move-in traits, must be random.', ''),
(2, 'Partier', 'Throw at least one party (of any type and rating) every week. ', ''),
(3, 'Mischief Managed', 'Your heir must play a successful prank once every week from the time they age into a teen. Pranks include: Making a prank call (mischief 3+), clogging drains at other lots (mischief 5+), calling to play hooky (mischief 6+), sabotaging a rocket ship (mischeif 8+), using a stink potion (mental 10+), sabotaging objects and sims (tormenter reward trait), and any prank options performed with a partner in crime (mischief 4+). ', ''),
(4, 'Moody', 'Once a week, your heir and spouse (if applicable) must spend at least 3 consecutive hours in a certain mood, randomly chosen from the following list: inspired, happy, angry, embarrased, playful, flirty, sad, bored, dazed, confident, focused, tense, uncomfortable. Heir and spouse may have different required moods. ', ''),
(5, 'Homemade', 'May not get quick meals from the fridge, order pizza, eat from food stalls or dine out, consume plasma packs, and may only cook meals with ingredients if all ingredients are present. The pre-made toddler meals you can serve from the high chair are considered quick meals. ', ''),
(6, 'Runs in the Family', 'Pick a trait from your heir (not bonus or reward trait). Every child born to your heir must take this trait at the earliest opportunity. ', ''),
(7, 'Perfect Attendance', 'From childhood onwards, your heir and helpers must never be more than one hour late to work or school. Similarly, they may not make use of the leave early function. A five-strike allowance is provided for accidental lateness (like if you queue up actions and don\'t notice that they didn\'t leave for work), but intentional lateness for playing strategy or the fifth lateness will result in a loss of the challenge. This restriction also applies to the heir\'s children and any spouses or helpers moved in later. Perfect attendance also applies to the use of vacation days, either while on vacation or for family leave. ', ''),
(8, 'Fixer Upper ', 'May not call the handyman or purchase new objects if they break this generation. You must fix them. I don\'t care if you have no handiness skill, if you want to shower today you\'ll get to work, won\'t you?', ''),
(9, 'Half-Siblings', 'Sims born this generation must each be with a different partner. Re-roll if you\'re only having one kid. ', ''),
(10, 'Fighter ', 'The heir, spouse or a helper (pick one and stick with it) must get in a fight at least once a week. ', ''),
(11, 'Joker ', 'Free re-roll of one category, now or in a future generation. ', ''),
(12, 'Health Nut', 'The generation, sims may only eat healthy food. Healthy food includes orange juice (quick meal), yoghurt (quick meal), garden salad (cooking 1), wellness food, plasma fruit recipes, and your neighbors. In addition, the heir, spouse, helpers and their children must each spend at least 3 hours each week performing physical activity, such as jogging, swimming, yoga, or playing on the monkey bars. Add: Walk the dog to physical activities. ', ''),
(13, 'Gourmet', 'Once every week, the entire family (heir spouse and children) must find the time to sit down all at once and enjoy a gourmet meal prepared especially for the occasion. It doesn\'t matter whether the heir or the spouse prepares the meal, but it must be from the gourmet cooking skill, not the regular cooking skill. Add: If you have Parenthood, have a child set the table as well. ', ''),
(14, 'Hands Off!', 'You may not use the hand of god to clean up books and so on. Sims must clean up on their own. Selling things from inventory is okay. ', ''),
(15, 'Hobbyist ', 'You heir and spouse (if applicable) must each pick a hobby activity (such as painting, playing chess, jogging, fishing etc) that is unrelated to their rolled career and devote at least 3 hours every sim week to practicing that activity. They may not use the activity to make money. ', ''),
(16, 'My Precious', 'When your sims finds something they like, it is hard for the to let it go. Pick one of the options below to build a collection over the course of your heirs lifetime. The collection must be displayed somewhere on the legacy lot, so it may not be kept in an inventory, until the generation is complete. I finds it, it is mine - At least once a week, your sim must go out and find a unique object to add to their collection (pick a single category: frogs, MySims trophies, metals, crystals, elements, fossils, aliens, space rocks or fish.  If you have found on of every item and the generation is not complete yet, pick a new collection to begin. So bright, so beautiful, my precious - Once a week, you sim must purchase something beautiful and shiny from the decorations tab in buy mode. This should be something that exists only to look awesome and should be displayed all together or as trophy centerpieces in each room or something, not decor that blends in such as toilet paper rolls in the bathroom or a pan rack in the kitchen. If your sim is insane and decides to build a bathroom shrine in their living room, that is totally legit, but it should be done to add to the story, not just because you could not be bothered to find a better idea that buying misc decorations for you bathrooms to fulfill this fun.', ''),
(17, 'Vacationer', 'At least one sim from the household must go on vacation at least once every sim week. If you do not have the OR game pack, use the following alternative rule since that sim can not go on an actual vacation. They must use at least one vacation day from work and must have a day outing of some sort, lasting for most of the day, on their day off. You know the kind you\'d take in real life, leaving after breakfast and arriving back home in the evening. This does not have to be the same sim every week. ', ''),
(18, 'Clubber', 'Staring from childhood or the time they join the household, the heir, and every spouse and helper must belong to a club, attending a meeting at least once a week. They do not have to belong to the same club, though they can if you want. If you choose to use a household club, please keep in mind the rules about how to avoid making clubs cheaty, specifically the ones prohibiting having a constant club gathering running at all times. They must actually get together in a group and do a thing in order to have a club gathering, you can not just run a gathering while they are all sleeping or doing random tasks around the house. ', 'Get Together'),
(19, 'On Call', 'Staring when the heir is a teen, they (or a spouse or helper) must respond to at least one hang out phone call every week. This includes birthday parties and invitations to community lots, but it does not include requests to come hang out at your home lot - you must actually leave your home lot for this to count. ', ''),
(20, 'Town Explorer', 'Starting when the heir is a teen, they (or a spouse or helper) must visit a unique community lot every week, for at least 3 hours. The community lots may not be repeated to count for this, though you may visit them again just for fun. ', ''),
(21, 'Regular Diner', 'Once a week, the entire household must go out to eat at a restaurant. All three courses and something to drink should be ordered. ', 'Dine Out'),
(22, 'Festival Frequenter ', 'Every time there is a festival, at least one household member must attend the festival for at least one sim hour. This doesn\'t have to be the same household member each time. ', 'City Living'),
(23, 'Flea Market Fanatic', 'Some sims just can\'t pass up a great bargain. Why would you pay full price for anything? This generation, you may not purchase certain categories of items from the catalog. These items may only be purchased at the flea market or from unplayable sims selling their goods on the street. Paintings left on public easels count. The categories are Comfort except beds, Lighting, and Decorations except mirrors', 'City Living'),
(24, 'Sibling Rivalry', 'Whenever the parents aren\'t within earshot the siblings can only interact using mean or mischievous interactions until one of them ages to young adult and they patch things up. ', ''),
(25, 'Rainbow Brite', 'This generation heir\'s taste drastically changed! Using the design tool in build/buy mode change every item possible to the rolled color. For extra torture/fun, dress the entire family in the chosen color as well. ', ''),
(26, 'Exchange Student ', 'When one of the children is a teenager they are invitet to participate in an exchange program. Pick any other household in the save that has another teenager and swap them in manage worlds. Befriend he exchange student. You can have them stay for only a few days, or as long as a week. After they have left, invite them to visit once a week and remain friends with at least one family member. ', ''),
(27, 'Foster Pets', 'From the start of this generation to the time the next generations heir takes over you must have a pet in the house that you are actively training daily to encourage someone to adopt it. Once the pet has trained away 3 misbehaviours, like drinking or rolling in pee puddles and has learned some tricks, if it is a dog, you will choose a family to adopt them via manage worlds. If you do not have room for a pet, see the rule regarding pets. ', 'Cats & Dogs'),
(28, 'Cultured', 'All family members should max the Selvadoradian culture skill, visit at least twice during this generation to immerse themselves. Optional: Complete the relics collection. ', 'Jungle Adventures');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `careers`
--
ALTER TABLE `careers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gengoals`
--
ALTER TABLE `gengoals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `maritalstatus`
--
ALTER TABLE `maritalstatus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `midlifecrisis`
--
ALTER TABLE `midlifecrisis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `misc`
--
ALTER TABLE `misc`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `careers`
--
ALTER TABLE `careers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `gengoals`
--
ALTER TABLE `gengoals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `maritalstatus`
--
ALTER TABLE `maritalstatus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `midlifecrisis`
--
ALTER TABLE `midlifecrisis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `misc`
--
ALTER TABLE `misc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
