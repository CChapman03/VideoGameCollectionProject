use VGCTest;

insert into Platform values (null, 'PS1');
insert into Platform values (null, 'GBA');
insert into Platform values (null, 'N64');

insert into Developer values (null, 'Naughty Dog');
insert into Developer values (null, 'Insomiac');
insert into Developer values (null, 'Game Freak');
insert into Developer values (null, 'Rare, Ltd.');

insert into Publisher values (null, 'Sony Computer Entertainment');
insert into Publisher values (null, 'Nintendo');

insert into Game values (null, 'Crash Bandicoot', (select id from Platform where name = 'PS1'), '1996-08-31', (select id from Developer where name = 'Naughty Dog'), (select id from Publisher where name = 'Sony Computer Entertainment'), 1, 'Platformer', 'E', 'Crash Bandicoot, a heroic, agile and mutated marsupial who must save his girlfriend Tawna. The main antagonist is Doctor Neo Cortex, a mad scientist who was often ridiculed by the scientific community for his outlandish (but nearly workable) theories and is now motivated to prove his tormentors wrong by creating a mutated army of beasts to conquer the world. Cortex\'s henchman is Doctor Nitrus Brio, the insecure creator of the Evolvo-Ray. Crash\'s love interest is Tawna, a female bandicoot about to undergo experimentation by the Doctors. Helping Crash in his journey is an ancient witch doctor spirit named Aku Aku, who has scattered masks of himself throughout the islands to grant Crash special powers. The boss characters of the game include Papu Papu, the obese and short-tempered chief of the native village; Ripper Roo, a demented kangaroo with razor-sharp toenails; Koala Kong, a muscular but unintelligent koala; and Pinstripe Potoroo, the tommy gun-wielding bodyguard of Doctor Cortex.', 'artwork/crashbandicoot.png');
insert into Game values (null, 'Spyro The Dragon', (select id from Platform where name = 'PS1'), '1998-09-10', (select id from Developer where name = 'Insomiac'), (select id from Publisher where name = 'Sony Computer Entertainment'), 1, 'Platformer', 'E', 'Spyro the Dragon is a platform game developed by Insomniac Games for the PlayStation. It stars the title character, a young purple dragon named Spyro and his dragonfly friend, Sparx, and is the first game in the Spyro the Dragon series. The first game was massively popular at its initial release and Spyro would later become one of the most recognizable, popular and respected gaming icons for the PlayStation gaming console. Spyro\'s best friend, Sparx the dragonfly, acts like the player\'s health meter and assists in gathering gems. The various dragons Spyro unfreezes along the way are also key characters in Spyro\'s progression through the game. Gnasty Gnorc is the main antagonist, who froze all the dragons of the land in crystal.', 'artwork/spyrothedragon.png');
insert into Game values (null, 'Pokemon Ruby Version', (select id from Platform where name = 'GBA'), '2002-11-21', (select id from Developer where name = 'Game Freak'), (select id from Publisher where name = 'Nintendo'), 1, 'Role-Playing', 'E', 'The race to catch \'em all is on again in Pokemon Ruby. This entry in the Pokemon series features an all-new storyline, awesome new Pokemon, and addictive RPG gameplay. One of the biggest additions to Pokemon Ruby is the two-on-two battle system, which allows you to link up with three friends to battle competitively or cooperatively. You can also showcase your Pokemon\'s coolness, beauty, cuteness, smartness, and toughness in Pokemon contests. With new Pokemon, two-on-two battles, and an all-new region of Hoenn to explore, Pokemon Sapphire takes the Pokemon experience to the next level.', 'artwork/pokemonruby.png');
insert into Game values (null, 'Banjo Kazooie', (select id from Platform where name = 'N64'), '1998-06-29', (select id from Developer where name = 'Rare, Ltd.'), (select id from Publisher where name = 'Nintendo'), 1, 'Platformer', 'E', 'Action and Puzzles and Bears. Oh My! Trouble brews when Gruntilda the witch captures the unbearably beautiful cub, Tooty. But before the grisly hag can steal the bear’s good looks, big brother Banjo and his fine-feathered friend, Kazooie, join forces to stop her. Combining their 24 moves and special powers, Banjo and Kazooie will fend off armies of beasts. Bear and bird must hunt down the 100 puzzle pieces and 900 musical notes that will ultimately lead them to Gruntilda. However, miles of swamp, desert and snow and one bear of an adventure stand in their way. • Soar over islands to scout out buried treasure. • Brave past whirling blades in the belly of a mechanical shark. • With some voodoo magic, transform into different creatures to gain special powers. • Solve the puzzles of the ancients to unearth the cursed labyrinths.', 'artwork/banjokazooie.png');

insert into Collection values (null, 1, (select id from Game where name = 'Crash Bandicoot'));
insert into Collection values (null, 1, (select id from Game where name = 'Spyro The Dragon'));
insert into Collection values (null, 1, (select id from Game where name = 'Pokemon Ruby Version'));

insert into Wishlist values (null, 1, (select id from Game where name = 'Banjo Kazooie'));

insert into Collection values (null, 2, (select id from Game where name = 'Crash Bandicoot'));
insert into Collection values (null, 2, (select id from Game where name = 'Spyro The Dragon'));

insert into Collection values (null, 3, (select id from Game where name = 'Crash Bandicoot'));

insert into Wishlist values (null, 3, (select id from Game where name = 'Spyro The Dragon'));
insert into Wishlist values (null, 3, (select id from Game where name = 'Pokemon Ruby Version'));
insert into Wishlist values (null, 3, (select id from Game where name = 'Banjo Kazooie'));

insert into User values (null, 'JDoe', 'jdoe1@madisoncollege.edu', 'password123', 'avatars/Jdoe.png', (select id from Collection where id = 1), (select id from Wishlist where id = 1));
insert into User values (null, 'fflintstone', 'fredflinstone@madisoncollege.edu', 'barney!', 'avatars/fflintstone.png', (select id from Collection where id = 2), (select id from Wishlist where id = 2));
insert into User values (null, 'msmyth', 'msmyth@frontier.com', 'defeathbc', 'avatars/msmyth.png', (select id from Collection where id = 3), (select id from Wishlist where id = 3));

insert into UserRoles values (null, (select id from User where username = 'JDoe'), 'user');
insert into UserRoles values (null, (select id from User where username = 'fflintstone'), 'user');
insert into UserRoles values (null, (select id from User where username = 'msmyth'), 'admin');