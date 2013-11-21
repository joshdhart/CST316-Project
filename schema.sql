Here�s what I�m thinking, Each person just use 1-5 for the genre id,
100-999 for album and artist id�s, and 1000-9999 for song title.
I�ll tell you your numbers in the following format:
Name (genreID, albumID range, artistID range, songID range)
Chase (1, 100-280, 100-280, 1000-2800)
Josh (2, 281-460, 281-460, 2801-4600)
Patrick (3, 461-640, 461-640, 4601-6400)
John (4, 641-820, 641-820, 6401-8200)
Jordan (5, 821-999, 821-999, 8201-9999)

Don�t think we have to complicate the album table by throwing in a 
list of songs, we can get the songs by doing a select by album id 
in the song table. Just my thoughts, feel free to make any necessary 
changes (or just changes for general improvement).

The schema can be found below, please add your inserts to the 
appropriate sections.


------------------------------------------------------------------------------------------------


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

INSERT INTO Genre VALUES(2, 'Pop');

INSERT INTO Album VALUES(300, 'The 20/20 Experience', 300, 2, 2013);


INSERT INTO Song VALUES(2801, 'Pusher Love Girl', 300, 2, 300, 2013);
INSERT INTO Song VALUES(2802, 'Suit & Tie feat. Jay-Z', 300, 2, 300, 2013);
INSERT INTO Song VALUES(2803, 'Don�t Hold the Wall', 300, 2, 300, 2013);
INSERT INTO Song VALUES(2804, 'Strawberry Bubblegum', 300, 2, 300, 2013);
INSERT INTO Song VALUES(2805, 'Tunnel Vision', 300, 2, 300, 2013);
INSERT INTO Song VALUES(2806, 'Spaceship Coup', 300, 2, 300, 2013);
INSERT INTO Song VALUES(2807, 'That Girl', 300, 2, 300, 2013);
INSERT INTO Song VALUES(2808, 'Let the Groove Get In', 300, 2, 300, 2013);
INSERT INTO Song VALUES(2809, 'Mirrors', 300, 2, 300, 2013);
INSERT INTO Song VALUES(2810, 'Blue Ocean Roar', 300, 2, 300, 2013);

INSERT INTO Artist VALUES(300, 'Justin Timberlake');


/* Genre 3: Metal */

INSERT INTO Genre VALUES(3, 'Metal');

INSERT INTO Artist VALUES(500, 'Metallica');
INSERT INTO Artist VALUES(501, 'Megadeth');
INSERT INTO Artist VALUES(502, 'Trivium');
INSERT INTO Artist VALUES(503, 'Mutiny Within');
INSERT INTO Artist VALUES(504, 'Unearth');
INSERT INTO Artist VALUES(505, 'Dream Theater');
INSERT INTO Artist VALUES(506, 'Scale the Summit');
INSERT INTO Artist VALUES(507, 'John Petrucci');


INSERT INTO Album VALUES(500, 'Ride the Lightning', 500, 3, 1984);
INSERT INTO Album VALUES(501, 'Master of Puppets', 500, 3, 1986);

INSERT INTO Album VALUES(510, 'Peace Sells...But Who\'s Buying?', 501, 3, 1986);

INSERT INTO Album VALUES(520, 'Shogun', 502, 3, 2008);
INSERT INTO Album VALUES(521, 'In Waves', 502, 3, 2011);

INSERT INTO Album VALUES(530, 'Mutiny Within', 503, 3, 2010);

INSERT INTO Album VALUES(540, 'The Oncoming Storm', 504, 3, 2004);

INSERT INTO Album VALUES(550, 'Black Clouds and Silver Linings', 505, 3, 2009);

Insert INTO Album VALUES(560, 'The Migration', 506, 3, 2013);

INSERT INTO Album VALUES(570, 'Suspended Animation', 507, 3, 2005);


INSERT INTO Song VALUES(500, 'Fight Fire With Fire', 500, 3, 500, 1984);
INSERT INTO Song VALUES(501, 'Ride the Lightning', 500, 3, 500, 1984);
INSERT INTO Song VALUES(502, 'For Whom the Bell Tolls', 500, 3, 500, 1984);
INSERT INTO Song VALUES(503, 'Fade to Black', 500, 3, 500, 1984);
INSERT INTO Song VALUES(504, 'Trapped Under Ice', 500, 3, 500, 1984);
INSERT INTO Song VALUES(505, 'Escape', 500, 3, 500, 1984);
INSERT INTO Song VALUES(506, 'Creeping Death', 500, 3, 500, 1984);
INSERT INTO Song VALUES(507, 'Call of Ktulu', 500, 3, 500, 1984);

