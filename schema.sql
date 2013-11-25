/* Here's what I'm thinking, Each person just use 1-5 for the genre id,
100-999 for album and artist id's, and 1000-9999 for song title.
I'll tell you your numbers in the following format:
Name (genreID, albumID range, artistID range, songID range)
Chase (1, 100-280, 100-280, 1000-2800)
Josh (2, 281-460, 281-460, 2801-4600)
Patrick (3, 461-640, 461-640, 4601-6400)
John (4, 641-820, 641-820, 6401-8200)
Jordan (5, 821-999, 821-999, 8201-9999)

Don't think we have to complicate the album table by throwing in a 
list of songs, we can get the songs by doing a select by album id 
in the song table. Just my thoughts, feel free to make any necessary 
changes (or just changes for general improvement).

The schema can be found below, please add your inserts to the 
appropriate sections.

### Edited by Jordan on 11/23/2013 @ 6pm: 
I added the trackID to Song so that we can more easily 
list the track numbers when we display an album
------------------------------------------------------------------------------------------------*/


DROP TABLE IF EXISTS Album;
CREATE TABLE Album (
  id INT PRIMARY KEY,
  name VARCHAR(255),
  artistID INT,
  genreID INT,
  releaseYear INT
);

DROP TABLE IF EXISTS Song;
CREATE TABLE Song(
  id INT PRIMARY KEY,
  title VARCHAR(255),
  artistID INT,
  genreID INT,
  albumID INT,
  releaseYear INT,
  trackNum INT
);

DROP TABLE IF EXISTS Artist;
CREATE TABLE Artist(
  id INT PRIMARY KEY,
  name VARCHAR(255)
);

DROP TABLE IF EXISTS Genre;
CREATE TABLE Genre(
  id INT PRIMARY KEY,
  type VARCHAR(50)
);

/* Genre 1: Rock */

INSERT INTO Genre VALUES(1, "Rock");

#############  Artists  #############
INSERT INTO Artist VALUES(100, "Imagine Dragons");
INSERT INTO Artist VALUES(105, "Arcade Fire");
INSERT INTO Artist VALUES(110, "Beatles");
INSERT INTO Artist VALUES(115, "Lorde");
INSERT INTO Artist VALUES(120, "The Killers");
INSERT INTO Artist VALUES(125, "Pearl Jam");
INSERT INTO Artist VALUES(130, "Passenger");
INSERT INTO Artist VALUES(135, "Avenged Sevenfold");
INSERT INTO Artist VALUES(140, "Lana Del Rey");
INSERT INTO Artist VALUES(145, "Linkin Park");

#############  Albums  #############
INSERT INTO Album VALUES(100, "Night Visions", 100, 1, 2012);
INSERT INTO Album VALUES(105, "Reflektor", 105, 1, 2013);
INSERT INTO Album VALUES(110, "On Air: Live At The BBC Volume 2", 110, 1, 2013);
INSERT INTO Album VALUES(115, "Pure Heroine", 115, 1, 2013);
INSERT INTO Album VALUES(120, "Direct Hits (Deluxe)", 120, 1, 2013);
INSERT INTO Album VALUES(125, "Lighting Bolt", 125, 1, 2013);
INSERT INTO Album VALUES(130, "All the Little Lights", 130, 1, 2012);
INSERT INTO Album VALUES(135, "Hail to the King", 135, 1, 2013);
INSERT INTO Album VALUES(140, "Born to Die", 140, 1, 2012);
INSERT INTO Album VALUES(145, "Recharged", 145, 1, 2013);

#############  Songs  #############
INSERT INTO Song VALUES(1000, "Radioactive", 100, 1, 100, 2012);
INSERT INTO Song VALUES(1001, "Tiptoe", 100, 1, 100, 2012);
INSERT INTO Song VALUES(1002, "It’s Time", 100, 1, 100, 2012);
INSERT INTO Song VALUES(1003, "Demons", 100, 1, 100, 2012);
INSERT INTO Song VALUES(1004, "On Top of the World", 100, 1, 100, 2012);
INSERT INTO Song VALUES(1005, "Amsterdam", 100, 1, 100, 2012);
INSERT INTO Song VALUES(1006, "Hear Me", 100, 1, 100, 2012);
INSERT INTO Song VALUES(1007, "Every Night" 100, 1, 100, 2012);
INSERT INTO Song VALUES(1008, "Bleeding Out", 100, 1, 100, 2012);
INSERT INTO Song VALUES(1009, "Underdog", 100, 1, 100, 2012);
INSERT INTO Song VALUES(1010, "Nothing Left to Say / Rocks", 100, 1, 100, 2012);
INSERT INTO Song VALUES(1011, "Working Man", 100, 1, 100, 2012);
INSERT INTO Song VALUES(1012, "Fallen", 100, 1, 100, 2012);

INSERT INTO Song VALUES(1013, "Reflektor", 105, 1, 105, 2013);
INSERT INTO Song VALUES(1014, "We Exist", 105, 1, 105, 2013);
INSERT INTO Song VALUES(1015, "Flashbulb Eyes", 105, 1, 105, 2013);
INSERT INTO Song VALUES(1016, "Here Comes The Night Time", 105, 1, 105, 2013);
INSERT INTO Song VALUES(1017, "Normal Person", 105, 1, 105, 2013);
INSERT INTO Song VALUES(1018, "You Already Know", 105, 1, 105, 2013);
INSERT INTO Song VALUES(1019, "Joan Of Arc", 105, 1, 105, 2013);
INSERT INTO Song VALUES(1020, "Here Comes The Night Time II", 105, 1, 105, 2013);
INSERT INTO Song VALUES(1021, "Awful Sound (Oh Eurydice)", 105, 1, 105, 2013);
INSERT INTO Song VALUES(1022, "It’s Never Over (Oh Orpheus)", 105, 1, 105, 2013);
INSERT INTO Song VALUES(1023, "Porno", 105, 1, 105, 2013);
INSERT INTO Song VALUES(1024, "Afterlife", 105, 1, 105, 2013);
INSERT INTO Song VALUES(1025, "Supersymmetry", 105, 1, 105, 2013);

INSERT INTO Song VALUES(1026, "And Here We Go Again (Spoken Word)", 110, 1, 110, 1963);
INSERT INTO Song VALUES(1027, "Words of Love", 110, 1, 110, 1963);
INSERT INTO Song VALUES(1028, "How About It, Gorgeous? (Spoken Word)", 110, 1, 110, 1963);
INSERT INTO Song VALUES(1029, "Do You Want to Know a Secret", 110, 1, 110, 1963);
INSERT INTO Song VALUES(1030, "Lucille", 110, 1, 110, 1963);
INSERT INTO Song VALUES(1031, "Hey, Paul… (spoken Word)", 110, 1, 110, 1963);
INSERT INTO Song VALUES(1032, "Anna (Go to Him)", 110, 1, 110, 1963);
INSERT INTO Song VALUES(1033, "Hello! (Spoken Word)", 110, 1, 110, 1963);
INSERT INTO Song VALUES(1034, "Please Please Me", 110, 1, 110, 1963);
INSERT INTO Song VALUES(1035, "Misery", 110, 1, 110, 1963);
INSERT INTO Song VALUES(1036, "I’m Talking About You", 110, 1, 110, 1963);
INSERT INTO Song VALUES(1037, "A Real Treat (Spoken Word)", 110, 1, 110, 1963);
INSERT INTO Song VALUES(1038, "Boys", 110, 1, 110, 1963);
INSERT INTO Song VALUES(1039, "Absolutely Fab (Spoken Word)", 110, 1, 110, 1963);
INSERT INTO Song VALUES(1040, "Chains", 110, 1, 110, 1963);
INSERT INTO Song VALUES(1041, "Ask Me Why", 110, 1, 110, 1963);
INSERT INTO Song VALUES(1042, "Till There Was You", 110, 1, 110, 1963);
INSERT INTO Song VALUES(1043, "Lend ME Your Comb", 110, 1, 110, 1963);
INSERT INTO Song VALUES(1044, "Lower 5E (Spoken Word)", 110, 1, 110, 1963);
INSERT INTO Song VALUES(1045, "The Hippy Hippy Shake", 110, 1, 110, 1963);
INSERT INTO Song VALUES(1046, "Roll Over Beethoven", 110, 1, 110, 1963);
INSERT INTO Song VALUES(1047, "There;s a Place", 110, 1, 110, 1963);
INSERT INTO Song VALUES(1048, "Bumper Bundle (Spoken Word)", 110, 1, 110, 1963);
INSERT INTO Song VALUES(1049, "P.S. I Love You", 110, 1, 110, 1963);
INSERT INTO Song VALUES(1050, "Please Mister Postman", 110, 1, 110, 1963);
INSERT INTO Song VALUES(1051, "Beautiful Dreamer", 110, 1, 110, 1963);
INSERT INTO Song VALUES(1052, "Devil In Her Heart", 110, 1, 110, 1963);
INSERT INTO Song VALUES(1053, "The 49 Weeks (Spoken Word)", 110, 1, 110, 1963);
INSERT INTO Song VALUES(1054, "Sure to Fall (In Love With You)", 110, 1, 110, 1963);
INSERT INTO Song VALUES(1055, "Never Mind, Eh? (Spoken Word)", 110, 1, 110, 1963);
INSERT INTO Song VALUES(1056, "Twist and Shout", 110, 1, 110, 1963);
INSERT INTO Song VALUES(1057, "Bye, Bye (Spoken Word)", 110, 1, 110, 1963);
INSERT INTO Song VALUES(1058, "John - Pop Profile", 110, 1, 110, 1965);
INSERT INTO Song VALUES(1059, "George - Pop Profile", 110, 1, 110, 1965);
INSERT INTO Song VALUES(1060, "I Saw Her Standing There", 110, 1, 110, 1963);
INSERT INTO Song VALUES(1061, "Glad All Over", 110, 1, 110, 1963);
INSERT INTO Song VALUES(1062, "Lift Lid Again (Spoken Word)", 110, 1, 110, 1963);
INSERT INTO Song VALUES(1063, "I’ll Get You", 110, 1, 110, 1963);
INSERT INTO Song VALUES(1064, "She Loves You", 110, 1, 110, 1963);
INSERT INTO Song VALUES(1065, "Memphis, Tennessee", 110, 1, 110, 1963);
INSERT INTO Song VALUES(1066, "Happy Birthday Dear Saturday Club", 110, 1, 110, 1963);
INSERT INTO Song VALUES(1067, "Now Hush, Hush (Spoken Word)", 110, 1, 110, 1963);
INSERT INTO Song VALUES(1068, "From Me to You", 110, 1, 110, 1963);
INSERT INTO Song VALUES(1069, "Money (That’s What I Want)", 110, 1, 110, 1963);
INSERT INTO Song VALUES(1070, "I Want to Hold Your Hand", 110, 1, 110, 1963);
INSERT INTO Song VALUES(1071, "Brain Bathtubs (Spoken Word)", 110, 1, 110, 1963);
INSERT INTO Song VALUES(1072, "This Boy", 110, 1, 110, 1963);
INSERT INTO Song VALUES(1073, "If I Wasn’t In America (Spoken Word)", 110, 1, 110, 1964);
INSERT INTO Song VALUES(1074, "I Got a Woman", 110, 1, 110, 1964);
INSERT INTO Song VALUES(1075, "Long Tall Sally", 110, 1, 110, 1964);
INSERT INTO Song VALUES(1076, "If I Fell", 110, 1, 110, 1964);
INSERT INTO Song VALUES(1077, "A Hard Job Writing Them (Spoken Word)", 110, 1, 110, 1964);
INSERT INTO Song VALUES(1078, "And I Love Her", 110, 1, 110, 1964);
INSERT INTO Song VALUES(1079, "Oh, Can’t We? Yes We Can (Spoken Word)", 110, 1, 110, 1964);
INSERT INTO Song VALUES(1080, "Honey Don’t", 110, 1, 110, 1964);
INSERT INTO Song VALUES(1081, "I’ll Follow The Sun", 110, 1, 110, 1964);
INSERT INTO Song VALUES(1082, "Green With Black Shutters (Spoken Word)", 110, 1, 110, 1964);
INSERT INTO Song VALUES(1083, "Kansas City / Hey-Hey-Hey-Hey!", 110, 1, 110, 1964);
INSERT INTO Song VALUES(1084, "That’s What We’re Here For (Spoken Word)", 110, 1, 110, 1964);
INSERT INTO Song VALUES(1085, "I Feel Fine (Studio Outtake)", 110, 1, 110, 1964);
INSERT INTO Song VALUES(1086, "Paul - Pop Profile", 110, 1, 110, 1966);
INSERT INTO Song VALUES(1087, "Ringo - Pop Profile", 110, 1, 110, 1966);

