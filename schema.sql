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
  releaseYear INT
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


/* Genre 2: Pop */

INSERT INTO Genre VALUES(2, "Pop");

INSERT INTO Artist VALUES(300, "Justin Timberlake");
INSERT INTO Artist VALUES(305, "OneRepublic");
INSERT INTO Artist VALUES(310, "Miley Cyrus");
INSERT INTO Artist VALUES(315, "Bruno Mars");
INSERT INTO Artist VALUES(325, "One Direction");
INSERT INTO Artist VALUES(330, "David Guetta");
INSERT INTO Artist VALUES(335, "Christina Aguilera");
INSERT INTO Artist VALUES(340, "Carly Rae Jepsen");
INSERT INTO Artist VALUES(345, "Taylor Swift");

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


INSERT INTO Song VALUES(2801, "Pusher Love Girl", 300, 2, 300, 2013);
INSERT INTO Song VALUES(2802, "Suit & Tie feat. Jay-Z", 300, 2, 300, 2013);
INSERT INTO Song VALUES(2803, "Don't Hold the Wall", 300, 2, 300, 2013);
INSERT INTO Song VALUES(2804, "Strawberry Bubblegum", 300, 2, 300, 2013);
INSERT INTO Song VALUES(2805, "Tunnel Vision", 300, 2, 300, 2013);
INSERT INTO Song VALUES(2806, "Spaceship Coup", 300, 2, 300, 2013);
INSERT INTO Song VALUES(2807, "That Girl", 300, 2, 300, 2013);
INSERT INTO Song VALUES(2808, "Let the Groove Get In", 300, 2, 300, 2013);
INSERT INTO Song VALUES(2809, "Mirrors", 300, 2, 300, 2013);
INSERT INTO Song VALUES(2810, "Blue Ocean Roar", 300, 2, 300, 2013);
INSERT INTO Song VALUES(2901, "Counting Stars", 305, 2, 305, 2013);
INSERT INTO Song VALUES(2902, "If I Lose Myself", 305, 2, 305, 2013);
INSERT INTO Song VALUES(2903, "Feel Again", 305, 2, 305, 2013);
INSERT INTO Song VALUES(2904, "What You Wanted", 305, 2, 305, 2013);
INSERT INTO Song VALUES(2905, "I Lived", 305, 2, 305, 2013);
INSERT INTO Song VALUES(2906, "Light It Up", 305, 2, 305, 2013);
INSERT INTO Song VALUES(2907, "Can’t Stop", 305, 2, 305, 2013);
INSERT INTO Song VALUES(2908, "Au Revoir", 305, 2, 305, 2013);
INSERT INTO Song VALUES(2909, "Burning Bridges", 305, 2, 305, 2013);
INSERT INTO Song VALUES(2910, "Something I Need", 305, 2, 305, 2013);
INSERT INTO Song VALUES(2911, "Preacher", 305, 2, 305, 2013);
INSERT INTO Song VALUES(2912, "Don’t Look Down", 305, 2, 305, 2013);
INSERT INTO Song VALUES(2913, "Something’s Gotta Give", 305, 2, 305, 2013);
INSERT INTO Song VALUES(2914, "Life In Color", 305, 2, 305, 2013);
INSERT INTO Song VALUES(3001, "Adore You", 310, 2, 310, 2013);
INSERT INTO Song VALUES(3002, "We Can’t Stop", 310, 2, 310, 2013);
INSERT INTO Song VALUES(3003, "SMS (Bangerz)", 310, 2, 310, 2013);
INSERT INTO Song VALUES(3004, "4x4", 310, 2, 310, 2013);
INSERT INTO Song VALUES(3005, "My Darlin", 310, 2, 310, 2013);
INSERT INTO Song VALUES(3006, "Wrecking Ball", 310, 2, 310, 2013);
INSERT INTO Song VALUES(3007, "Love Money Party", 310, 2, 310, 2013);
INSERT INTO Song VALUES(3008, "#GETITRIGHT", 310, 2, 310, 2013);
INSERT INTO Song VALUES(3009, "Drive", 310, 2, 310, 2013);
INSERT INTO Song VALUES(3010, "FU", 310, 2, 310, 2013);
INSERT INTO Song VALUES(3011, "Do My Thang", 310, 2, 310, 2013);
INSERT INTO Song VALUES(3012, "Maybe You’re Right", 310, 2, 310, 2013);
INSERT INTO Song VALUES(3013, "Someone Else", 310, 2, 310, 2013);
INSERT INTO Song VALUES(3101, "Young Girls", 315, 2, 315, 2012);
INSERT INTO Song VALUES(3102, "Locked Out of Heaven", 315, 2, 315, 2012);
INSERT INTO Song VALUES(3103, "Gorilla", 315, 2, 315, 2012);
INSERT INTO Song VALUES(3104, "Treasure", 315, 2, 315, 2012);
INSERT INTO Song VALUES(3105, "Moonshine", 315, 2, 315, 2012);
INSERT INTO Song VALUES(3106, "When I Was Man", 315, 2, 315, 2012);
INSERT INTO Song VALUES(3107, "Natalie", 315, 2, 315, 2012);
INSERT INTO Song VALUES(3108, "Show Me", 315, 2, 315, 2012);
INSERT INTO Song VALUES(3109, "Money Make Her Smile", 315, 2, 315, 2012);
INSERT INTO Song VALUES(3110, "If I Knew", 315, 2, 315, 2012);
INSERT INTO Song VALUES(3121, "Grenade", 315, 2, 320, 2010);
INSERT INTO Song VALUES(3122, "Just the Way You Are", 315, 2, 320, 2010);
INSERT INTO Song VALUES(3123, "Our First Time", 315, 2, 320, 2010);
INSERT INTO Song VALUES(3124, "Runaway Baby", 315, 2, 320, 2010);
INSERT INTO Song VALUES(3125, "The Lazy Song", 315, 2, 320, 2010);
INSERT INTO Song VALUES(3126, "Marry You", 315, 2, 320, 2010);
INSERT INTO Song VALUES(3127, "Talking to the Moon", 315, 2, 320, 2010);
INSERT INTO Song VALUES(3128, "Liquor Store Blues", 315, 2, 320, 2010);
INSERT INTO Song VALUES(3129, "Count On Me", 315, 2, 320, 2010);
INSERT INTO Song VALUES(3130, "The Other Side", 315, 2, 320, 2010);
INSERT INTO Song VALUES(3131, "Just the Way You Are (remix)", 315, 2, 320, 2010);
INSERT INTO Song VALUES(3132, "Somewhere in Brooklyn", 315, 2, 320, 2010);
INSERT INTO Song VALUES(3201, "Live While We’re Young", 325, 2, 325, 2012);
INSERT INTO Song VALUES(3202, "Kiss You", 325, 2, 325, 2012);
INSERT INTO Song VALUES(3203, "Little Things", 325, 2, 325, 2012);
INSERT INTO Song VALUES(3204, "C’Mon, C’Mon", 325, 2, 325, 2012);
INSERT INTO Song VALUES(3205, "Last First Kiss", 325, 2, 325, 2012);
INSERT INTO Song VALUES(3206, "Heart Attack", 325, 2, 325, 2012);
INSERT INTO Song VALUES(3207, "Rock Me", 325, 2, 325, 2012);
INSERT INTO Song VALUES(3208, "Change My Mind", 325, 2, 325, 2012);
INSERT INTO Song VALUES(3209, "I Would", 325, 2, 325, 2012);
INSERT INTO Song VALUES(3210, "Over Again", 325, 2, 325, 2012);
INSERT INTO Song VALUES(3211, "Back for You", 325, 2, 325, 2012);
INSERT INTO Song VALUES(3212, "They Don’t Know About Us", 325, 2, 325, 2012);
INSERT INTO Song VALUES(3213, "Summer Love", 325, 2, 325, 2012);
INSERT INTO Song VALUES(3214, "Truly, Madly, Deeply", 325, 2, 325, 2012);
INSERT INTO Song VALUES(3215, "Magic", 325, 2, 325, 2012);
INSERT INTO Song VALUES(3216, "Irresistible", 325, 2, 325, 2012);
INSERT INTO Song VALUES(3217, "One Thing (live)", 325, 2, 325, 2012);
INSERT INTO Song VALUES(3218, "I Wish (live)", 325, 2, 325, 2012);
INSERT INTO Song VALUES(3301, "Where Them Girls At", 330, 2, 330, 2011);
INSERT INTO Song VALUES(3302, "Little Bad Girl", 330, 2, 330, 2011);
INSERT INTO Song VALUES(3303, "Turn Me On", 330, 2, 330, 2011);
INSERT INTO Song VALUES(3304, "Sweat (remix)", 330, 2, 330, 2011);
INSERT INTO Song VALUES(3305, "Without U", 330, 2, 330, 2011);
INSERT INTO Song VALUES(3306, "Nothing Really Matters", 330, 2, 330, 2011);
INSERT INTO Song VALUES(3307, "I Can Only Imagine", 330, 2, 330, 2011);
INSERT INTO Song VALUES(3308, "Crank It Up", 330, 2, 330, 2011);
INSERT INTO Song VALUES(3309, "I Just Wanna Fuck", 330, 2, 330, 2011);
INSERT INTO Song VALUES(3310, "Night of Your Life", 330, 2, 330, 2011);
INSERT INTO Song VALUES(3311, "Repeat", 330, 2, 330, 2011);
INSERT INTO Song VALUES(3312, "Titanium", 330, 2, 330, 2011);
INSERT INTO Song VALUES(3313, "The Alphabeat", 330, 2, 330, 2011);
INSERT INTO Song VALUES(3314, "Lunar", 330, 2, 330, 2011);
INSERT INTO Song VALUES(3315, "Sunshine", 330, 2, 330, 2011);
INSERT INTO Song VALUES(3401, "Lotus Intro", 335, 2, 335, 2012);
INSERT INTO Song VALUES(3402, "Army of Me", 335, 2, 335, 2012);
INSERT INTO Song VALUES(3403, "Red Hot Kinda Love", 335, 2, 335, 2012);
INSERT INTO Song VALUES(3404, "Make the World Move ", 335, 2, 335, 2012);
INSERT INTO Song VALUES(3405, "Your Body", 335, 2, 335, 2012);
INSERT INTO Song VALUES(3406, "Let There Be Love", 335, 2, 335, 2012);
INSERT INTO Song VALUES(3407, "Sing for Me", 335, 2, 335, 2012);
INSERT INTO Song VALUES(3408, "Blank Page", 335, 2, 335, 2012);
INSERT INTO Song VALUES(3409, "Cease Fire", 335, 2, 335, 2012);
INSERT INTO Song VALUES(3410, "Around the World", 335, 2, 335, 2012);
INSERT INTO Song VALUES(3411, "Circles", 335, 2, 335, 2012);
INSERT INTO Song VALUES(3412, "Best of Me", 335, 2, 335, 2012);
INSERT INTO Song VALUES(3413, "Just a Fool", 335, 2, 335, 2012);
INSERT INTO Song VALUES(3414, "Light Up the Sky", 335, 2, 335, 2012);
INSERT INTO Song VALUES(3415, "Empty Words", 335, 2, 335, 2012);
INSERT INTO Song VALUES(3416, "Shut Up", 335, 2, 335, 2012);
INSERT INTO Song VALUES(3417, "Your Body (Martin Garrix remix", 335, 2, 335, 2012);
INSERT INTO Song VALUES(3501, "Call Me Maybe", 340, 2, 340, 2012);
INSERT INTO Song VALUES(3502, "Curiosity", 340, 2, 340, 2012);
INSERT INTO Song VALUES(3503, "Picture", 340, 2, 340, 2012);
INSERT INTO Song VALUES(3504, "Talk to Me", 340, 2, 340, 2012);
INSERT INTO Song VALUES(3505, "Just a Step Away", 340, 2, 340, 2012);
INSERT INTO Song VALUES(3506, "Both Sides Now", 340, 2, 340, 2012);
INSERT INTO Song VALUES(3601, "State of Grace", 345, 2, 345, 2012);
INSERT INTO Song VALUES(3602, "Red", 345, 2, 345, 2012);
INSERT INTO Song VALUES(3603, "I Knew You Were Trouble", 345, 2, 345, 2012);
INSERT INTO Song VALUES(3604, "All Too Well", 345, 2, 345, 2012);
INSERT INTO Song VALUES(3605, "22", 345, 2, 345, 2012);
INSERT INTO Song VALUES(3606, "I Almost Do", 345, 2, 345, 2012);
INSERT INTO Song VALUES(3607, "We Are Never Ever Getting Back Together", 345, 2, 345, 2012);
INSERT INTO Song VALUES(3608, "Stay Stay Stay", 345, 2, 345, 2012);
INSERT INTO Song VALUES(3609, "The Last Time", 345, 2, 345, 2012);
INSERT INTO Song VALUES(3610, "Holy Ground", 345, 2, 345, 2012);
INSERT INTO Song VALUES(3611, "Sad Beautiful Tragic", 345, 2, 345, 2012);
INSERT INTO Song VALUES(3612, "The Lucky One", 345, 2, 345, 2012);
INSERT INTO Song VALUES(3613, "Everything Has Changed", 345, 2, 345, 2012);
INSERT INTO Song VALUES(3614, "Starlight", 345, 2, 345, 2012);
INSERT INTO Song VALUES(3615, "Begin Again", 345, 2, 345, 2012);
INSERT INTO Song VALUES(3616, "The Moment I Knew", 345, 2, 345, 2012);
INSERT INTO Song VALUES(3617, "Come Back… Be Here", 345, 2, 345, 2012);
INSERT INTO Song VALUES(3618, "Girl at Home", 345, 2, 345, 2012);
INSERT INTO Song VALUES(3619, "Treacherous", 345, 2, 345, 2012);
INSERT INTO Song VALUES(3620, "Red (demo)", 345, 2, 345, 2012);
INSERT INTO Song VALUES(3621, "State of Grace (acoustic version)", 345, 2, 345, 2012);