INSERT INTO Song VALUES(508, 'Battery', 500, 3, 501, 1986);
INSERT INTO Song VALUES(509, 'Master of Puppets', 500, 3, 501, 1986);
INSERT INTO Song VALUES(510, 'The Thing That Should Not Be', 500, 3, 501, 1986);
INSERT INTO Song VALUES(511, 'Welcome Home (Sanitarium)', 500, 3, 501, 1986);
INSERT INTO Song VALUES(512, 'Disposable Heroes', 500, 3, 501, 1986);
INSERT INTO Song VALUES(513, 'Leper Messiah', 500, 3, 501, 1986);
INSERT INTO Song VALUES(514, 'Orion', 500, 3, 501, 1986);
INSERT INTO Song VALUES(515, 'Damage, Inc.', 500, 3, 501, 1986);

INSERT INTO Song VALUES(516, 'Wake Up Dead', 501, 3, 510, 1986);
INSERT INTO Song VALUES(517, 'The Conjuring', 501, 3, 510, 1986);
INSERT INTO Song VALUES(518, 'Peace Sells', 501, 3, 510, 1986);
INSERT INTO Song VALUES(519, 'Devils Island', 501, 3, 510, 1986);
INSERT INTO Song VALUES(520, 'Good Mourning/Black Friday', 501, 3, 510, 1986);
INSERT INTO Song VALUES(521, 'Bad Omen', 501, 3, 510, 1986);
INSERT INTO Song VALUES(522, 'I Ain\'t Superstitious', 501, 3, 510, 1986);
INSERT INTO Song VALUES(523, 'My Last Words', 501, 3, 510, 1986);

INSERT INTO Song VALUES(524, 'Kirisute Gomen', 502, 3, 520, 2008);
INSERT INTO Song VALUES(525, 'Torn Between Scylla and Charybdis', 502, 3, 520, 2008);
INSERT INTO Song VALUES(526, 'Down from the Sky', 502, 3, 520, 2008);
INSERT INTO Song VALUES(527, 'Into the Mouth of Hell We March', 502, 3, 520, 2008);
INSERT INTO Song VALUES(528, 'Throes of Perdition', 502, 3, 520, 2008);
INSERT INTO Song VALUES(529, 'Insurrection', 502, 3, 520, 2008);
INSERT INTO Song VALUES(530, 'The Calamity', 502, 3, 520, 2008);
INSERT INTO Song VALUES(531, 'He Who Spawned the Furies', 502, 3, 520, 2008);
INSERT INTO Song VALUES(532, 'Of Prometheus and the Crucifix', 502, 3, 520, 2008);
INSERT INTO Song VALUES(533, 'Like Callisto to a Star in Heaven', 502, 3, 520, 2008);
INSERT INTO Song VALUES(534, 'Shogun', 502, 3, 520, 2008);

INSERT INTO Song VALUES(535, 'Capsizing the Seas', 502, 3, 521, 2011);
INSERT INTO Song VALUES(536, 'In Waves', 502, 3, 521, 2011);
INSERT INTO Song VALUES(537, 'Inception of the End', 502, 3, 521, 2011);
INSERT INTO Song VALUES(538, 'Dusk Dismantled', 502, 3, 521, 2011);
INSERT INTO Song VALUES(539, 'Watch the World Burn', 502, 3, 521, 2011);
INSERT INTO Song VALUES(540, 'Black', 502, 3, 521, 2011);
INSERT INTO Song VALUES(541, 'A Skyline\'s Severance', 502, 3, 521, 2011);
INSERT INTO Song VALUES(542, 'Built to Fall', 502, 3, 521, 2011);
INSERT INTO Song VALUES(543, 'Caustic Are the Ties That Bind', 502, 3, 521, 2011);
INSERT INTO Song VALUES(544, 'Forsake Not the Dream', 502, 3, 521, 2011);
INSERT INTO Song VALUES(545, 'Chaos Reigns', 502, 3, 521, 2011);
INSERT INTO Song VALUES(546, 'Of All These Yesterdays', 502, 3, 521, 2011);
INSERT INTO Song VALUES(547, 'Leaving This World Behind', 502, 3, 521, 2011);