INSERT INTO Song VALUES(1088, "Tennis Court", 115, 1, 115, 2013);
INSERT INTO Song VALUES(1089, "400 Lux", 115, 1, 115, 2013);
INSERT INTO Song VALUES(1090, "Royals", 115, 1, 115, 2013);
INSERT INTO Song VALUES(1091, "Ribs", 115, 1, 115, 2013);
INSERT INTO Song VALUES(1092, "Buzzcut Season", 115, 1, 115, 2013);
INSERT INTO Song VALUES(1093, "Team", 115, 1, 115, 2013);
INSERT INTO Song VALUES(1094, "Glory and Gore", 115, 1, 115, 2013);
INSERT INTO Song VALUES(1095, "Still Sane", 115, 1, 115, 2013);
INSERT INTO Song VALUES(1096, "White Teeth Teens", 115, 1, 115, 2013);
INSERT INTO Song VALUES(1097, "A World Alone", 115, 1, 115, 2013);

INSERT INTO Song VALUES(1098, "Mr.Brightside", 120, 1, 120, 2013);
INSERT INTO Song VALUES(1099, "Somebody Told Me", 120, 1, 120, 2013);
INSERT INTO Song VALUES(1100, "Smile Like You Mean It", 120, 1, 120, 2013);
INSERT INTO Song VALUES(1101, "All These Things That I’ve Done", 120, 1, 120, 2013);
INSERT INTO Song VALUES(1102, "When You Were Young", 120, 1, 120, 2013);
INSERT INTO Song VALUES(1103, "Read My Mind", 120, 1, 120, 2013);
INSERT INTO Song VALUES(1104, "For Reasons Unknown", 120, 1, 120, 2013);
INSERT INTO Song VALUES(1105, "Human", 120, 1, 120, 2013);
INSERT INTO Song VALUES(1106, "Spaceman", 120, 1, 120, 2013);
INSERT INTO Song VALUES(1107, "A Dustland Fairytale", 120, 1, 120, 2013);
INSERT INTO Song VALUES(1108, "Runaways", 120, 1, 120, 2013);
INSERT INTO Song VALUES(1109, "Miss Atomic Bomb", 120, 1, 120, 2013);
INSERT INTO Song VALUES(1110, "The Way It Was", 120, 1, 120, 2013);
INSERT INTO Song VALUES(1111, "Shot At the Night", 120, 1, 120, 2013);
INSERT INTO Song VALUES(1112, "Just Another Girl", 120, 1, 120, 2013);
INSERT INTO Song VALUES(1113, "Mr. Brightside (Demo)", 120, 1, 120, 2013);
INSERT INTO Song VALUES(1114, "When You Were Young (Calvin Harris Remix)", 120, 1, 120, 2013);
INSERT INTO Song VALUES(1115, "Be Still", 120, 1, 120, 2013);

INSERT INTO Song VALUES(1116, "Getaway", 125, 1, 125, 2013);
INSERT INTO Song VALUES(1117, "Mind Your Manners", 125, 1, 125, 2013);
INSERT INTO Song VALUES(1118, "My Father’s Son", 125, 1, 125, 2013);
INSERT INTO Song VALUES(1119, "Sirens", 125, 1, 125, 2013);
INSERT INTO Song VALUES(1120, "Lighting Bolt", 125, 1, 125, 2013);
INSERT INTO Song VALUES(1121, "Infallible", 125, 1, 125, 2013);
INSERT INTO Song VALUES(1122, "Pendulum", 125, 1, 125, 2013);
INSERT INTO Song VALUES(1123, "Swallowed Whole", 125, 1, 125, 2013);
INSERT INTO Song VALUES(1124, "Let the Records Play", 125, 1, 125, 2013);
INSERT INTO Song VALUES(1125, "Sleeping By Myself", 125, 1, 125, 2013);
INSERT INTO Song VALUES(1126, "Yellow Moon", 125, 1, 125, 2013);
INSERT INTO Song VALUES(1127, "Future Days", 125, 1, 125, 2013);

INSERT INTO Song VALUES(1128, "Things That Stop You Dreaming", 130, 1, 130, 2012);
INSERT INTO Song VALUES(1129, "Let Her Go", 130, 1, 130, 2012);
INSERT INTO Song VALUES(1130, "Staring At the Stars", 130, 1, 130, 2012);
INSERT INTO Song VALUES(1131, "All the Little Lights", 130, 1, 130, 2012);
INSERT INTO Song VALUES(1132, "The Wrong Direction", 130, 1, 130, 2012);
INSERT INTO Song VALUES(1133, "Circles", 130, 1, 130, 2012);
INSERT INTO Song VALUES(1134, "Keep On Walking", 130, 1, 130, 2012);
INSERT INTO Song VALUES(1135, "Patient Love", 130, 1, 130, 2012);
INSERT INTO Song VALUES(1136, "Life’s for the Living", 130, 1, 130, 2012);
INSERT INTO Song VALUES(1137, "Holes", 130, 1, 130, 2012);
INSERT INTO Song VALUES(1138, "Feather On the Clyde", 130, 1, 130, 2012);
INSERT INTO Song VALUES(1139, "I Hate (Live From the Borderline, London)", 130, 1, 130, 2012);
INSERT INTO Song VALUES(1140, "Keep On Walking (Acoustic)", 130, 1, 130, 2012);
INSERT INTO Song VALUES(1141, "Patient Love (Acoustic)", 130, 1, 130, 2012);
INSERT INTO Song VALUES(1142, "Staring At the Stars (Acoustic)", 130, 1, 130, 2012);
INSERT INTO Song VALUES(1143, "Circles (Acoustic)", 130, 1, 130, 2012);
INSERT INTO Song VALUES(1144, "Let Her Go (Acoustic)", 130, 1, 130, 2012);

INSERT INTO Song VALUES(1145, "Shepherd of Fire", 135, 1, 135, 2013);
INSERT INTO Song VALUES(1146, "Hail to the King", 135, 1, 135, 2013);
INSERT INTO Song VALUES(1147, "Doing Time", 135, 1, 135, 2013);
INSERT INTO Song VALUES(1148, "This Means War", 135, 1, 135, 2013);
INSERT INTO Song VALUES(1149, "Requiem", 135, 1, 135, 2013);
INSERT INTO Song VALUES(1150, "Crimson Day", 135, 1, 135, 2013);
INSERT INTO Song VALUES(1151, "Heretic", 135, 1, 135, 2013);
INSERT INTO Song VALUES(1152, "Coming Home", 135, 1, 135, 2013);
INSERT INTO Song VALUES(1153, "Planets", 135, 1, 135, 2013);
INSERT INTO Song VALUES(1154, "Acid Rain", 135, 1, 135, 2013);
INSERT INTO Song VALUES(1155, "St. James (Bonus Track)", 135, 1, 135, 2013);