/* Genre 3: Metal */

INSERT INTO Genre VALUES(3, "Metal");

INSERT INTO Artist VALUES(500, "Metallica");
INSERT INTO Artist VALUES(501, "Megadeth");
INSERT INTO Artist VALUES(502, "Trivium");
INSERT INTO Artist VALUES(503, "Mutiny Within");
INSERT INTO Artist VALUES(504, "Unearth");
INSERT INTO Artist VALUES(505, "Dream Theater");
INSERT INTO Artist VALUES(506, "Scale the Summit");
INSERT INTO Artist VALUES(507, "John Petrucci");


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


INSERT INTO Song VALUES(500, "Fight Fire With Fire", 500, 3, 500, 1984);
INSERT INTO Song VALUES(501, "Ride the Lightning", 500, 3, 500, 1984);
INSERT INTO Song VALUES(502, "For Whom the Bell Tolls", 500, 3, 500, 1984);
INSERT INTO Song VALUES(503, "Fade to Black", 500, 3, 500, 1984);
INSERT INTO Song VALUES(504, "Trapped Under Ice", 500, 3, 500, 1984);
INSERT INTO Song VALUES(505, "Escape", 500, 3, 500, 1984);
INSERT INTO Song VALUES(506, "Creeping Death", 500, 3, 500, 1984);
INSERT INTO Song VALUES(507, "Call of Ktulu", 500, 3, 500, 1984);