INSERT INTO Song VALUES(548, 'Awake', 503, 3, 530, 2010);
INSERT INTO Song VALUES(549, 'Images', 503, 3, 530, 2010);
INSERT INTO Song VALUES(550, 'Falling Forever', 503, 3, 530, 2010);
INSERT INTO Song VALUES(551, 'Year of Affliction', 503, 3, 530, 2010);
INSERT INTO Song VALUES(552, 'Forsaken', 503, 3, 530, 2010);
INSERT INTO Song VALUES(553, 'Lethean', 503, 3, 530, 2010);
INSERT INTO Song VALUES(554, 'Oblivion', 503, 3, 530, 2010);
INSERT INTO Song VALUES(555, 'Undone', 503, 3, 530, 2010);
INSERT INTO Song VALUES(556, 'Hours', 503, 3, 530, 2010);
INSERT INTO Song VALUES(557, 'Suffocate', 503, 3, 530, 2010);
INSERT INTO Song VALUES(558, 'Reflections', 503, 3, 530, 2010);

INSERT INTO Song VALUES(559, 'The Great Dividers', 504, 3, 540, 2004);
INSERT INTO Song VALUES(560, 'Failure', 504, 3, 540, 2004);
INSERT INTO Song VALUES(561, 'This Lying World', 504, 3, 540, 2004);
INSERT INTO Song VALUES(562, 'Black Hearts Now Reign', 504, 3, 540, 2004);
INSERT INTO Song VALUES(563, 'Zombie Autopilot', 504, 3, 540, 2004);
INSERT INTO Song VALUES(564, 'Bloodlust of the Human Condition', 504, 3, 540, 2004);
INSERT INTO Song VALUES(565, 'Lie to Purify', 504, 3, 540, 2004);
INSERT INTO Song VALUES(566, 'Endless', 504, 3, 540, 2004);
INSERT INTO Song VALUES(567, 'Aries', 504, 3, 540, 2004);
INSERT INTO Song VALUES(568, 'Predetermined Sky', 504, 3, 540, 2004);

INSERT INTO Song VALUES(569, 'A Nightmare to Remember', 505, 3, 550, 2009);
INSERT INTO Song VALUES(570, 'A Rite of Passage', 505, 3, 550, 2009);
INSERT INTO Song VALUES(571, 'Wither', 505, 3, 550, 2009);
INSERT INTO Song VALUES(572, 'The Shattered Fortress', 505, 3, 550, 2009);
INSERT INTO Song VALUES(573, 'The Best of Times', 505, 3, 550, 2009);
INSERT INTO Song VALUES(574, 'The Count of Tuscany', 505, 3, 550, 2009);

INSERT INTO Song VALUES(575, 'Odyssey', 506, 3, 560, 2013);
INSERT INTO Song VALUES(576, 'Atlus Novus', 506, 3, 560, 2013);
INSERT INTO Song VALUES(577, 'The Olive Tree', 506, 3, 560, 2013);
INSERT INTO Song VALUES(578, 'Narrow Salient', 506, 3, 560, 2013);
INSERT INTO Song VALUES(579, 'Oracle', 506, 3, 560, 2013);
INSERT INTO Song VALUES(580, 'Evergreen', 506, 3, 560, 2013);
INSERT INTO Song VALUES(581, 'Odyssey', 506, 3, 560, 2013);
INSERT INTO Song VALUES(582, 'Evergreen', 506, 3, 560, 2013);
INSERT INTO Song VALUES(583, 'The Dark Horse', 506, 3, 560, 2013);
INSERT INTO Song VALUES(584, 'Willow', 506, 3, 560, 2013);
INSERT INTO Song VALUES(585, 'Sabrosa', 506, 3, 560, 2013);
INSERT INTO Song VALUES(586, 'The Traveler', 506, 3, 560, 2013);

INSERT INTO Song VALUES(587, 'Jaws of Life', 507, 3, 570, 2005);
INSERT INTO Song VALUES(588, 'Glasgow Kiss', 507, 3, 570, 2005);
INSERT INTO Song VALUES(589, 'Tunnel Vision', 507, 3, 570, 2005);
INSERT INTO Song VALUES(590, 'Wishful Thinking', 507, 3, 570, 2005);
INSERT INTO Song VALUES(591, 'Damage Control', 507, 3, 570, 2005);
INSERT INTO Song VALUES(592, 'Curve', 507, 3, 570, 2005);
INSERT INTO Song VALUES(593, 'Lost Without You', 507, 3, 570, 2005);
INSERT INTO Song VALUES(594, 'Animate-Inanimate', 507, 3, 570, 2005);