INSERT INTO Song VALUES(1156, "Born to Die", 140, 1, 140, 2012);
INSERT INTO Song VALUES(1157, "Off to the Races", 140, 1, 140, 2012);
INSERT INTO Song VALUES(1158, "Blue Jeans", 140, 1, 140, 2012);
INSERT INTO Song VALUES(1159, "Video Games", 140, 1, 140, 2012);
INSERT INTO Song VALUES(1160, "Diet Mountain Dew", 140, 1, 140, 2012);
INSERT INTO Song VALUES(1161, "National Anthem", 140, 1, 140, 2012);
INSERT INTO Song VALUES(1162, "Dark Paradise", 140, 1, 140, 2012);
INSERT INTO Song VALUES(1163, "Radio", 140, 1, 140, 2012);
INSERT INTO Song VALUES(1164, "Carmen", 140, 1, 140, 2012);
INSERT INTO Song VALUES(1165, "Million Dollar Man", 140, 1, 140, 2012);
INSERT INTO Song VALUES(1166, "Summertime Sadness", 140, 1, 140, 2012);
INSERT INTO Song VALUES(1167, "This Is What Makes Us Girls", 140, 1, 140, 2012);
INSERT INTO Song VALUES(1168, "Video Games (Joy Orbison Remix) [Bonus Track]", 140, 1, 140, 2012);

INSERT INTO Song VALUES(1169, "A Light That Never Comes", 145, 1, 145, 2013);
INSERT INTO Song VALUES(1170, "Castle of Glass (M. Shinoda Remix)", 145, 1, 145, 2013);
INSERT INTO Song VALUES(1171, "Lost In The Echo (Killsonik Remix)", 145, 1, 145, 2013);
INSERT INTO Song VALUES(1172, "Victimized (M. Shinoda Remix)", 145, 1, 145, 2013);
INSERT INTO Song VALUES(1173, "I’ll Be Gone (Vice Remix) [feat. Pusha T]", 145, 1, 145, 2013);
INSERT INTO Song VALUES(1174, "Lies Greed Misery (Dirtyphonics Remix)", 145, 1, 145, 2013);
INSERT INTO Song VALUES(1175, "Roads Untraveled (Rad Omen Remix)", 145, 1, 145, 2013);
INSERT INTO Song VALUES(1176, "Powerless (Enferno Remix)", 145, 1, 145, 2013);
INSERT INTO Song VALUES(1177, "Burn It Down (Tom Swoon Remix)", 145, 1, 145, 2013);
INSERT INTO Song VALUES(1178, "Until It Breaks (Datsik Remix)", 145, 1, 145, 2013);
INSERT INTO Song VALUES(1179, "Skin To Bone (Nick Catchdubs Remix) [feat. Cody B. Ware & Ryu]", 145, 1, 145, 2013);
INSERT INTO Song VALUES(1180, "I’ll Be Gone (Schoolboy Remix)", 145, 1, 145, 2013);
INSERT INTO Song VALUES(1181, "Until It Breaks (Money Mark Headphone Remix)", 145, 1, 145, 2013);
INSERT INTO Song VALUES(1182, "A Light That Never Comes (Rick Rubin Reboot)", 145, 1, 145, 2013);

/* Genre 2: Pop */

INSERT INTO Genre VALUES(2, "Pop");

#############  Artists  #############
INSERT INTO Artist VALUES(300, "Justin Timberlake");
INSERT INTO Artist VALUES(305, "OneRepublic");
INSERT INTO Artist VALUES(310, "Miley Cyrus");
INSERT INTO Artist VALUES(315, "Bruno Mars");
INSERT INTO Artist VALUES(325, "One Direction");
INSERT INTO Artist VALUES(330, "David Guetta");
INSERT INTO Artist VALUES(335, "Christina Aguilera");
INSERT INTO Artist VALUES(340, "Carly Rae Jepsen");
INSERT INTO Artist VALUES(345, "Taylor Swift");

#############  Albums  #############
INSERT INTO Album VALUES(300, "The 20/20 Experience", 300, 2, 2013);
INSERT INTO Album VALUES(305, "Native", 305, 2, 2013);
INSERT INTO Album VALUES(310, "Bangerz", 310, 2, 2013);
INSERT INTO Album VALUES(315, "Unorthodox Jukebox", 315, 2, 2012);
INSERT INTO Album VALUES(320, "Doo-Wops & Hooligans", 315, 2, 2010);
INSERT INTO Album VALUES(325, "Take Me Home", 325, 2, 2012);
INSERT INTO Album VALUES(330, "Nothing but the Beat", 330, 2, 2011);
INSERT INTO Album VALUES(335, "Lotus", 335, 2, 2012);
INSERT INTO Album VALUES(340, "Curiosity", 340, 2, 2012);
INSERT INTO Album VALUES(345, "Red", 345, 2, 2012);

#############  Songs  #############
INSERT INTO Song VALUES(2801, "Pusher Love Girl", 300, 2, 300, 2013, 1);
INSERT INTO Song VALUES(2802, "Suit & Tie feat. Jay-Z", 300, 2, 300, 2013, 2);
INSERT INTO Song VALUES(2803, "Don't Hold the Wall", 300, 2, 300, 2013, 3);
INSERT INTO Song VALUES(2804, "Strawberry Bubblegum", 300, 2, 300, 2013, 4);
INSERT INTO Song VALUES(2805, "Tunnel Vision", 300, 2, 300, 2013, 5);
INSERT INTO Song VALUES(2806, "Spaceship Coup", 300, 2, 300, 2013, 6);
INSERT INTO Song VALUES(2807, "That Girl", 300, 2, 300, 2013, 7);
INSERT INTO Song VALUES(2808, "Let the Groove Get In", 300, 2, 300, 2013, 8);
INSERT INTO Song VALUES(2809, "Mirrors", 300, 2, 300, 2013, 9);
INSERT INTO Song VALUES(2810, "Blue Ocean Roar", 300, 2, 300, 2013, 10);

INSERT INTO Song VALUES(2901, "Counting Stars", 305, 2, 305, 2013, 1);
INSERT INTO Song VALUES(2902, "If I Lose Myself", 305, 2, 305, 2013, 2);
INSERT INTO Song VALUES(2903, "Feel Again", 305, 2, 305, 2013, 3);
INSERT INTO Song VALUES(2904, "What You Wanted", 305, 2, 305, 2013, 4);
INSERT INTO Song VALUES(2905, "I Lived", 305, 2, 305, 2013, 5);
INSERT INTO Song VALUES(2906, "Light It Up", 305, 2, 305, 2013, 6);
INSERT INTO Song VALUES(2907, "Can’t Stop", 305, 2, 305, 2013, 7);
INSERT INTO Song VALUES(2908, "Au Revoir", 305, 2, 305, 2013, 8);
INSERT INTO Song VALUES(2909, "Burning Bridges", 305, 2, 305, 2013, 9);
INSERT INTO Song VALUES(2910, "Something I Need", 305, 2, 305, 2013, 10);
INSERT INTO Song VALUES(2911, "Preacher", 305, 2, 305, 2013, 11);
INSERT INTO Song VALUES(2912, "Don’t Look Down", 305, 2, 305, 2013, 12);
INSERT INTO Song VALUES(2913, "Something’s Gotta Give", 305, 2, 305, 2013, 13);
INSERT INTO Song VALUES(2914, "Life In Color", 305, 2, 305, 2013, 14);

INSERT INTO Song VALUES(3001, "Adore You", 310, 2, 310, 2013, 1);
INSERT INTO Song VALUES(3002, "We Can’t Stop", 310, 2, 310, 2013, 2);
INSERT INTO Song VALUES(3003, "SMS (Bangerz)", 310, 2, 310, 2013, 3);
INSERT INTO Song VALUES(3004, "4x4", 310, 2, 310, 2013, 4);
INSERT INTO Song VALUES(3005, "My Darlin", 310, 2, 310, 2013, 5);
INSERT INTO Song VALUES(3006, "Wrecking Ball", 310, 2, 310, 2013, 6);
INSERT INTO Song VALUES(3007, "Love Money Party", 310, 2, 310, 2013, 7);
INSERT INTO Song VALUES(3008, "#GETITRIGHT", 310, 2, 310, 2013, 8);
INSERT INTO Song VALUES(3009, "Drive", 310, 2, 310, 2013, 9);
INSERT INTO Song VALUES(3010, "FU", 310, 2, 310, 2013, 10);
INSERT INTO Song VALUES(3011, "Do My Thang", 310, 2, 310, 2013, 11);
INSERT INTO Song VALUES(3012, "Maybe You’re Right", 310, 2, 310, 2013, 12);
INSERT INTO Song VALUES(3013, "Someone Else", 310, 2, 310, 2013, 13);