INSERT INTO Song VALUES(508, "Battery", 500, 3, 501, 1986);
INSERT INTO Song VALUES(509, "Master of Puppets", 500, 3, 501, 1986);
INSERT INTO Song VALUES(510, "The Thing That Should Not Be", 500, 3, 501, 1986);
INSERT INTO Song VALUES(511, "Welcome Home (Sanitarium)", 500, 3, 501, 1986);
INSERT INTO Song VALUES(512, "Disposable Heroes", 500, 3, 501, 1986);
INSERT INTO Song VALUES(513, "Leper Messiah", 500, 3, 501, 1986);
INSERT INTO Song VALUES(514, "Orion", 500, 3, 501, 1986);
INSERT INTO Song VALUES(515, "Damage, Inc.", 500, 3, 501, 1986);

INSERT INTO Song VALUES(516, "Wake Up Dead", 501, 3, 510, 1986);
INSERT INTO Song VALUES(517, "The Conjuring", 501, 3, 510, 1986);
INSERT INTO Song VALUES(518, "Peace Sells", 501, 3, 510, 1986);
INSERT INTO Song VALUES(519, "Devils Island", 501, 3, 510, 1986);
INSERT INTO Song VALUES(520, "Good Mourning/Black Friday", 501, 3, 510, 1986);
INSERT INTO Song VALUES(521, "Bad Omen", 501, 3, 510, 1986);
INSERT INTO Song VALUES(522, "I Ain't Superstitious", 501, 3, 510, 1986);
INSERT INTO Song VALUES(523, "My Last Words", 501, 3, 510, 1986);

INSERT INTO Song VALUES(524, "Kirisute Gomen", 502, 3, 520, 2008);
INSERT INTO Song VALUES(525, "Torn Between Scylla and Charybdis", 502, 3, 520, 2008);
INSERT INTO Song VALUES(526, "Down from the Sky", 502, 3, 520, 2008);
INSERT INTO Song VALUES(527, "Into the Mouth of Hell We March", 502, 3, 520, 2008);
INSERT INTO Song VALUES(528, "Throes of Perdition", 502, 3, 520, 2008);
INSERT INTO Song VALUES(529, "Insurrection", 502, 3, 520, 2008);
INSERT INTO Song VALUES(530, "The Calamity", 502, 3, 520, 2008);
INSERT INTO Song VALUES(531, "He Who Spawned the Furies", 502, 3, 520, 2008);
INSERT INTO Song VALUES(532, "Of Prometheus and the Crucifix", 502, 3, 520, 2008);
INSERT INTO Song VALUES(533, "Like Callisto to a Star in Heaven", 502, 3, 520, 2008);
INSERT INTO Song VALUES(534, "Shogun", 502, 3, 520, 2008);

INSERT INTO Song VALUES(535, "Capsizing the Seas", 502, 3, 521, 2011);
INSERT INTO Song VALUES(536, "In Waves", 502, 3, 521, 2011);
INSERT INTO Song VALUES(537, "Inception of the End", 502, 3, 521, 2011);
INSERT INTO Song VALUES(538, "Dusk Dismantled", 502, 3, 521, 2011);
INSERT INTO Song VALUES(539, "Watch the World Burn", 502, 3, 521, 2011);
INSERT INTO Song VALUES(540, "Black", 502, 3, 521, 2011);
INSERT INTO Song VALUES(541, "A Skyline's Severance", 502, 3, 521, 2011);
INSERT INTO Song VALUES(542, "Built to Fall", 502, 3, 521, 2011);
INSERT INTO Song VALUES(543, "Caustic Are the Ties That Bind", 502, 3, 521, 2011);
INSERT INTO Song VALUES(544, "Forsake Not the Dream", 502, 3, 521, 2011);
INSERT INTO Song VALUES(545, "Chaos Reigns", 502, 3, 521, 2011);
INSERT INTO Song VALUES(546, "Of All These Yesterdays", 502, 3, 521, 2011);
INSERT INTO Song VALUES(547, "Leaving This World Behind", 502, 3, 521, 2011);