INSERT INTO Song VALUES(3101, "Young Girls", 315, 2, 315, 2012, 1);
INSERT INTO Song VALUES(3102, "Locked Out of Heaven", 315, 2, 315, 2012, 2);
INSERT INTO Song VALUES(3103, "Gorilla", 315, 2, 315, 2012, 3);
INSERT INTO Song VALUES(3104, "Treasure", 315, 2, 315, 2012, 4);
INSERT INTO Song VALUES(3105, "Moonshine", 315, 2, 315, 2012, 5);
INSERT INTO Song VALUES(3106, "When I Was Man", 315, 2, 315, 2012, 6);
INSERT INTO Song VALUES(3107, "Natalie", 315, 2, 315, 2012, 7);
INSERT INTO Song VALUES(3108, "Show Me", 315, 2, 315, 2012, 8);
INSERT INTO Song VALUES(3109, "Money Make Her Smile", 315, 2, 315, 2012, 9);
INSERT INTO Song VALUES(3110, "If I Knew", 315, 2, 315, 2012, 10);
INSERT INTO Song VALUES(3121, "Grenade", 315, 2, 320, 2010, 11);
INSERT INTO Song VALUES(3122, "Just the Way You Are", 315, 2, 320, 2010, 12);
INSERT INTO Song VALUES(3123, "Our First Time", 315, 2, 320, 2010, 13);
INSERT INTO Song VALUES(3124, "Runaway Baby", 315, 2, 320, 2010, 14);
INSERT INTO Song VALUES(3125, "The Lazy Song", 315, 2, 320, 2010, 15);
INSERT INTO Song VALUES(3126, "Marry You", 315, 2, 320, 2010, 16);
INSERT INTO Song VALUES(3127, "Talking to the Moon", 315, 2, 320, 2010, 17);
INSERT INTO Song VALUES(3128, "Liquor Store Blues", 315, 2, 320, 2010, 18);
INSERT INTO Song VALUES(3129, "Count On Me", 315, 2, 320, 2010, 19);
INSERT INTO Song VALUES(3130, "The Other Side", 315, 2, 320, 2010, 20);
INSERT INTO Song VALUES(3131, "Just the Way You Are (remix)", 315, 2, 320, 2010, 21);
INSERT INTO Song VALUES(3132, "Somewhere in Brooklyn", 315, 2, 320, 2010, 22);

INSERT INTO Song VALUES(3201, "Live While We’re Young", 325, 2, 325, 2012, 1);
INSERT INTO Song VALUES(3202, "Kiss You", 325, 2, 325, 2012, 2);
INSERT INTO Song VALUES(3203, "Little Things", 325, 2, 325, 2012, 3);
INSERT INTO Song VALUES(3204, "C’Mon, C’Mon", 325, 2, 325, 2012, 4);
INSERT INTO Song VALUES(3205, "Last First Kiss", 325, 2, 325, 2012, 5);
INSERT INTO Song VALUES(3206, "Heart Attack", 325, 2, 325, 2012, 6);
INSERT INTO Song VALUES(3207, "Rock Me", 325, 2, 325, 2012, 7);
INSERT INTO Song VALUES(3208, "Change My Mind", 325, 2, 325, 2012, 8);
INSERT INTO Song VALUES(3209, "I Would", 325, 2, 325, 2012, 9);
INSERT INTO Song VALUES(3210, "Over Again", 325, 2, 325, 2012, 10);
INSERT INTO Song VALUES(3211, "Back for You", 325, 2, 325, 2012, 11);
INSERT INTO Song VALUES(3212, "They Don’t Know About Us", 325, 2, 325, 2012, 12);
INSERT INTO Song VALUES(3213, "Summer Love", 325, 2, 325, 2012, 13);
INSERT INTO Song VALUES(3214, "Truly, Madly, Deeply", 325, 2, 325, 2012, 14);
INSERT INTO Song VALUES(3215, "Magic", 325, 2, 325, 2012, 15);
INSERT INTO Song VALUES(3216, "Irresistible", 325, 2, 325, 2012, 16);
INSERT INTO Song VALUES(3217, "One Thing (live)", 325, 2, 325, 2012, 17);
INSERT INTO Song VALUES(3218, "I Wish (live)", 325, 2, 325, 2012, 18);

INSERT INTO Song VALUES(3301, "Where Them Girls At", 330, 2, 330, 2011, 1);
INSERT INTO Song VALUES(3302, "Little Bad Girl", 330, 2, 330, 2011, 2);
INSERT INTO Song VALUES(3303, "Turn Me On", 330, 2, 330, 2011, 3);
INSERT INTO Song VALUES(3304, "Sweat (remix)", 330, 2, 330, 2011, 4);
INSERT INTO Song VALUES(3305, "Without U", 330, 2, 330, 2011, 5);
INSERT INTO Song VALUES(3306, "Nothing Really Matters", 330, 2, 330, 2011, 6);
INSERT INTO Song VALUES(3307, "I Can Only Imagine", 330, 2, 330, 2011, 7);
INSERT INTO Song VALUES(3308, "Crank It Up", 330, 2, 330, 2011, 8);
INSERT INTO Song VALUES(3309, "I Just Wanna Fuck", 330, 2, 330, 2011, 9);
INSERT INTO Song VALUES(3310, "Night of Your Life", 330, 2, 330, 2011, 10);
INSERT INTO Song VALUES(3311, "Repeat", 330, 2, 330, 2011, 11);
INSERT INTO Song VALUES(3312, "Titanium", 330, 2, 330, 2011, 12);
INSERT INTO Song VALUES(3313, "The Alphabeat", 330, 2, 330, 2011, 13);
INSERT INTO Song VALUES(3314, "Lunar", 330, 2, 330, 2011, 14);
INSERT INTO Song VALUES(3315, "Sunshine", 330, 2, 330, 2011, 15);

INSERT INTO Song VALUES(3401, "Lotus Intro", 335, 2, 335, 2012, 1);
INSERT INTO Song VALUES(3402, "Army of Me", 335, 2, 335, 2012, 2);
INSERT INTO Song VALUES(3403, "Red Hot Kinda Love", 335, 2, 335, 2012, 3);
INSERT INTO Song VALUES(3404, "Make the World Move ", 335, 2, 335, 2012, 4);
INSERT INTO Song VALUES(3405, "Your Body", 335, 2, 335, 2012, 5);
INSERT INTO Song VALUES(3406, "Let There Be Love", 335, 2, 335, 2012, 6);
INSERT INTO Song VALUES(3407, "Sing for Me", 335, 2, 335, 2012, 7);
INSERT INTO Song VALUES(3408, "Blank Page", 335, 2, 335, 2012, 8);
INSERT INTO Song VALUES(3409, "Cease Fire", 335, 2, 335, 2012, 9);
INSERT INTO Song VALUES(3410, "Around the World", 335, 2, 335, 2012, 10);
INSERT INTO Song VALUES(3411, "Circles", 335, 2, 335, 2012, 11);
INSERT INTO Song VALUES(3412, "Best of Me", 335, 2, 335, 2012, 12);
INSERT INTO Song VALUES(3413, "Just a Fool", 335, 2, 335, 2012, 13);
INSERT INTO Song VALUES(3414, "Light Up the Sky", 335, 2, 335, 2012, 14);
INSERT INTO Song VALUES(3415, "Empty Words", 335, 2, 335, 2012, 15);
INSERT INTO Song VALUES(3416, "Shut Up", 335, 2, 335, 2012, 16);
INSERT INTO Song VALUES(3417, "Your Body (Martin Garrix remix", 335, 2, 335, 2012, 17);

INSERT INTO Song VALUES(3501, "Call Me Maybe", 340, 2, 340, 2012, 1);
INSERT INTO Song VALUES(3502, "Curiosity", 340, 2, 340, 2012, 2);
INSERT INTO Song VALUES(3503, "Picture", 340, 2, 340, 2012, 3);
INSERT INTO Song VALUES(3504, "Talk to Me", 340, 2, 340, 2012, 4);
INSERT INTO Song VALUES(3505, "Just a Step Away", 340, 2, 340, 2012, 5);
INSERT INTO Song VALUES(3506, "Both Sides Now", 340, 2, 340, 2012, 6);

INSERT INTO Song VALUES(3601, "State of Grace", 345, 2, 345, 2012, 1);
INSERT INTO Song VALUES(3602, "Red", 345, 2, 345, 2012, 2);
INSERT INTO Song VALUES(3603, "I Knew You Were Trouble", 345, 2, 345, 2012, 3);
INSERT INTO Song VALUES(3604, "All Too Well", 345, 2, 345, 2012, 4);
INSERT INTO Song VALUES(3605, "22", 345, 2, 345, 2012, 5);
INSERT INTO Song VALUES(3606, "I Almost Do", 345, 2, 345, 2012, 6);
INSERT INTO Song VALUES(3607, "We Are Never Ever Getting Back Together", 345, 2, 345, 2012, 7);
INSERT INTO Song VALUES(3608, "Stay Stay Stay", 345, 2, 345, 2012, 8);
INSERT INTO Song VALUES(3609, "The Last Time", 345, 2, 345, 2012, 9);
INSERT INTO Song VALUES(3610, "Holy Ground", 345, 2, 345, 2012, 10);
INSERT INTO Song VALUES(3611, "Sad Beautiful Tragic", 345, 2, 345, 2012, 11);
INSERT INTO Song VALUES(3612, "The Lucky One", 345, 2, 345, 2012, 12);
INSERT INTO Song VALUES(3613, "Everything Has Changed", 345, 2, 345, 2012, 13);
INSERT INTO Song VALUES(3614, "Starlight", 345, 2, 345, 2012, 14);
INSERT INTO Song VALUES(3615, "Begin Again", 345, 2, 345, 2012, 15);
INSERT INTO Song VALUES(3616, "The Moment I Knew", 345, 2, 345, 2012, 16);
INSERT INTO Song VALUES(3617, "Come Back… Be Here", 345, 2, 345, 2012, 17);
INSERT INTO Song VALUES(3618, "Girl at Home", 345, 2, 345, 2012, 18);
INSERT INTO Song VALUES(3619, "Treacherous", 345, 2, 345, 2012, 19);
INSERT INTO Song VALUES(3620, "Red (demo)", 345, 2, 345, 2012, 20);
INSERT INTO Song VALUES(3621, "State of Grace (acoustic version)", 345, 2, 345, 2012, 21);