INSERT INTO Song VALUES(548, "Awake", 503, 3, 530, 2010);
INSERT INTO Song VALUES(549, "Images", 503, 3, 530, 2010);
INSERT INTO Song VALUES(550, "Falling Forever", 503, 3, 530, 2010);
INSERT INTO Song VALUES(551, "Year of Affliction", 503, 3, 530, 2010);
INSERT INTO Song VALUES(552, "Forsaken", 503, 3, 530, 2010);
INSERT INTO Song VALUES(553, "Lethean", 503, 3, 530, 2010);
INSERT INTO Song VALUES(554, "Oblivion", 503, 3, 530, 2010);
INSERT INTO Song VALUES(555, "Undone", 503, 3, 530, 2010);
INSERT INTO Song VALUES(556, "Hours", 503, 3, 530, 2010);
INSERT INTO Song VALUES(557, "Suffocate", 503, 3, 530, 2010);
INSERT INTO Song VALUES(558, "Reflections", 503, 3, 530, 2010);

INSERT INTO Song VALUES(559, "The Great Dividers", 504, 3, 540, 2004);
INSERT INTO Song VALUES(560, "Failure", 504, 3, 540, 2004);
INSERT INTO Song VALUES(561, "This Lying World", 504, 3, 540, 2004);
INSERT INTO Song VALUES(562, "Black Hearts Now Reign", 504, 3, 540, 2004);
INSERT INTO Song VALUES(563, "Zombie Autopilot", 504, 3, 540, 2004);
INSERT INTO Song VALUES(564, "Bloodlust of the Human Condition", 504, 3, 540, 2004);
INSERT INTO Song VALUES(565, "Lie to Purify", 504, 3, 540, 2004);
INSERT INTO Song VALUES(566, "Endless", 504, 3, 540, 2004);
INSERT INTO Song VALUES(567, "Aries", 504, 3, 540, 2004);
INSERT INTO Song VALUES(568, "Predetermined Sky", 504, 3, 540, 2004);