/* Genre 3: Metal */

INSERT INTO Genre VALUES(3, "Metal");

#############  Artists  #############
INSERT INTO Artist VALUES(500, "Metallica");
INSERT INTO Artist VALUES(501, "Megadeth");
INSERT INTO Artist VALUES(502, "Trivium");
INSERT INTO Artist VALUES(503, "Mutiny Within");
INSERT INTO Artist VALUES(504, "Unearth");
INSERT INTO Artist VALUES(505, "Dream Theater");
INSERT INTO Artist VALUES(506, "Scale the Summit");
INSERT INTO Artist VALUES(507, "John Petrucci");

#############  Albums  #############
INSERT INTO Album VALUES(500, "Ride the Lightning", 500, 3, 1984);
INSERT INTO Album VALUES(501, "Master of Puppets", 500, 3, 1986);
INSERT INTO Album VALUES(510, "Peace Sells...But Who's Buying?", 501, 3, 1986);
INSERT INTO Album VALUES(520, "Shogun", 502, 3, 2008);
INSERT INTO Album VALUES(521, "In Waves", 502, 3, 2011);
INSERT INTO Album VALUES(530, "Mutiny Within", 503, 3, 2010);
INSERT INTO Album VALUES(540, "The Oncoming Storm", 504, 3, 2004);
INSERT INTO Album VALUES(550, "Black Clouds and Silver Linings", 505, 3, 2009);
Insert INTO Album VALUES(560, "The Migration", 506, 3, 2013);
INSERT INTO Album VALUES(570, "Suspended Animation", 507, 3, 2005);

#############  Songs  #############
INSERT INTO Song VALUES(5000, "Fight Fire With Fire", 500, 3, 500, 1984, 1);
INSERT INTO Song VALUES(5001, "Ride the Lightning", 500, 3, 500, 1984, 2);
INSERT INTO Song VALUES(5002, "For Whom the Bell Tolls", 500, 3, 500, 1984, 3);
INSERT INTO Song VALUES(5003, "Fade to Black", 500, 3, 500, 1984, 4);
INSERT INTO Song VALUES(5004, "Trapped Under Ice", 500, 3, 500, 1984, 5);
INSERT INTO Song VALUES(5005, "Escape", 500, 3, 500, 1984, 6);
INSERT INTO Song VALUES(5006, "Creeping Death", 500, 3, 500, 1984, 7);
INSERT INTO Song VALUES(5007, "Call of Ktulu", 500, 3, 500, 1984, 8);

INSERT INTO Song VALUES(5008, "Battery", 500, 3, 501, 1986, 1);
INSERT INTO Song VALUES(5009, "Master of Puppets", 500, 3, 501, 1986, 2);
INSERT INTO Song VALUES(5010, "The Thing That Should Not Be", 500, 3, 501, 1986, 3);
INSERT INTO Song VALUES(5011, "Welcome Home (Sanitarium)", 500, 3, 501, 1986, 4);
INSERT INTO Song VALUES(5012, "Disposable Heroes", 500, 3, 501, 1986, 5);
INSERT INTO Song VALUES(5013, "Leper Messiah", 500, 3, 501, 1986, 6);
INSERT INTO Song VALUES(5014, "Orion", 500, 3, 501, 1986, 7);
INSERT INTO Song VALUES(5015, "Damage, Inc.", 500, 3, 501, 1986, 8);

INSERT INTO Song VALUES(5016, "Wake Up Dead", 501, 3, 510, 1986, 1);
INSERT INTO Song VALUES(5017, "The Conjuring", 501, 3, 510, 1986, 2);
INSERT INTO Song VALUES(5018, "Peace Sells", 501, 3, 510, 1986, 3);
INSERT INTO Song VALUES(5019, "Devils Island", 501, 3, 510, 1986, 4);
INSERT INTO Song VALUES(5020, "Good Mourning/Black Friday", 501, 3, 510, 1986, 5);
INSERT INTO Song VALUES(5021, "Bad Omen", 501, 3, 510, 1986, 6);
INSERT INTO Song VALUES(5022, "I Ain't Superstitious", 501, 3, 510, 1986, 7);
INSERT INTO Song VALUES(5023, "My Last Words", 501, 3, 510, 1986, 8);

INSERT INTO Song VALUES(5024, "Kirisute Gomen", 502, 3, 520, 2008, 1);
INSERT INTO Song VALUES(5025, "Torn Between Scylla and Charybdis", 502, 3, 520, 2008, 2);
INSERT INTO Song VALUES(5026, "Down from the Sky", 502, 3, 520, 2008, 3);
INSERT INTO Song VALUES(5027, "Into the Mouth of Hell We March", 502, 3, 520, 2008, 4);
INSERT INTO Song VALUES(5028, "Throes of Perdition", 502, 3, 520, 2008, 5);
INSERT INTO Song VALUES(5029, "Insurrection", 502, 3, 520, 2008, 6);
INSERT INTO Song VALUES(5030, "The Calamity", 502, 3, 520, 2008, 7);
INSERT INTO Song VALUES(5031, "He Who Spawned the Furies", 502, 3, 520, 2008, 8);
INSERT INTO Song VALUES(5032, "Of Prometheus and the Crucifix", 502, 3, 520, 2008, 9);
INSERT INTO Song VALUES(5033, "Like Callisto to a Star in Heaven", 502, 3, 520, 2008, 10);
INSERT INTO Song VALUES(5034, "Shogun", 502, 3, 520, 2008, 11);

INSERT INTO Song VALUES(5035, "Capsizing the Seas", 502, 3, 521, 2011, 1);
INSERT INTO Song VALUES(5036, "In Waves", 502, 3, 521, 2011, 2);
INSERT INTO Song VALUES(5037, "Inception of the End", 502, 3, 521, 2011, 3);
INSERT INTO Song VALUES(5038, "Dusk Dismantled", 502, 3, 521, 2011, 4);
INSERT INTO Song VALUES(5039, "Watch the World Burn", 502, 3, 521, 2011, 5);
INSERT INTO Song VALUES(5040, "Black", 502, 3, 521, 2011, 6);
INSERT INTO Song VALUES(5041, "A Skyline's Severance", 502, 3, 521, 2011, 7);
INSERT INTO Song VALUES(5042, "Built to Fall", 502, 3, 521, 2011, 8);
INSERT INTO Song VALUES(5043, "Caustic Are the Ties That Bind", 502, 3, 521, 2011, 9);
INSERT INTO Song VALUES(5044, "Forsake Not the Dream", 502, 3, 521, 2011, 10);
INSERT INTO Song VALUES(5045, "Chaos Reigns", 502, 3, 521, 2011, 11);
INSERT INTO Song VALUES(5046, "Of All These Yesterdays", 502, 3, 521, 2011, 12);
INSERT INTO Song VALUES(5047, "Leaving This World Behind", 502, 3, 521, 2011, 13);

INSERT INTO Song VALUES(5048, "Awake", 503, 3, 530, 2010, 1);
INSERT INTO Song VALUES(5049, "Images", 503, 3, 530, 2010, 2);
INSERT INTO Song VALUES(5050, "Falling Forever", 503, 3, 530, 2010, 3);
INSERT INTO Song VALUES(5051, "Year of Affliction", 503, 3, 530, 2010, 4);
INSERT INTO Song VALUES(5052, "Forsaken", 503, 3, 530, 2010, 5);
INSERT INTO Song VALUES(5053, "Lethean", 503, 3, 530, 2010, 6);
INSERT INTO Song VALUES(5054, "Oblivion", 503, 3, 530, 2010, 7);
INSERT INTO Song VALUES(5055, "Undone", 503, 3, 530, 2010, 8);
INSERT INTO Song VALUES(5056, "Hours", 503, 3, 530, 2010, 9);
INSERT INTO Song VALUES(5057, "Suffocate", 503, 3, 530, 2010, 10);
INSERT INTO Song VALUES(5058, "Reflections", 503, 3, 530, 2010, 11);

INSERT INTO Song VALUES(5059, "The Great Dividers", 504, 3, 540, 2004, 1);
INSERT INTO Song VALUES(5060, "Failure", 504, 3, 540, 2004, 2);
INSERT INTO Song VALUES(5061, "This Lying World", 504, 3, 540, 2004, 3);
INSERT INTO Song VALUES(5062, "Black Hearts Now Reign", 504, 3, 540, 2004, 4);
INSERT INTO Song VALUES(5063, "Zombie Autopilot", 504, 3, 540, 2004, 5);
INSERT INTO Song VALUES(5064, "Bloodlust of the Human Condition", 504, 3, 540, 2004, 6);
INSERT INTO Song VALUES(5065, "Lie to Purify", 504, 3, 540, 2004, 7);
INSERT INTO Song VALUES(5066, "Endless", 504, 3, 540, 2004, 8);
INSERT INTO Song VALUES(5067, "Aries", 504, 3, 540, 2004, 9);
INSERT INTO Song VALUES(5068, "Predetermined Sky", 504, 3, 540, 2004, 10);

INSERT INTO Song VALUES(5069, "A Nightmare to Remember", 505, 3, 550, 2009, 1);
INSERT INTO Song VALUES(5070, "A Rite of Passage", 505, 3, 550, 2009, 2);
INSERT INTO Song VALUES(5071, "Wither", 505, 3, 550, 2009, 3);
INSERT INTO Song VALUES(5072, "The Shattered Fortress", 505, 3, 550, 2009, 4);
INSERT INTO Song VALUES(5073, "The Best of Times", 505, 3, 550, 2009, 5);
INSERT INTO Song VALUES(5074, "The Count of Tuscany", 505, 3, 550, 2009, 6);

INSERT INTO Song VALUES(5075, "Odyssey", 506, 3, 560, 2013, 1);
INSERT INTO Song VALUES(5076, "Atlus Novus", 506, 3, 560, 2013, 2);
INSERT INTO Song VALUES(5077, "The Olive Tree", 506, 3, 560, 2013, 3);
INSERT INTO Song VALUES(5078, "Narrow Salient", 506, 3, 560, 2013, 4);
INSERT INTO Song VALUES(5079, "Oracle", 506, 3, 560, 2013, 5);
INSERT INTO Song VALUES(5080, "Evergreen", 506, 3, 560, 2013, 6);
INSERT INTO Song VALUES(5081, "Odyssey", 506, 3, 560, 2013, 7);
INSERT INTO Song VALUES(5082, "Evergreen", 506, 3, 560, 2013, 8);
INSERT INTO Song VALUES(5083, "The Dark Horse", 506, 3, 560, 2013, 9);
INSERT INTO Song VALUES(5084, "Willow", 506, 3, 560, 2013, 10);
INSERT INTO Song VALUES(5085, "Sabrosa", 506, 3, 560, 2013, 11);
INSERT INTO Song VALUES(5086, "The Traveler", 506, 3, 560, 2013, 12);

INSERT INTO Song VALUES(5087, "Jaws of Life", 507, 3, 570, 2005, 1);
INSERT INTO Song VALUES(5088, "Glasgow Kiss", 507, 3, 570, 2005, 2);
INSERT INTO Song VALUES(5089, "Tunnel Vision", 507, 3, 570, 2005, 3);
INSERT INTO Song VALUES(5090, "Wishful Thinking", 507, 3, 570, 2005, 4);
INSERT INTO Song VALUES(5091, "Damage Control", 507, 3, 570, 2005, 5);
INSERT INTO Song VALUES(5092, "Curve", 507, 3, 570, 2005, 6);
INSERT INTO Song VALUES(5093, "Lost Without You", 507, 3, 570, 2005, 7);
INSERT INTO Song VALUES(5094, "Animate-Inanimate", 507, 3, 570, 2005, 8);

/* Genre 4: Electronic */

INSERT INTO Genre VALUES(4, "Electronic");

#############  Artists  #############
INSERT INTO Artist VALUES(641, "Skrillex");
INSERT INTO Artist VALUES(642, "Daft Punk");
INSERT INTO Artist VALUES(643, "Moby");
INSERT INTO Artist VALUES(644, "Datsik");
INSERT INTO Artist VALUES(645, "Excision");
INSERT INTO Artist VALUES(646, "Bassnectar");
INSERT INTO Artist VALUES(647, "Orbital");


#############  Albums  #############
INSERT INTO Album VALUES(643, "Bangarang", 641, 4, 2012);
INSERT INTO Album VALUES(644, "Scary Monsters and Nice Sprites", 641, 4, 2010);
INSERT INTO Album VALUES(645, "Human After All", 642, 4, 2005);
INSERT INTO Album VALUES(646, "Last Night", 643, 4, 2008);
INSERT INTO Album VALUES(647, "Vitamin D", 644, 4, 2012);
INSERT INTO Album VALUES(648, "The Remixes", 645, 4, 2012);
INSERT INTO Album VALUES(649, "Vava Voom", 646, 4, 2012);
INSERT INTO Album VALUES(641, "The Altogether", 647, 4, 2001);
INSERT INTO Album VALUES(642, "Blue Album", 647, 4, 2001);


#############  Songs  #############

INSERT INTO Song VALUES(6421, "Right in", 641, 4, 643, 2012, 1);
INSERT INTO Song VALUES(6422, "Bangarang", 641, 4, 643, 2012, 2);
INSERT INTO Song VALUES(6423, "Breakin' a Sweat", 641, 4, 643, 2012, 3);
INSERT INTO Song VALUES(6424, "The Devil's Den", 641, 4, 643, 2012, 4);
INSERT INTO Song VALUES(6425, "Right on Time", 641, 4, 643, 2012, 5);
INSERT INTO Song VALUES(6426, "Kyoto", 641, 4, 643, 2012, 6);
INSERT INTO Song VALUES(6427, "Summit", 641, 4, 643, 2012, 7);
INSERT INTO Song VALUES(6428, "Rock n' Roll", 641, 4, 644, 2010, 1);
INSERT INTO Song VALUES(6429, "Scary Monsters and Nice Sprites", 641, 4, 644, 2);
INSERT INTO Song VALUES(6430, "Kill EVERYBODY", 641, 4, 644, 2010, 3);
INSERT INTO Song VALUES(6431, "All I Ask of You", 641, 4, 644, 2010, 4);
INSERT INTO Song VALUES(6432, "Scatta", 641, 4, 644, 2010, 5);
INSERT INTO Song VALUES(6433, "With You, Friends", 641, 4, 644, 2010, 6);
INSERT INTO Song VALUES(6434, "Scary Monsters Noisia Remix", 641, 4, 644, 2010, 7);
INSERT INTO Song VALUES(6435, "Scary Monsters Zedd Remix", 641, 4, 644, 2010, 8);
INSERT INTO Song VALUES(6436, "Kill EVERYBODY Bare Noize Remix", 641, 4, 644, 2010, 9);

INSERT INTO Song VALUES(6437, "Human After All", 642, 4, 645, 2005, 1);
INSERT INTO Song VALUES(6438, "The Prime Time of Your Life", 642, 4, 645, 2005, 2);
INSERT INTO Song VALUES(6439, "Robot Rock", 642, 4, 645, 2005, 3);
INSERT INTO Song VALUES(6440, "Steam Machine", 642, 4, 645, 2005, 4);
INSERT INTO Song VALUES(6441, "Make Love", 642, 4, 645, 2005, 5);
INSERT INTO Song VALUES(6442, "The Brainwasher", 642, 4, 645, 2005, 6);
INSERT INTO Song VALUES(6443, "On/Off", 642, 4, 645, 2005, 7);
INSERT INTO Song VALUES(6444, "Television Rules the Nation", 642, 4, 645, 2005, 8);
INSERT INTO Song VALUES(6445, "Technologic", 642, 4, 645, 2005, 9);
INSERT INTO Song VALUES(6446, "Emotion", 642, 4, 645, 2005, 10);

INSERT INTO Song VALUES(6447, "Ooh Yeah", 643, 4, 646, 2008, 1);
INSERT INTO Song VALUES(6448, "I Love to Move In Here", 643, 4, 646, 2008, 2);
INSERT INTO Song VALUES(6449, "257.Zero", 643, 4, 646, 2008, 3);
INSERT INTO Song VALUES(6450, "Everyday It's 1989", 643, 4, 646, 2008, 4);
INSERT INTO Song VALUES(6451, "Live for Tomorrow", 643, 4, 646, 2008, 5);
INSERT INTO Song VALUES(6452, "Alice", 643, 4, 646, 2008, 6);
INSERT INTO Song VALUES(6453, "Hyenas", 643, 4, 646, 2008, 7);
INSERT INTO Song VALUES(6454, "I'm in Love", 643, 4, 646, 2008, 8);
INSERT INTO Song VALUES(6455, "Disco Lies", 643, 4, 646, 2008, 9);
INSERT INTO Song VALUES(6456, "The Stars", 643, 4, 646, 2008, 10);
INSERT INTO Song VALUES(6457, "Degenerates", 643, 4, 646, 2008, 11);
INSERT INTO Song VALUES(6458, "Sweet Apocalypse", 643, 4, 646, 2008, 12);
INSERT INTO Song VALUES(6459, "Mothers of the Night", 643, 4, 646, 2008, 13);
INSERT INTO Song VALUES(6460, "Last Night", 643, 4, 646, 2008, 14);

INSERT INTO Song VALUES(6461, "Annihilate", 644, 4, 647, 2012, 1);
INSERT INTO Song VALUES(6462, "Fully Blown", 644, 4, 647, 2012, 2);
INSERT INTO Song VALUES(6463, "Syndrome", 644, 4, 647, 2012, 3);
INSERT INTO Song VALUES(6464, "Bonafide Hustler", 644, 4, 647, 2012, 4);
INSERT INTO Song VALUES(6465, "Evilution", 644, 4, 647, 2012, 5);
INSERT INTO Song VALUES(6466, "Need You", 644, 4, 647, 2012, 6);
INSERT INTO Song VALUES(6467, "Don't Feel Right", 644, 4, 647, 2012, 7);
INSERT INTO Song VALUES(6468, "Light the Fuse", 644, 4, 647, 2012, 8);
INSERT INTO Song VALUES(6469, "Complete Control", 644, 4, 647, 2012, 9);
INSERT INTO Song VALUES(6470, "Punisher", 644, 4, 647, 2012, 10);
INSERT INTO Song VALUES(6471, "Napalm", 644, 4, 647, 2012, 11);
INSERT INTO Song VALUES(6472, "Double Trouble", 644, 4, 647, 2012, 12);

INSERT INTO Song VALUES(6473, "Deviance", 645, 4, 648, 2012, 1);
INSERT INTO Song VALUES(6474, "X Rated", 645, 4, 648, 2012, 2);
INSERT INTO Song VALUES(6475, "Sleepless", 645, 4, 648, 2012, 3);
INSERT INTO Song VALUES(6476, "Ohhh Nooo", 645, 4, 648, 2012, 4);
INSERT INTO Song VALUES(6477, "The Underground", 645, 4, 648, 2012, 5);
INSERT INTO Song VALUES(6478, "Execute", 645, 4, 648, 2012, 6);
INSERT INTO Song VALUES(6479, "Swerve", 645, 4, 648, 2012, 7);
INSERT INTO Song VALUES(6480, "Sexism", 645, 4, 648, 2012, 8);
INSERT INTO Song VALUES(6481, "Sleepless", 645, 4, 648, 2012, 9);
INSERT INTO Song VALUES(6482, "X Rated 2", 645, 4, 648, 2012, 10);
INSERT INTO Song VALUES(6483, "8 Bit Superhero", 645, 4, 648, 2012, 11);