INSERT INTO Song VALUES(569, "A Nightmare to Remember", 505, 3, 550, 2009);
INSERT INTO Song VALUES(570, "A Rite of Passage", 505, 3, 550, 2009);
INSERT INTO Song VALUES(571, "Wither", 505, 3, 550, 2009);
INSERT INTO Song VALUES(572, "The Shattered Fortress", 505, 3, 550, 2009);
INSERT INTO Song VALUES(573, "The Best of Times", 505, 3, 550, 2009);
INSERT INTO Song VALUES(574, "The Count of Tuscany", 505, 3, 550, 2009);

INSERT INTO Song VALUES(575, "Odyssey", 506, 3, 560, 2013);
INSERT INTO Song VALUES(576, "Atlus Novus", 506, 3, 560, 2013);
INSERT INTO Song VALUES(577, "The Olive Tree", 506, 3, 560, 2013);
INSERT INTO Song VALUES(578, "Narrow Salient", 506, 3, 560, 2013);
INSERT INTO Song VALUES(579, "Oracle", 506, 3, 560, 2013);
INSERT INTO Song VALUES(580, "Evergreen", 506, 3, 560, 2013);
INSERT INTO Song VALUES(581, "Odyssey", 506, 3, 560, 2013);
INSERT INTO Song VALUES(582, "Evergreen", 506, 3, 560, 2013);
INSERT INTO Song VALUES(583, "The Dark Horse", 506, 3, 560, 2013);
INSERT INTO Song VALUES(584, "Willow", 506, 3, 560, 2013);
INSERT INTO Song VALUES(585, "Sabrosa", 506, 3, 560, 2013);
INSERT INTO Song VALUES(586, "The Traveler", 506, 3, 560, 2013);

INSERT INTO Song VALUES(587, "Jaws of Life", 507, 3, 570, 2005);
INSERT INTO Song VALUES(588, "Glasgow Kiss", 507, 3, 570, 2005);
INSERT INTO Song VALUES(589, "Tunnel Vision", 507, 3, 570, 2005);
INSERT INTO Song VALUES(590, "Wishful Thinking", 507, 3, 570, 2005);
INSERT INTO Song VALUES(591, "Damage Control", 507, 3, 570, 2005);
INSERT INTO Song VALUES(592, "Curve", 507, 3, 570, 2005);
INSERT INTO Song VALUES(593, "Lost Without You", 507, 3, 570, 2005);
INSERT INTO Song VALUES(594, "Animate-Inanimate", 507, 3, 570, 2005);