INSERT INTO Song VALUES(6484, "Vava Voom", 646, 4, 649, 2012, 1);
INSERT INTO Song VALUES(6485, "Empathy", 646, 4, 649, 2012, 2);
INSERT INTO Song VALUES(6486, "Ugly", 646, 4, 649, 2012, 3);
INSERT INTO Song VALUES(6487, "Ping Pong", 646, 4, 649, 2012, 4);
INSERT INTO Song VALUES(6488, "What", 646, 4, 649, 2012, 5);
INSERT INTO Song VALUES(6489, "Pennywise Tribute", 646, 4, 649, 2012, 6);
INSERT INTO Song VALUES(6490, "Do It Like This", 646, 4, 649, 2012, 7);
INSERT INTO Song VALUES(6491, "Laughter Crescendo", 646, 4, 649, 2012, 8);
INSERT INTO Song VALUES(6492, "Butterfly", 646, 4, 649, 2012, 9);
INSERT INTO Song VALUES(6493, "Nothing Has Been Broken", 646, 4, 649, 2012, 10);
INSERT INTO Song VALUES(6494, "Chronological Outtakes", 646, 4, 649, 2012, 11);

INSERT INTO Song VALUES(6401, "Tension", 647, 4, 641, 2001, 1);
INSERT INTO Song VALUES(6402, "Funny Break", 647, 4, 641, 2001, 2);
INSERT INTO Song VALUES(6403, "Oi!", 647, 4, 641, 2001, 3);
INSERT INTO Song VALUES(6404, "Pay Per View", 647, 4, 641, 2001, 4);
INSERT INTO Song VALUES(6405, "Tootled", 647, 4, 641, 2001, 5);
INSERT INTO Song VALUES(6406, "Last Thing", 647, 4, 641, 2001, 6);
INSERT INTO Song VALUES(6407, "Doctor?", 647, 4, 641, 2001, 7);
INSERT INTO Song VALUES(6408, "Shadows", 647, 4, 641, 2001, 8);
INSERT INTO Song VALUES(6409, "Waving Not Drowning", 647, 4, 641, 2001, 9);
INSERT INTO Song VALUES(6410, "Illuminate", 647, 4, 641, 2001, 10);
INSERT INTO Song VALUES(6411, "Meltdown", 647, 4, 641, 2001, 11);
INSERT INTO Song VALUES(6412, "Transient", 647, 4, 642, 2004, 1);
INSERT INTO Song VALUES(6413, "Pants", 647, 4, 642, 2004, 2);
INSERT INTO Song VALUES(6414, "Tunnel Vision", 647, 4, 642, 2004, 3);
INSERT INTO Song VALUES(6415, "Lost", 647, 4, 642, 2004, 4);
INSERT INTO Song VALUES(6416, "You Lot", 647, 4, 642, 2004, 5);
INSERT INTO Song VALUES(6417, "Bath Time", 647, 4, 642, 2004, 6);
INSERT INTO Song VALUES(6418, "Acid Pants", 647, 4, 642, 2004, 7);
INSERT INTO Song VALUES(6419, "Easy Serv", 647, 4, 642, 2004, 8);
INSERT INTO Song VALUES(6420, "One Perfect Sunrise", 647, 4, 642, 2004, 9);

/* Genre 5: Country */

INSERT INTO Genre VALUES(5, "Country");

#############  Artists  #############
INSERT INTO Artist VALUES(900, "Blake Shelton");
INSERT INTO Artist VALUES(901, "Luke Bryan");
INSERT INTO Artist VALUES(902, "Taylor Swift");
INSERT INTO Artist VALUES(903, "Carrie Underwood");
INSERT INTO Artist VALUES(904, "Jason Aldean");
INSERT INTO Artist VALUES(905, "Miranda Lambert");
INSERT INTO Artist VALUES(906, "Hunter Hayes");
INSERT INTO Artist VALUES(907, "Darius Rucker");

#############  Albums  #############
INSERT INTO Album VALUES(900, "Based On A True Story", 900, 5, 2013);
INSERT INTO Album VALUES(901, "Doin' My Thing", 901, 5, 2009);
INSERT INTO Album VALUES(902, "Fearless", 902, 5, 2008);
INSERT INTO Album VALUES(903, "Some Hearts", 903, 5, 2005);
INSERT INTO Album VALUES(904, "Jason Aldean", 904, 5, 2005);
INSERT INTO Album VALUES(905, "Crazy Ex-Girlfriend", 905, 5, 2007);
INSERT INTO Album VALUES(906, "Hunter Hayes (Encore)", 906, 5, 2011);
INSERT INTO Album VALUES(907, "Learn to Live", 907, 5, 2008);
INSERT INTO Album VALUES(908, "Blown Away", 903, 5, 2012);
INSERT INTO Album VALUES(909, "My Kinda Party", 904, 5, 2010);


#############  Songs  #############
INSERT INTO Song VALUES(9000, "Boys 'Round Here", 900, 5, 900, 2013, 1);
INSERT INTO Song VALUES(9001, "Sure Be Cool If You Did", 900, 5, 900, 2013, 2);
INSERT INTO Song VALUES(9002, "Do You Remember", 900, 5, 900, 2013, 3);
INSERT INTO Song VALUES(9003, "Small Town Big Time", 900, 5, 900, 2013, 4);
INSERT INTO Song VALUES(9004, "Country on the Radio", 900, 5, 900, 2013, 5);
INSERT INTO Song VALUES(9005, "My Eyes", 900, 5, 900, 2013, 6);
INSERT INTO Song VALUES(9006, "Doin' What She Likes", 900, 5, 900, 2013, 7);
INSERT INTO Song VALUES(9007, "I Still Got a Finger", 900, 5, 900, 2013, 8);
INSERT INTO Song VALUES(9008, "Mine Would Be You", 900, 5, 900, 2013, 9);
INSERT INTO Song VALUES(9009, "Lay Low", 900, 5, 900, 2013, 10);
INSERT INTO Song VALUES(9010, "Ten Times Crazier", 900, 5, 900, 2013, 11);
INSERT INTO Song VALUES(9011, "Grandaddy's Gun", 900, 5, 900, 2013, 12);

INSERT INTO Song VALUES(9012, "Rain is a Good Thing", 901, 5, 901, 2009, 1);
INSERT INTO Song VALUES(9013, "Doin' My Thing", 901, 5, 901, 2009, 2);
INSERT INTO Song VALUES(9014, "Do I", 901, 5, 901, 2009, 3);
INSERT INTO Song VALUES(9015, "What Country Is", 901, 5, 901, 2009, 4);
INSERT INTO Song VALUES(9016, "Someone Else Calling You Baby", 901, 5, 901, 2009, 5);
INSERT INTO Song VALUES(9017, "Welcome to the Farm", 901, 5, 901, 2009, 6);
INSERT INTO Song VALUES(9018, "Apologize", 901, 5, 901, 2009, 7);
INSERT INTO Song VALUES(9019, "Every Time I See You", 901, 5, 901, 2009, 8);
INSERT INTO Song VALUES(9020, "Chuggin' Along", 901, 5, 901, 2009, 9);
INSERT INTO Song VALUES(9021, "I Did It Again", 901, 5, 901, 2009, 10);
INSERT INTO Song VALUES(9022, "Drinkin' Beer and Wastin' Bullets", 901, 5, 901, 2009, 11);

INSERT INTO Song VALUES(9023, "Fearless", 902, 5, 902, 2008, 1);
INSERT INTO Song VALUES(9024, "Fifteen", 902, 5, 902, 2008, 2);
INSERT INTO Song VALUES(9025, "Love Story", 902, 5, 902, 2008, 3);
INSERT INTO Song VALUES(9026, "Hey Stephen", 902, 5, 902, 2008, 4);
INSERT INTO Song VALUES(9027, "White Horse", 902, 5, 902, 2008, 5);
INSERT INTO Song VALUES(9028, "You Belong with Me", 902, 5, 902, 2008, 6);
INSERT INTO Song VALUES(9029, "Breathe", 902, 5, 902, 2008, 7);
INSERT INTO Song VALUES(9030, "Tell Me Why", 902, 5, 902, 2008, 8);
INSERT INTO Song VALUES(9031, "You're Not Sorry", 902, 5, 902, 2008, 9);
INSERT INTO Song VALUES(9032, "The Way I Loved You", 902, 5, 902, 2008, 10);
INSERT INTO Song VALUES(9033, "Forever & Always", 902, 5, 902, 2008, 11);
INSERT INTO Song VALUES(9034, "The Best Day", 902, 5, 902, 2008, 12);
INSERT INTO Song VALUES(9035, "Change", 902, 5, 902, 2008, 13);

INSERT INTO Song VALUES(9036, "Wasted", 903, 5, 903, 2005, 1);
INSERT INTO Song VALUES(9037, "Don't Forget to Remember Me", 903, 5, 903, 2005, 2);
INSERT INTO Song VALUES(9038, "Some Hearts", 903, 5, 903, 2005, 3);
INSERT INTO Song VALUES(9039, "Jesus, Take the Wheel", 903, 5, 903, 2005, 4);
INSERT INTO Song VALUES(9040, "The Night Before (Life Goes On)", 903, 5, 903, 2005, 5);
INSERT INTO Song VALUES(9041, "Lessons Learned", 903, 5, 903, 2005, 6);
INSERT INTO Song VALUES(9042, "Before He Cheats", 903, 5, 903, 2005, 7);
INSERT INTO Song VALUES(9043, "Starts with Goodbye", 903, 5, 903, 2005, 8);
INSERT INTO Song VALUES(9044, "I Just Can't Live a Lie", 903, 5, 903, 2005, 9);
INSERT INTO Song VALUES(9045, "We're Young and Beautiful", 903, 5, 903, 2005, 10);
INSERT INTO Song VALUES(9046, "That's Where It Is", 903, 5, 903, 2005, 11);
INSERT INTO Song VALUES(9047, "Whenever You Remember", 903, 5, 903, 2005, 12);
INSERT INTO Song VALUES(9048, "I Ain't in Checotah Anymore", 903, 5, 903, 2005, 13);

INSERT INTO Song VALUES(9049, "Hicktown", 904, 5, 904, 2005, 1);
INSERT INTO Song VALUES(9050, "Amarillo Sky", 904, 5, 904, 2005, 2);
INSERT INTO Song VALUES(9051, "Why", 904, 5, 904, 2005, 3);
INSERT INTO Song VALUES(9052, "Even If I Wanted To", 904, 5, 904, 2005, 4);
INSERT INTO Song VALUES(9053, "Lonesome USA", 904, 5, 904, 2005, 5);
INSERT INTO Song VALUES(9054, "Asphalt Cowboy", 904, 5, 904, 2005, 6);
INSERT INTO Song VALUES(9055, "I'm Just a Man", 904, 5, 904, 2005, 7);
INSERT INTO Song VALUES(9056, "You're the Love I Wanna Be In", 904, 5, 904, 2005, 8);
INSERT INTO Song VALUES(9057, "Good to Go", 904, 5, 904, 2005, 9);
INSERT INTO Song VALUES(9058, "I Believe In Ghosts", 904, 5, 904, 2005, 10);
INSERT INTO Song VALUES(9059, "She Loved Me", 904, 5, 904, 2005, 11);

INSERT INTO Song VALUES(9060, "Gunpowder & Lead", 905, 5, 905, 2007, 1);
INSERT INTO Song VALUES(9061, "Dry Town", 905, 5, 905, 2007, 2);
INSERT INTO Song VALUES(9062, "Famous in a Small Town", 905, 5, 905, 2007, 3);
INSERT INTO Song VALUES(9063, "Crazy Ex-Girlfriend", 905, 5, 905, 2007, 4);
INSERT INTO Song VALUES(9064, "Love Letters", 905, 5, 905, 2007, 5);
INSERT INTO Song VALUES(9065, "Desperation", 905, 5, 905, 2007, 6);
INSERT INTO Song VALUES(9066, "More Like Her", 905, 5, 905, 2007, 7);
INSERT INTO Song VALUES(9067, "Down", 905, 5, 905, 2007, 8);
INSERT INTO Song VALUES(9068, "Guilty in Here", 905, 5, 905, 2007, 9);
INSERT INTO Song VALUES(9069, "Getting Ready", 905, 5, 905, 2007, 10);
INSERT INTO Song VALUES(9070, "Easy from Now On", 905, 5, 905, 2007, 11);

INSERT INTO Song VALUES(9071, "Storm Warning", 906, 5, 906, 2011, 1);
INSERT INTO Song VALUES(9072, "Wanted", 906, 5, 906, 2011, 2);
INSERT INTO Song VALUES(9073, "If You Told Me To", 906, 5, 906, 2011, 3);
INSERT INTO Song VALUES(9074, "Love Makes Me", 906, 5, 906, 2011, 4);
INSERT INTO Song VALUES(9075, "Faith to Fall Back On", 906, 5, 906, 2011, 5);
INSERT INTO Song VALUES(9076, "Somebody's Heartbreak", 906, 5, 906, 2011, 6);
INSERT INTO Song VALUES(9077, "Rainy Season", 906, 5, 906, 2011, 7);
INSERT INTO Song VALUES(9078, "Cry With You", 906, 5, 906, 2011, 8);
INSERT INTO Song VALUES(9079, "Everybody's Got Somebody but Me", 906, 5, 906, 2011, 9);
INSERT INTO Song VALUES(9080, "What You Gonna Do", 906, 5, 906, 2011, 10);
INSERT INTO Song VALUES(9081, "More Than I Should", 906, 5, 906, 2011, 11);
INSERT INTO Song VALUES(9082, "All You Ever", 906, 5, 906, 2011, 12);
INSERT INTO Song VALUES(9083, "In a Song", 906, 5, 906, 2011, 13);
INSERT INTO Song VALUES(9084, "I Want Crazy", 906, 5, 906, 2011, 14);
INSERT INTO Song VALUES(9085, "A Thing About You", 906, 5, 906, 2011, 15);
INSERT INTO Song VALUES(9086, "Better Than This", 906, 5, 906, 2011, 16);
INSERT INTO Song VALUES(9087, "Light Me Up", 906, 5, 906, 2011, 17);

INSERT INTO Song VALUES(9088, "Forever Road", 907, 5, 907, 2008, 1);
INSERT INTO Song VALUES(9089, "All I Want", 907, 5, 907, 2008, 2);
INSERT INTO Song VALUES(9090, "Don't Think I Dont Think About It", 907, 5, 907, 2008, 3);
INSERT INTO Song VALUES(9091, "Learn to Live", 907, 5, 907, 2008, 4);
INSERT INTO Song VALUES(9092, "If I Had Wings", 907, 5, 907, 2008, 5);
INSERT INTO Song VALUES(9093, "History in the Making", 907, 5, 907, 2008, 6);
INSERT INTO Song VALUES(9094, "Alright", 907, 5, 907, 2008, 7);
INSERT INTO Song VALUES(9095, "It Won't Be Like This for Long", 907, 5, 907, 2008, 8);
INSERT INTO Song VALUES(9096, "Drinkin' and Dialin'", 907, 5, 907, 2008, 9);
INSERT INTO Song VALUES(9097, "I Hope They Get to Me in Time", 907, 5, 907, 2008, 10);
INSERT INTO Song VALUES(9098, "While I Still Got the Time", 907, 5, 907, 2008, 11);
INSERT INTO Song VALUES(9099, "Be Wary of a Woman", 907, 5, 907, 2008, 12);

INSERT INTO Song VALUES(9100, "Good Girl", 903, 5, 908, 2012, 1);
INSERT INTO Song VALUES(9101, "Blown Away", 903, 5, 908, 2012, 2);
INSERT INTO Song VALUES(9102, "Two Black Cadillacs", 903, 5, 908, 2012, 3);
INSERT INTO Song VALUES(9103, "See You Again", 903, 5, 908, 2012, 4);
INSERT INTO Song VALUES(9104, "Do You Think About Me", 903, 5, 908, 2012, 5);
INSERT INTO Song VALUES(9105, "Forever Changed", 903, 5, 908, 2012, 6);
INSERT INTO Song VALUES(9106, "Nobody Ever Told You", 903, 5, 908, 2012, 7);
INSERT INTO Song VALUES(9107, "One Way Ticket", 903, 5, 908, 2012, 8);
INSERT INTO Song VALUES(9108, "Thank God for Hometowns", 903, 5, 908, 2012, 9);
INSERT INTO Song VALUES(9109, "Good in Goodbye", 903, 5, 908, 2012, 10);
INSERT INTO Song VALUES(9110, "Leave Love Alone", 903, 5, 908, 2012, 11);
INSERT INTO Song VALUES(9111, "Cupid's Got a Shotgun", 903, 5, 908, 2012, 12);
INSERT INTO Song VALUES(9112, "Wine After Whiskey", 903, 5, 908, 2012, 13);
INSERT INTO Song VALUES(9113, "Who Are You", 903, 5, 908, 2012, 14);

INSERT INTO Song VALUES(9114, "Tattoos on This Town", 904, 5, 909, 2010, 1);
INSERT INTO Song VALUES(9115, "Dirt Road Anthem", 904, 5, 909, 2010, 2);
INSERT INTO Song VALUES(9116, "Church Pew or Bar Stool", 904, 5, 909, 2010, 3);
INSERT INTO Song VALUES(9117, "Just Passing Through", 904, 5, 909, 2010, 4);
INSERT INTO Song VALUES(9118, "Fly Over States", 904, 5, 909, 2010, 5);
INSERT INTO Song VALUES(9119, "My Kinda Party", 904, 5, 909, 2010, 6);
INSERT INTO Song VALUES(9120, "I Ain't Ready to Quit", 904, 5, 909, 2010, 7);
INSERT INTO Song VALUES(9121, "It Ain't Easy", 904, 5, 909, 2010, 8);
INSERT INTO Song VALUES(9122, "Country Boys World", 904, 5, 909, 2010, 9);
INSERT INTO Song VALUES(9123, "The Heartache That Don't Stop Hurting", 904, 5, 909, 2010, 10);
INSERT INTO Song VALUES(9124, "Texas Was You", 904, 5, 909, 2010, 11);
INSERT INTO Song VALUES(9125, "Don't You Wanna Stay", 904, 5, 909, 2010, 12);
INSERT INTO Song VALUES(9126, "See You When I See You", 904, 5, 909, 2010, 13);
INSERT INTO Song VALUES(9127, "If She Could See Me Now", 904, 5, 909, 2010, 14);
INSERT INTO Song VALUES(9128, "Days Like These", 904, 5, 909, 2010, 15);

