CREATE DATABASE 1612002390_lokaverkefni;

USE 1612002390_lokaverkefni;

CREATE TABLE Thjoderni
(
	ID int auto_increment PRIMARY KEY not null,
    nafn VARCHAR(25),
    ibuafjoldi INTEGER,
    staerd INTEGER,
    hofudborg VARCHAR(30)
);
insert into Thjoderni(nafn, ibuafjoldi, staerd, hofudborg)
values
(
	'U.S.',
    325000000,
    3800000,
    'Washington D.C.'
),
(
	'England',
    55000000,
    130000,
    'London'
),
(
	'Iceland',
    330000,
    103000,
    'Reykjavík'
),
(
	'France',
    67000000,
    644000,
    'Paris'
),
(
	'Barbados',
    277000,
    439,
    'Bridgetown'
),
(
	'Canada',
    35000000,
    9900000,
    'Ottawa'
);

CREATE TABLE Flokkur
(
	ID int auto_increment PRIMARY KEY not null,
	nafn VARCHAR(25),
	Lysing VARCHAR(250)
);
insert into Flokkur(nafn, lysing)
values
(
	'Sóló',
    'Söngvarinn syngur einn, oft semur samt önnur manneskja lagið'
),
(
	'Hljómsveit',
    'Margir syngja saman, algengast í pop og rock tónlisti. Oft eru nokkrir að spila á hljóðfæri og einn að syngja'
),
(
	'Dúó',
    'Tveir aðilar syngja saman'
),
(
	'Kór',
    'Hér eru margir aðilar saman að syngja, oft er skipt þá í hópa og einnig er stundum notað einungis raddirnar til að gera tónlist'
);

CREATE TABLE Flytjandi
(
	ID int auto_increment PRIMARY KEY not null,
    nafn VARCHAR(25),
    faedingarAr int,
    danardagur varchar(25),
    kyn VARCHAR(15),
    flokkur int not null,
    thjoderni int not null,
    foreign key (flokkur) references Flokkur(nafn),
    foreign key (thjoderni) references Thjoderni(nafn)
);
insert into Flytjandi(nafn, faedingarar, danardagur, kyn, flokkur, thjoderni)
values
(
	'Dj Khaled',
    1975,
    null,
    'KK',
    1,
    1
),
(
	'Kendrick Lamar',
    1987,
    null,
    'KK',
    1,
    1
),
(
	'Björk',
    1965,
    null,
    'KVK',
    1,
    3
),
(
	'Eurobandið',
    null,
    null,
    'KK og KVK',
    3,
    3
),
(
	'The Beatles',
    null,
    null,
    'KK',
    2,
    2
),
(
	'Otis Redding',
    1941,
    1967,
    'KK',
    1,
    1
),
(
	'Frank Sinatra',
    1915,
    '14/5/1998',
    'KK',
    1,
    1
),
(
	'Logic',
    1990,
    null,
    'KK',
    1,
    1
),
(
	'Drake',
    1986,
    null,
    'KK',
    1,
    6
),
(
	'Kanye West',
    1977,
    null,
    'KK',
    1,
    1
),
(
	'Taylor Swift',
    1989,
    null,
    'KVK',
    1,
    1
),
(
	'Rihanna',
    1988,
    null,
    'KVK',
    1,
    5
),
(
	'Gorillaz',
    null,
    null,
    'KK og KVK',
    2,
    2
),
(
	'Vera Lynn',
    1917,
    null,
    'KVK',
    1,
    2
);

CREATE TABLE Tegund
(
	ID int auto_increment PRIMARY KEY not null,
    nafn VARCHAR(25),
    uppruni VARCHAR(50)
);
insert into Tegund(nafn, uppruni)
values
(
	'Rap',
    'Africa'
),
(
	'Pop',
    'U.S. and U.K.'
),
(
	'Rock',
    'U.S.'
),
(
	'Jazz',
    'U.S.'
),
(
	'Techno',
    'U.S.'
);

CREATE TABLE Hofundur
(
	ID int auto_increment PRIMARY KEY not null,
    nafn varchar (25),
    aldur INTEGER(3),
    thjoderni VARCHAR(50),
    faedingarDagur VARCHAR(50),
    danarDagur VARCHAR(50)
);
insert into Hofundur(nafn, aldur, thjoderni, faedingardagur, danardagur)
values
(
	'Sia',
    41,
    'Australia',
    '1975-12-18',
    null
),
(
	'Mike Will Made It',
    28,
    'U.S.',
    '1989-03-23',
    null
),
(
	'Southside',
    28,
    'U.S.',
    '1989-02-02',
    null
),
(
	'Max Martin',
    46,
    'Sweden',
    '1971-02-26',
    null
),
(
	'Prince',
	null,
    'U.S.',
    '1958-06-07',
    '2016-04-21'
),
(
	'Kendrick Lamar',
    29,
    'U.S.',
    '1987-06-17',
    null
),
(
	'Drake',
    30,
    'U.S.',
    '1986-10-24',
    null
    
),
(
	'DJ Khaled',
    41,
    'U.S.',
    '1975-11-26',
    null
),
(
	'PartyNextDoor',
    23,
    'Canada',
    '1993-06-03',
    null
),
(
	'John Lennon',
    null,
    'England',
    '1940-10-09',
    '1980-12-08'
),
(
	'Kanye West',
    39,
    'U.S.',
    '1977-06-08',
    null
),
(
	'Damon Albarn',
    49,
    'England',
    '1968-03-23',
    null
),
(
	'Paul Anka',
    75,
    'Canada',
    '1941-07-30',
    null
),
(
	'Ross Parker',
    null,
    'England',
    '1914-08-16',
    '1974-08-2'
),
(
	'Logic',
    27,
    'U.S.',
    '1990-01-22',
    null
),
(
	'Bart Howard',
    null,
    'U.S.',
    '1915-06-01',
    '2004-02-21'
);

CREATE TABLE Utgefandi
(
	ID int auto_increment PRIMARY KEY not null,
    nafn VARCHAR(25),
    stofnunarar int,
    aldur INTEGER,
    tegund_flytjanda VARCHAR(50),
    stadsetning VARCHAR(50)
);
insert into Utgefandi(nafn, stofnunarar, aldur, tegund_flytjanda, stadsetning)
values
(
	'Top Dawg Entertainment',
    2004,
    13,
    'hiphop',
    'California'
),
(
	'Def Jam Recordings',
    1984,
    33,
    'hiphop',
    'New York'
),
(
	'We the best music group',
    2008,
    9,
    'hiphop',
    'Miami'
),
(
	'Young Money Entertainment',
    2005,
    12,
    'hiphop',
    'New Orleans'
),
(
	'Roc Nation',
    2008,
    9,
    'allt',
    'New York'
),
(
	'Big Machine Records',
    2005,
    12,
    'pop',
    'Nashville'
),
(
	'Parlophone',
    1896,
    121,
    'allt',
    null
),
(
	'Capitol Records',
    1942,
    75,
    'allt',
    'L.A.'
);

CREATE TABLE Diskur
(
	ID int auto_increment PRIMARY KEY not null,
    nafn VARCHAR(25),
    utgafuar INTEGER,
    tegund_disks VARCHAR(50),
    fjoldi_laga INTEGER,
    utgefandi_ID int not null,
    foreign key (utgefandi_ID) references Utgefandi(nafn)
);insert into Diskur(nafn, utgafuar, tegund_disks, fjoldi_laga, utgefandi_ID)
values
(
	'DAMN',
    2017,
    'hiphop',
    14,
    1
),
(
	'Views',
    2016,
    'hiphop',
    5,
    4
),
(
	'The Life of Pablo',
    2016,
    'hiphop',
    19,
    2
),
(
	'To Pimp a Butterfly',
    2015,
    'hiphop',
    16,
    1
),
(
	'Meet The Beatles!',
    1964,
    'rock',
    12,
    8
),
(
	'Major Key',
    2016,
    'hiphop',
    14,
    2
),
(
	'The Incredible True Story',
    2015,
    'hiphop',
    18,
    3
),
(
	'1989',
    2014,
    'pop',
    13,
    6
),
(
	'Anti',
    2016,
    'pop',
    13,
    5
),
(
	'untitled unmastered',
    2016,
    'hiphop',
    8,
    1
),
(
	'Demon Days',
    2005,
    'rock',
    15,
    7
);

CREATE TABLE Lag
(
	ID int auto_increment PRIMARY KEY not null,
    nafn VARCHAR(25),
    lengd INTEGER,
    texti VARCHAR(5000),
    flytjandi_ID int not null,
    foreign key (flytjandi_ID) references Flytjandi(nafn),
    tegund int not null,
    foreign key (tegund) references Tegund(nafn),
    hofundur int not null,
    foreign key (hofundur) references Hofundur(nafn),
    diskur int not null,
    foreign key (diskur) references Diskur(nafn)
);
insert into Lag(nafn, lengd, texti, flytjandi_ID, tegund, hofundur, diskur)
values
(
	'HUMBLE',
    177,
    'Wicked or weakness
	You gotta see this
	Waaaaay (yeah, yeah!)



	Ayy, I remember syrup sandwiches and crime allowances
	Finesse a nigga with some counterfeits
	But now Im countin this
	Parmesan where my accountant lives
	In fact, Im downin this
	DUSSÉ with my boo bae, tastes like Kool-Aid for the analysts
	Girl, I can buy yo ass the world with my paystub
	Ooh, that pussy good, wont you sit it on my taste bloods?
	I get way too petty once you let me do the extras
	Pull up on your block, then break it down: we playin Tetris
	A.M. to the P.M., P.M. to the A.M., funk
	Piss out your per diem, you just gotta hate em, funk
	If I quit your BM, I still ride Mercedes, funk
	If I quit this season, I still be the greatest, funk
	My left stroke just went viral
	Right stroke put lil baby in a spiral
	Soprano C, we like to keep it on a high note
	Its levels to it, you and I know, bitch, be humble


	(Hol up, bitch) sit down
	(Hol up lil bitch, hol up lil bitch) be humble
	(Hol up, bitch) sit down
	(Sit down, hol up, lil bitch)
	Be humble (bitch)
	(Hol up, hol up, hol up, hol up) bitch, sit down
	Lil bitch (hol up, lil bitch) be humble
	(Hol up, bitch) sit down
	(Hol up, hol up, hol up, hol up) be humble
	(Hol up, hol up, hol up, hol up, lil bitch) sit down
	(Hol up lil bitch) be humble
	(Hol up, bitch) sit down
	(Hol up, sit down, lil bitch)
	(Sit down, lil bitch, be humble)
	(Hol up, hol up, hol up, hol up, lil bitch) bitch, sit down
	(Hol up, bitch) be humble
	(Hol up, bitch) sit down
	(Hol up, hol up, hol up, hol up)

	Who dat nigga thinkin that he frontin on man, man? (Man, man)
	Get the fuck off my stage, Im the Sandman (Sandman)
	Get the fuck off my dick, that aint right
	I make a play fuckin up your whole life
	Im so fuckin sick and tired of the Photoshop
	Show me somethin natural like afro on Richard Pryor
	Show me somethin natural like ass with some stretchmarks
	Still will take you down right on your mamas couch in Polo socks, ayy
	This shit way too crazy, ayy, you do not amaze me, ayy
	I blew cool from AC, ayy, Obama just paged me, ayy
	I dont fabricate it, ayy, most of yall be fakin, ayy
	I stay modest bout it, ayy, she elaborate it, ayy
	This that Grey Poupon, that Evian, that TED Talk, ayy
	Watch my soul speak, you let the meds talk, ayy
	If I kill a nigga, it wont be the alcohol, ayy
	Im the realest nigga after all, bitch, be humble


	(Hol up, bitch) sit down
	(Hol up lil bitch, hol up lil bitch) be humble
	(Hol up, bitch) sit down
	(Sit down, hol up, lil bitch)
	Be humble (bitch)
	(Hol up, hol up, hol up, hol up) bitch, sit down
	Lil bitch (hol up, lil bitch) be humble
	(Hol up, bitch) sit down
	(Hol up, hol up, hol up, hol up) be humble
	(Hol up, hol up, hol up, hol up, lil bitch) sit down
	(Hol up lil bitch) be humble
	(Hol up, bitch) sit down
	(Hol up, sit down, lil bitch)
	(Sit down, lil bitch, be humble)
	(Hol up, hol up, hol up, hol up, lil bitch) bitch, sit down
	(Hol up, bitch) be humble
	(Hol up, bitch) sit down
	(Hol up, hol up, hol up, hol up)',
    2,
    1,
    2,
    1
),
(
	'I got the keys',
    219,
    'We The Best music!
	Oh, this what we doin here
	Another one!!!
	Imma have to put my jewelry on for this one
	Wraith talk, Wraith talk
	Oh, we talkin that Wraith talk
	Safe talk, safe talk, here we go talkin that safe talk
	Major key alert!
	Oh, we good now
	Major bag alert
	DJ Khaled!

	I got them keys, keys, keys
	I got them keys, keys, keys
	I got them keys, keys, keys
	I got them keys, keys, keys
	We go to court, we gon plead the fifth
	I know the judge, Imma shoot him some chips
	I got them keys, keys, keys
	I got them keys, keys, keys

	Niggas always asking me the key
	Til you own your own you cant be free
	Til youre on your own you cant be me
	How we still slaves in 2016?
	Key to life, keep a bag comin
	Every night another bag comin
	I aint been asleep since 96
	I aint seen the back of my eyelids
	I been speedin through life with no safety belt
	One on one with the corner, with no safety help
	I perform like Josh Norman, I aint normal, nigga
	Just a project nigga out in Beverly Hills, California, nigga
	That Wraith talk, thats foreign, nigga
	Special cloth talk here
	All my niggas from the mud damn near
	All my niggas millionares
	We gon take it there, I swear
	You gon think a niggas psychic
	You aint seen nothin like this
	I should probably copyright this
	I promise they aint gonna like this

	I got them keys, keys, keys
	I got them keys, keys, keys
	I got them keys, keys, keys
	I got them keys, keys, keys
	We go to court, we gon plead the fifth
	I know the judge, Imma shoot him some chips
	I got them keys, keys, keys
	I got them keys, keys, keys
	Radar, radar oh, bitches aint even on my radar
	Radar, radar oh, you aint on my radar
	Radar, radar, no, no, you aint on my radar
	No, no, you bitches aint, bitches aint even on my radar

	I got a bag for lawyers, like, "Fuck your charges!"
	Hop out the courtroom, like, "What charges?"
	Big pimpin on your court steps
	Case yall aint notice, I aint lost yet
	Yall know its one of one
	Soon as you hear that uh, uh, uh
	Yall know the difference right
	From rap facts and fiction, right?
	Real life Im like HOV
	Real life Im life goals
	In real life theyre like me?
	In real life Im like, "No."
	My swag different, that bag different
	My wife Beyoncé, I brag different
	My baby Blue, I dream in color
	Thats too much flavor, I dont rap to suckas (Ha!)
	God bless you all, I only talk special talk
	I only talk special cloth
	Said I only talk special, ah!

	I got them keys, keys, keys
	I got them keys, keys, keys
	I got them keys, keys, keys
	I got them keys, keys, keys
	We go to court, we gon plead the fifth
	I know the judge, Imma shoot him some chips
	I got them keys, keys, keys
	I got them keys, keys, keys
	Radar, radar oh, bitches aint even on my radar
	Radar, radar oh, you aint on my radar
	Radar, radar, no, no, you aint on my radar
	No, no, you bitches aint, bitches aint even on my radar

	I got the keys
	I got the keys, keys, keys
	I got the keys to all success!
	I got the keys, keys, keys
	We the best! (I got the keys, keys, keys)
	Roc Nation! Freebandz!

	Secure the bag alert
	Alert, alert, alert, alert, alert, alert
	Alert, alert, alert, alert, we got em alert
	I got them keys, keys, keys
	I got them keys, keys, keys
	I got them keys, keys, keys
	I got them keys, keys, keys
	We go to court, we gon plead the fifth
	I know the judge, Imma shoot him some chips
	I got them keys, keys, keys
	I got them keys, keys, keys',
    1,
    1,
    3,
    6
),
(
	'I want to hold your hand',
    154,
    'Oh yeah I tell you somethin
	I think youll understand
	When I say that somethin
	I want to hold your hand
	I want to hold your hand
	I want to hold your hand

	Oh please say to me
	Youll let me be your man
	And please say to me
	Youll let me hold your hand
	Now, let me hold your hand
	I want to hold your hand

	And when I touch you
	I feel happy inside
	Its such a feelin that my love
	I cant hide
	I cant hide
	I cant hide

	Yeah, you got that somethin
	I think youll understand
	When I say that somethin
	I want to hold your hand
	I want to hold your hand
	I want to hold your hand

	And when I touch you
	I feel happy inside
	Its such a feelin that my love
	I cant hide
	I cant hide
	I cant hide

	Yeah, you got that somethin
	I think youll understand
	When I feel that somethin
	I want to hold your hand
	I want to hold your hand
	I want to hold your hand
	I want to hold your hand',
    5,
    3,
    10,
    5
),
(
	'Alright',
    219,
    'Alls my life I has to fight, nigga
	Alls my life I...
	Hard times like yah
	Bad trips like "God!"
	Nazareth, Im fucked up
	Homie you fucked up
	But if God got us then we gon be alright

	Nigga, we gon be alright
	Nigga, we gon be alright
	We gon be alright
	Do you hear me, do you feel me? We gon be alright
	Nigga, we gon be alright
	Huh? We gon be alright
	Nigga, we gon be alright
	Do you hear me, do you feel me? We gon be alright

	Uh, and when I wake up
	I recognize youre lookin at me for the pay cut
	Behind my side we lookin at you from the face down
	What mac-11 even boom with the bass down
	Schemin! And let me tell you bout my life
	Painkillers only put me in the twilight
	Where pretty pussy and Benjamin is the highlight
	Now tell my mama I love her but this what I like
	Lord knows, 20 of em in my Chevy
	Tell em all to come and get me, reapin everything I sow
	So my karma coming heavy
	No preliminary hearings on my record
	Im a motherfucking gangster in silence for the record
	Tell the world I know its too late
	Boys and girls I think Ive gone cray
	Drown inside my vices all day
	Wont you please believe when I say
	When you know, we been hurt, been down before, nigga
	When our pride was low, lookin at the world like, "where do we go, nigga?"
	And we hate Popo, wanna kill us dead in the street for sure, nigga
	Im at the preachers door
	My knees gettin weak and my gun might blow but we gon be alright

	What you want, you a house you a car
	40 acres and a mule, a piano a guitar
	Anything, see my name is Lucy, Im your dog
	Motherfucker you can live at the mall
	I can see the evil, I can tell it I know its illegal
	I dont think about it, I deposit every other zero
	Thinkin of my partner put the candy, paint it on the regal
	Diggin in my pocket aint a profit, big enough to feed you
	Everyday my logic, get another dollar just to keep you
	In the presence of your chico... ah!
	I dont talk about it, be about it, everyday I see cool
	If I got it then you know you got it, Heaven, I can reach you
	Pet dog, pet dog, pet dog, my dog thats all
	Pick back and chat I shut the back for yall
	I rap, Im black, on track so rest assured
	My rights, my wrongs I write till Im right with God

	I keep my head up high
	I cross my heart and hope to die
	Lovin me is complicated
	Too afraid, a lot of changes
	Im alright and youre a favorite
	Dark nights in my prayers

	I remembered you was conflicted
	Misusing your influence, sometimes I did the same
	Abusing my power full of resentment
	Resentment that turned into a deep depression
	Found myself screamin in the hotel room
	I didnt wanna self destruct, the evils of Lucy was all around me
	So I went runnin for answers',
    2,
    1,
    6,
    4
),
(
	'GOD',
    248,
    'This what God feel like, yeah
	Laughing to the bank like aha, yeah
	Flex on swole like aha, yeah
	You feel some type of way then, aha, yeah

	Every since a young man
	All I want to be was a gunman
	Shooting up the charts, better, run man
	Yall gotta see that I won man
	Slick as El DeBarge with the finger ways, work at JT
	Handle balls like a fade, watch me work at JT
	Im at large, running plays like a circuit, JT
	Im selling verses, Jay Z, watch me work at JT
	Look, look, hold up
	Dont judge me, my mama caught me with a strap
	Dont judge me, I was young fucking all the rats
	Dont judge me, aiming at your head for a stack
	Dont judge me
	Dont judge me, now my home got a Valley peak
	Dont judge me, if I press your line, you a freak
	Dont judge me, wont you tell a friend yall gon see

	This what God feel like, yeah
	Laughing to the bank like aha, yeah
	Flex on swole like aha, yeah
	You feel some type of way then, aha, yeah

	Fuck is you talking to?
	Aye, do you know who you talking to?
	Slide on you like fallen drapes
	God toss full of carnivals
	I kill em with kindness
	Or I kill em with diamonds
	Or I put up like fifteen hundred
	Get your ass killed by the finest
	Everything life is a gamble
	Nothing in life I cant handle
	Seen it all, done it all, felt pain more
	For the cars, I done put blood on sword
	Everything I do is to embrace yall
	Everything I write is a damn eight ball
	Everything I touch is a damn gold mine
	Everything I say is from an angel

	I dont rush shit, fuck shit, always your shit, my shit
	Cannonballs to ignite shit
	Morning to the night shift, Im on
	I aint sorry for it, ask for a piece of mine, you charged me for it
	I wanna see sometimes if you ignore it
	Im in the streets sometimes and cant afford it
	I got a bad habit, levitate, ducking haters
	Oh my, my heart is rich, my heart is famous

	This what God feel like, yeah (this what God feel like)
	Laughing to the bank like aha (this what God feel like)
	Yeah (this what God feel like)
	Flex on swole like aha (this what God feel like)
	Yeah (this what God feel like)
	You feel some type of way then, aha (this what God feel like)
	This what God feel like
	Yeah (This what God feel like)
	This what God feel like',
    2,
    1,
    6,
    1
),
(
	'Hotline Bling',
    267,
    'You used to call me on my
	You used to, you used to
	Yeah

	You used to call me on my cell phone
	Late night when you need my love
	Call me on my cell phone
	Late night when you need my love
	And I know when that hotline bling
	That can only mean one thing
	I know when that hotline bling
	That can only mean one thing

	Ever since I left the city,
	You got a reputation for yourself now
	Everybody knows and I feel left out
	Girl you got me down, you got me stressed out
	Cause ever since I left the city,
	you started wearing less and goin out more
	Glasses of champagne out on the dance floor
	Hangin with some girls Ive never seen before

	You used to call me on my cell phone
	Late night when you need my love
	Call me on my cell phone
	Late night when you need my love
	I know when that hotline bling
	That can only mean one thing
	I know when that hotline bling
	That can only mean one thing

	Ever since I left the city, you, you, you
	You and me we just dont get along
	You make me feel like I did you wrong
	Going places where you dont belong
	Ever since I left the city,
	you, you got exactly what you asked for
	Running out of pages in your passport
	Hanging with some girls Ive never seen before

	You used to call me on my cell phone
	Late night when you need my love
	Call me on my cell phone
	Late night when you need my love
	And I know when that hotline bling
	That can only mean one thing
	I know when that hotline bling
	That can only mean one thing

	These days, all I do is
	Wonder if youre bendin over backwards for someone else
	Wonder if youre rollin up a backwoods for someone else
	Doing things I taught you, gettin nasty for someone else
	You dont need no one else
	You dont need nobody else, no
	Why you never alone
	Why you always touching road
	Used to always stay at home, be a good girl
	You was in a zone, yeah
	You should just be yourself
	Right now, youre someone else

	You used to call me on my cell phone
	Late night when you need my love
	Call me on my cell phone
	Late night when you need my love
	And I know when that hotline bling
	That can only mean one thing
	I know when that hotline bling
	That can only mean one thing

	Ever since I left the city',
    9,
    1,
    7,
    2
),
(
	'Fade Away',
    199,
    'All day (all day), everyday (everyday)
	We was on that block until we made a way
	Day to day, man thats the only way
	They gon know my name until it fade away

	Fade away, fade away
	They gon know my name until it fade away
	(Way, way, way), fade away
	They gon know my name until it fade away

	I been there, I done that, done that, this rap shit I run that
	Motherfucker this far from a comeback, if one of us fall then we run back
	Cant let that social worker just snatch up my kid, gotta get my son back
	Cause when they coming through that system dont give a fuck about you
	Everybody gonna die, gonna go one day, maybe itll happen on a Monday
	Drop into work and get hit by a Hyundai, fuck it, let it all go one day
	I know, Imma get it like this, living that life while they all reminisce
	Never regretted, the second I said it I feel like Im smarter, I read it on Reddit
	Youre fucking pathetic, my etiquette murder ya predicate, bitch Im ahead of it, yeah
	Yes Imma die but I don’t wonder why in the hell Imma ride in the dead of it yeah
	Yeah I know, know, life on Earth is so unpredictable
	Okay-kay, hold up let me say yes I fade away

	Fade away, fade away
	They gon know my name until it fade away
	(Way, way, way), fade away
	They gon know my name until it fade away

	Tell me what I wouldnt wanna give for a life like this, arm and a leg quite like this
	Fuck around wanna fight like this, take a hike like this
	So I might just, might just, I dont know
	Reinvention, thats my intention, want so much more than this third-dimension
	Thats not to mention my true ascension is a bigger picture - no metaphor
	I’m being real with ya but it will hit ya like, "goddamn!"
	Going HAM, full of all of them in a spaceship, I’m in another system
	So futuristic, on another mission but back on Earth everybody bitchin, I been in the kitchen
	Livin my life - no inhibition, life to death with no intermission
	Now the good book said we all the same, and we kill each other but its all in vain
	And we all to blame, cant see the picture when inside the frame
	Real talk, I wanna grip the grain and just ride with ya, build a family then die richer
	When ya get to heaven Imma come and get ya
	Sit back and really get the picture
	This life, yeah, it done ate away, hard times never stayed away
	But one thing I know day to day, Imma do somethin fore I fade away

	Fade away, fade away
	They gon know my name until it fade away
	(Way, way, way), fade away
	They gon know my name until it fade away',
    8,
    1,
    15,
    7
),
(
	'Little Child',
    108,
    'Little child, little child
	Little child, wont you dance with me?
	Im so sad and lonely
	Baby take a chance with me

	Little child, little child
	Little child, wont you dance with me?
	Im so sad and lonely
	Baby take a chance with me

	If you want someone
	To make you feel so fine
	Then well have some fun
	When youre mine, all mine
	So come, come on, come on

	Little child, little child
	Little child, wont you dance with me?
	Im so sad and lonely
	Baby take a chance with me

	When youre by my side
	Youre the only one
	Dont you run and hide
	Just come on, come on
	So come on, come on, come on

	Little child, little child
	Little child, wont you dance with me?
	Im so sad and lonely
	Baby take a chance with me
	Baby take a chance with me
	Baby take a chance with me',
    5,
    3,
    10,
    5
),
(
	'For Free',
    183,
    'Would you fuck me for free?
	Another one
	We the Best Music! Major Key! DJ Khaled!


	I go on and on
	Cant understand how I lasted so long
	I must have the superpowers
	Last 223 thousand hours
	Its cause Im off of CC
	And Im off the Hennessy
	And like your boy from Compton said
	You know this dick aint free!
	I got girls that I shoulda made pay for it
	Got girls that I should made wait for it
	Got girls thatll cancel a flight back home
	Stay another day for it
	You got attitude on na na
	And your pussy on agua
	And your stomach on flat flat
	And your ass on whats that?
	And, yeah, I need it all right now
	Last year I had drama, girl not right now
	I was never gon chat what we talkin about
	You the only one I know could fit it all in her... man

	I always wonder if you ask yourself
	Is it just me?
	Is it just me?
	Or is this sex so good I shouldnt have to fuck for free?
	Is it just me?
	Is it just me?
	Or is this sex so good I shouldnt have to...

	Fuck for free
	I know you workin day and night to get a college degree
	Bet nobody that youve been with even know you a freak, right?
	You know you only do that with me, right?
	Yeah, double checkin on you
	You know I never put the pressure on you
	You know that you make your own mind up
	You knew what it was when you signed up
	Now you gotta run it up
	I be out of words, tryna sum it up
	Girl you throw it back like one love
	Even let me slash on the tour bus
	Yeah I talk to her but she dont do enough
	Even though you in the hood Im still pullin up
	Dip, dip, straight to your doorstep
	This the real thing, can you feel the force yet

	I always wonder if you ask yourself
	Is it just me?
	Is it just me?
	Or is this sex so good I shouldnt have to fuck for free?
	Is it just me?
	Yeah, is it just me?
	Is this sex so good I shouldnt have to...
	Would you fuck me for free?

	Another one
	They dont want me to have another anthem
	So I made sure I got another anthem
	Its We The Best OVO
	Summers ours
	It always has been
	Dont ever play yourself
	One time for Future the Prince
	One time for 40
	One time for Drake
	Another one
	Bless up',
    1,
    1,
    3,
    6
),
(
	'Famous',
    194,
    'Man I can understand how it might be
	Kinda hard to love a girl like me
	I dont blame you much for wanting to be free
	I just wanted you to know
	Swizz told me let the beat rock

	For all my Southside niggas that know me best
	I feel like me and Taylor might still have sex
	Why? I made that bitch famous (God damn)
	I made that bitch famous
	For all the girls that got dick from Kanye West
	If you see em in the streets give em Kanyes best
	Why? They mad they aint famous (God damn)
	They mad theyre still nameless (Talk that talk, man)
	Her man in the store tryna try his best
	But he just cant seem to get Kanye fresh
	But we still hood famous (God damn)
	Yeah we still hood famous

	I just wanted you to know
	I loved you better than your own kin did
	From the very start
	I dont blame you much for wanting to be free
	Wake up, Mr West! Oh, hes up!
	I just wanted you to know

	I be Puerto Rican day parade floatin
	That Benz Marina Del Rey coastin
	She be Puerto Rican day parade wavin
	Last month I helped her with the car payment
	Young and we alive, whoo!
	We never gonna die, whoo!
	I just copped a jet to fly over personal debt
	Put one up in the sky
	The sun is in my eyes, whoo!
	Woke up and felt the vibe, whoo!
	No matter how hard they try, whoo!
	We never gonna die

	I just wanted you to know

	Bam bam, bam bam
	Bam bam dilla, bam bam
	ey what a bam bam
	How you feeling right now? Let me see your lighters in the air
	Bam bam dilla, bam bam
	Bam bam eh
	Bam bam, bam bam
	Let me see your middle finger in the air
	Bam bam, bam bam
	Bam bam dilla, bam bam
	Let me see you act up in this motherfucker
	ey what a bam bam
	Bam bam dilla, bam bam
	How you feelin, how you feelin, how you feelin in this mother fucker, god damn
	Bam bam
	One thing you cant do is stop us now
	Bam bam, bam bam
	Bam bam dilla, bam bam
	You cant stop the thing now
	ey what a bam bam
	Man its way too late, its way too late, its way too late you cant fuck with us
	Bam bam dilla, bam bam
	Bam bam, bam bam
	Bam bam, bam bam
	To the left, to the right
	Bam bam dilla, bam bam
	I wanna see everybody hands in the air like this
	ey what a bam bam
	Bam bam, bam bam
	Bam bam dilla, bam bam

	I just wanted you to know
	I loved you better than your own kin did
	From the very start
	I dont blame you much for wanting to be free
	I just wanted you to know',
    10,
    1,
    11,
    3
),
(
	'Blank Space',
    231,
    'Nice to meet you, where you been?
	I could show you incredible things
	Magic, madness, heaven, sin
	Saw you there and I thought
	Oh my God, look at that face
	You look like my next mistake
	Loves a game, wanna play?

	New money, suit and tie
	I can read you like a magazine
	Aint it funny, rumors fly
	And I know you heard about me
	So hey, lets be friends
	Im dying to see how this one ends
	Grab your passport and my hand
	I can make the bad guys good for a weekend

	So its gonna be forever
	Or its gonna go down in flames
	You can tell me when its over
	If the high was worth the pain
	Got a long list of ex-lovers
	Theyll tell you Im insane
	Cause you know I love the players
	And you love the game

	Cause were young and were reckless
	Well take this way too far
	Itll leave you breathless
	Or with a nasty scar
	Got a long list of ex-lovers
	Theyll tell you Im insane
	But Ive got a blank space, baby
	And Ill write your name

	Cherry lips, crystal skies
	I could show you incredible things
	Stolen kisses, pretty lies
	Youre the King, baby, Im your Queen
	Find out what you want
	Be that girl for a month
	Wait, the worst is yet to come, oh no

	Screaming, crying, perfect storms
	I can make all the tables turn
	Rose garden filled with thorns
	Keep you second guessing like
	"Oh my God, who is she?"
	I get drunk on jealousy
	But youll come back each time you leave
	Cause, darling, Im a nightmare dressed like a daydream

	So its gonna be forever
	Or its gonna go down in flames
	You can tell me when its over
	If the high was worth the pain
	Got a long list of ex-lovers
	Theyll tell you Im insane
	Cause you know I love the players
	And you love the game

	Cause were young and were reckless
	Well take this way too far
	Itll leave you breathless
	Or with a nasty scar
	Got a long list of ex-lovers
	Theyll tell you Im insane
	But Ive got a blank space, baby
	And Ill write your name

	Boys only want love if its torture
	Dont say I didnt say, I didnt warn ya
	Boys only want love if its torture
	Dont say I didnt say, I didnt warn ya

	So its gonna be forever
	Or its gonna go down in flames
	You can tell me when its over
	If the high was worth the pain
	Got a long list of ex-lovers
	Theyll tell you Im insane
	Cause you know I love the players
	And you love the game

	Cause were young and were reckless
	Well take this way too far
	Itll leave you breathless
	Or with a nasty scar
	Got a long list of ex-lovers
	Theyll tell you Im insane
	But Ive got a blank space, baby
	And Ill write your name',
    11,
    2,
    4,
    8
),
(
	'Work',
	219,
    'Work, work, work, work, work, work

	He said me haffi

	Work, work, work, work, work, work!
	He see me do mi
	Dirt, dirt, dirt, dirt, dirt, dirt!
	So me put in
	Work, work, work, work, work, work

	When you ah guh
	Learn, learn, learn, learn, learn

	Meh nuh cyar if him
	Hurt, hurt, hurt, hurt, hurting

	Dry me ah desert him

	Nuh time to have you lurking
	Him ah go act like he nah like it

	You know I dealt with you the nicest
	Nuh body touch me in the righteous
	Nuh botha text me in a crisis
	I believed all of your dreams, adoration
	You took my heart and my keys and my patience
	You took my heart on my sleeve for decoration
	You mistaken my love I brought for you for foundation
	All that I wanted from you was to give me
	Something that I never had
	Something that youve never seen
	Something that youve never been!
	Mmmmm!
	But I wake up and act like nothings wrong

	Just get ready for...

	Work, work, work, work, work, work

	He said me haffi
	Work, work, work, work, work, work!
	He see me do mi
	Dirt, dirt, dirt, dirt, dirt, dirt!

	So me put in
	Work, work, work, work, work, work
	Ner ner ner ner ner ner!
	When you a guh ner ner ner ner ner ner!
	Before the tables turn turn turn turn turn turn!

	Beg you something please
	Baby dont you leave
	Dont leave me stuck here in the streets, uh huh
	If I get another chance to

	I will never, no never neglect you
	I mean who am I to hold your past against you?
	I just hope that it gets to you
	I hope that you see this through
	I hope that you see this true
	What can I say?

	Please recognize Im tryin, babe!!!

	I have to

	Work, work, work, work, work, work
	He said me haffi
	Work, work, work, work, work, work!

	He see me do mi

	Dirt, dirt, dirt, dirt, dirt, dirt!
	So me put in
	Work, work, work, work, work, work
	When you ah guh
	Learn, learn, learn, learn, learn

	Meh nuh cyar if him
	Hurt, hurt, hurt, hurt, hurting

	Yeah, okay
	You need to get done, done, done, done at work, come over
	We just need to slow the motion
	Dont give that away to no one
	Long distance, I need you
	When I see potential I just gotta see it through

	If you had a twin, I would still choose you
	I dont wanna rush into it, if its too soon
	But I know you need to get done, done, done, done
	If you come over
	Sorry if Im way less friendly
	I got niggas tryna end me, oh
	I spilled all my emotions tonight, Im sorry
	Rollin, rollin, rollin, rollin, rollin
	How many more shots until youre rollin?
	We just need a face to face
	You could pick the time and the place
	You spent some time away
	Now you need to forward and give me all the...

	Work, work, work, work, work, work
	He said me haffi
	Work, work, work, work, work, work
	He se me do mi
	Dirt, dirt, dirt, dirt, dirt, dirt!
	So me put in
	Work, work, work, work, work, work
	When you ah guh
	Learn, learn, learn, learn, learn
	Meh nuh cyar if him
	Hurt, hurt, hurt, hurt, hurting

	Mmmmm, mmmmm
	Mmmmm, mmmmm
	Work, work, work, work, work, work
	Mmmmm, mmmmm',
    12,
    2,
    9,
    9
),
(
	'untitled 07 levitate',
	146,
    'Pimp pimp! (horray!)
	Pimp pimp! (horray!)
	(Horray!)
	Pimp pimp! (horray!)
	(Horray!)

	Love wont get you high as this
	Drugs wont get you high as this
	Fame wont get you high as this
	Chains wont get you high as this
	Juice wont get you high as this
	Crew wont get you high as this
	Hate wont get you high as this
	Levitate, levitate, levitate, levitate
	Love wont get you high as this
	Drugs wont get you high as this
	Fame wont get you high as this
	Chains wont get you high as this
	Juice wont get you high as this
	Levitate, levitate, levitate, levitate

	Life wont get you high like this here, no
	He wont get you high like this here, no
	She wont get you high like this here, no
	"For Free?" wont get you high like this here, no
	Two keys wont get you high, no, no, no
	Bentleys wont get you high, like, no
	Levitate, levitate, levitate, levitate
	Life wont get you high, no, no, no
	He wont get you high, no, no, no
	She wont get you high, no, no, no
	For free wont get you high, no, no, no
	Two keys wont get you high, no, no, no
	Bentleys wont get you high, no, no, no
	Bars wont get you high, no, no, no
	Levitate, levitate, levitate, levitate

	Shut your fuckin mouth and get some cash, you bitch, you
	You be in your feelings, I be in my bag, you bitch, you
	Santas reindeer better have some ass, you bitch, you
	Everything Im working, gotta be the gas, you bitch, you
	Shut your fuckin mouth and get some cash, you bitch
	You be in your feelings, I be in my bag, you bitch
	Santas reindeer better have some ass, you bitch
	Everything Im working, gotta be the
	Levitate, levitate, levitate, levitate

	Me dont want problems, me dont want problems
	Me dont want tricks, me dont want tricks
	Me do want dollars, me do want dollars
	Me want it big, me do want dollars
	Me dont want problems, we ride Impalas
	Me dont want tricks, me dont want tricks
	Me do want dollars, me dont want tricks
	Levitate, levitate, levitate, levitate
	We dont want problems, we dont want problems
	We dont want tricks, we dont want tricks
	We do want dollars, we do want dollars
	We do it big, we dont want problems
	We do it big, we dont want problems
	We do it big, we dont want tricks
	We dont want problems, we dont want problems
	Levitate, levitate, levitate, levitate

	Compton is where Im from
	Is where Im from, is where Im from

	Yeah, yeah
	Young Egypt
	Look, look
	I feel like Pacino in Godfather, Im charged
	Our father who art in Heaven, Kendrick at large
	Came in the game with a plan of beatin the odds
	What an accomplishment, broken promises
	Kept my focus anonymous til I dealt with the consequence
	The greatest and latest mogul, you know what time it is
	You niggas fear me like yall fear God
	You sound frantic, I hear panic in your voice
	Just know the mechanics of making your choice and writin your bars
	Before you poke out your chest, loosen your bra
	Before you step out of line and dance with the star
	I could never end a career if it never start
	The murderous capital, avenues lookin like evil dead zombies
	With batteries to the head
	The flattery of watchin my stock rise
	The salary, the compensation tripled my cock size
	I run through these stop signs with no brake fluid
	Just premium gas, do it for dolo
	Crash markets and prejudiced tags, look at my photo
	Black excellence, pessimist died countin my coin
	Hope its evident that I inspired a thousand emcees to do better
	I blew cheddar on youth centers, buildings and Bimmers and blue leather
	Forcasted my future, this is the future
	The mastermind until my next album, more power to you

	Come on

	This is a fifteen minute song
	Were just jammin out, we on stage
	Taz, we just jammin out
	Hundred thousand
	Hundred thousand, you gotta see it!
	Look, look, look, go back to the down note
	They all sing this shit, everybody

	Now I dont let you down, and for
	You see, you see, you see, you see
	But I dont shake you down, dog for you, you, you, you
	They say the government aint the truth, truth, truth, truth
	And the politicians always mislead the youth, youth, youth, youth

	But head is the answer
	Head is the future
	Dont second guess yourself
	Come on, give me some help
	Hey one more time, band, I need yall to help me out right now
	Head is the answer
	Head is the future, its the future, that nigga said
	Dont second guess yourself
	Come on, give me some help
	Say come on, come on, come on, come on, come on
	Come on, come on, my background singing
	Come on

	I said, girl you make me wanna uh
	The whole screaming now
	I said baby you make
	You make me wanna just ah!
	Baby you got me speechless right now
	I gotta take it there, I aint even playin no more
	Said you just make me wanna Drake you down
	To the ground, to the ground ground
	Like bam, bam, bam, bam, bam
	You just make me wanna Drake you down
	Down, around like bam, bam, bam, bam, bam
	And baby if your mamas around, if your mamas around
	If your mamas around, if your mamas around
	Tell her, tell her
	No discrimination, shes young nigga chasin
	And she can get this dick too!

	I said come on, come on, come on, come on, come on, come on
	Yeah, nigga
	You gotta do it, man
	We gonna lay that shit
	We gonna lay that shit, and watch what its gon do',
    2,
    1,
    6,
    10
),
(
	'Feel Good Inc',
    221,
    'Citys breaking down on a camels back
	They just have to go cause they dont know whack
	So all you fill the streets its appealing to see
	You wont get out the county, cause youre bad and free
	Youve got a new horizon Its ephemeral style
	A melancholy town where we never smile
	And all I want to hear is the message beep
	My dreams, theyve got to kiss, because I dont get sleep, no

	Windmill, Windmill for the land
	Learn forever hand in hand
	Take it all in on your stride
	It is stinking, falling down
	Love forever love is free
	Lets turn forever you and me
	Windmill, windmill for the land
	Is everybody in?

	Laughing gas these hazmats, fast cats
	Lining them up-a like ass cracks
	Ladies, homies, at the track
	Its my chocolate attack
	Shit, Im stepping in the heart of this here
	Care bear bumping in the heart of this here
	Watch me as I gravitate, ha ha ha
	Yo, we gonna go ghost town
	This Motown, with yo sound
	Youre in the place
	You gonna bite the dust
	Cant fight with us
	With yo sound, you kill the INC
	So dont stop, get it, get it
	Until youre cheddar header
	Yo, watch the way I navigate, ha ha ha

	Windmill, windmill for the land
	Turn forever hand in hand
	Take it all in on your stride
	It is stinking, falling down
	Love forever love is free
	Lets turn forever you and me
	Windmill, windmill for the land
	Is everybody in?',
    12,
    3,
    12,
    11
),
(
	'My Way',
    275,
    'And now, the end is near
	And so I face the final curtain
	My friend, Ill say it clear
	Ill state my case, of which Im certain

	Ive lived a life thats full
	Ive traveled each and every highway
	But more, much more than this
	I did it my way

	Regrets, Ive had a few
	But then again, too few to mention
	I did what I had to do
	And saw it through without exemption

	I planned each charted course
	Each careful step along the byway
	And more, much more than this
	I did it my way

	Yes, there were times, Im sure you knew
	When I bit off more than I could chew
	But through it all, when there was doubt
	I ate it up and spit it out
	I faced it all and I stood tall
	And did it my way

	Ive loved, Ive laughed and cried
	Ive had my fill my share of losing
	And now, as tears subside
	I find it all so amusing

	To think I did all that
	And may I say - not in a shy way
	Oh no, oh no, not me
	I did it my way

	For what is a man, what has he got
	If not himself, then he has naught
	To say the things he truly feels
	And not the words of one who kneels
	The record shows I took the blows
	And did it my way

	Yes, it was my way',
	7,
    2,
    13,
    null
),
(
	'BLOOD',
    118,
    'Is it wickedness?
	Is it weakness?
	You decide
	Are we gonna live or die?

	So I was takin a walk the other day
	And I seen a woman, a blind woman
	Pacin up and down the sidewalk
	She seemed to be a bit frustrated
	As if she had dropped somethin and
	Havin a hard time findin it
	So after watchin her struggle for a while
	I decide to go over and lend a helping hand, you know?

	"Hello, maam, can I be of any assistance?
	It seems to me that you have lost something
	I would like to help you find it"

	She replied:
	"Oh yes, you have lost something. Youve lost your life."

	Is it wickedness?

	Uh, Lamar stated his views
	Uh, Lamar stated his views
	Uh, Lamar stated his views
	Uh, Lamar stated his views

	Uh, Lamar stated his views on police brutality with that line in the song
	Quote: "And we hate the popo, wanna kill us in the street fo sho"
	Oh please, ugh, I dont like it',
    2,
    1,
    6,
    1
),
(
	'Do you mind',
    325,
    'Another one
	We The Best Music!

	Yo, he aint messing with no average chick, pop, pop
	He got Nicki, he know that he hit the jackpot
	Every baller tryna score, check them shot clocks
	But I hit em with them Bron/Iguodal blocks
	Eat the cake and he suck on my toes, yes
	Hitting them home runs, Ill be like "go Mets!"
	I want a dude thatll still kiss me when he mad
	Type to cop me diamonds, he can miss me with them bags

	Girl we been right here, thinkin bout it all night
	Baby you should be up in my bed
	Do you mind, do you mind? (DJ Khaled!)
	Baby you, do you mind? Do you mind? Do you mind?

	Im just trying to get to know ya
	Get a little closer, maybe post up
	Do you mind? Do you mind? Do you mind?
	Do you mind? Do you mind? Do you mind?
	Girl we been right here, thinkin bout it all night
	Baby you should be up in my bed
	Do you mind, do you mind?
	Baby you, do you mind? Do you mind? Do you mind?

	You know, you know, you know, you know
	We aint got forever and ever
	You know, you know, you know, you know
	Let me be the one, baby you deserve better
	You know, you know, you know, you know
	We aint got forever and ever
	You know, you know, you know, you know
	Let me be the one, baby do you mind? Do you mind?

	Ohh, do you mind if I talk to you?
	And do you mind if I touch you there?
	Baby know you can do better baby
	I know it dont get no better than me
	Lets not waste the time
	You aint gotta hold back cause once I get inside
	You wont change your mind, you know that you can take it
	No need to hesitate, Im gettin impatient
	Im not used to waiting, I want you to give it to me
	Come on let me taste it until I get in love
	Hope youre ready cause Imma beat it up
	Do you mind when Imma had it? Know how to heat it up

	I should, I should be the one, baby you gon learn that
	Girl I know your body, know where every curve at
	We been going all night til the early
	Know you, know you wanna take off when you on my runway
	We aint got to talk about his conversate
	Baby by the way I touch you, you know what Im saying
	Oh, oh, oh, ridin slow
	Oh, oh, oh

	Im just trying to get to know ya
	Get a little closer, maybe post up
	Do you mind? Do you mind? Do you mind?
	Do you mind? Do you mind? Do you mind?
	Girl we been right here, thinkin bout it all night
	Baby you should be up in my bed
	Do you mind, do you mind?
	Baby you, do you mind? Do you mind? Do you mind?

	You know, you know, you know, you know
	We aint got forever and ever
	You know, you know, you know, you know
	Let me be the one, baby you deserve better
	You know, you know, you know, you know
	We aint got forever and ever
	You know, you know, you know, you know
	Let me be the one, baby do you mind? Do you mind?

	Imma do that favor, drippin flavor in you two piece
	Imma keep my promise, never treat you like a groupie
	Calamari dinners, got you eatin raw sushi
	Still in the trap but like my bitches bougie
	Two cups of Styrofoam, excuse me little mama
	I can hold you down, be your friend and your lover
	You want watches, new Versaces, you want Celine
	Top back, screamin money aint a ting

	Seen the two G-wagons in my driveway
	Facetime, two black bottles by my fireplace
	Fell out with your peoples so you took the pictures down
	Instagram aint been the same since you so distant now
	Took you shopping in other places that I wont name
	First time your friends really got the see Balmain
	20 million cash, seen it there with my two eyes
	We the best and I told you this back in 05

	Im just trying to get to know ya
	Get a little closer, maybe post up
	Do you mind? Do you mind? Do you mind?
	Do you mind? Do you mind? Do you mind?
	Girl we been right here, thinkin bout it all night
	Baby you should be up in my bed
	Do you mind, do you mind?
	Baby you, do you mind? Do you mind? Do you mind?

	Oh, just in case you need me
	I dont mind
	Yo, tell them what to do, tell them what to do, tell them what to do
	When you see a bad bitch in front of you baby
	Assume the position

	Im just trying to get to know ya
	Get a little closer, maybe post up
	Do you mind? Do you mind? Do you mind?
	Do you mind? Do you mind? Do you mind?
	Girl we been right here, thinkin bout it all night
	Baby you should be up in my bed
	Do you mind, do you mind?
	Baby you, do you mind? Do you mind? Do you mind?',
    1,
    1,
    3,
    6
),
(
	'Pop Style',
    209,
    'Dropped outta school now we dumb rich, dumb rich
	This sound like some forty-three-oh-one shit, one shit
	All my niggas wanna do is pop style, pop style
	Turn my birthday into a lifestyle, lifestyle

	Tell my mom I love her if I do not make it
	Got so many chains they call me Chaining Tatum, they do
	And I like to finish what you think you started
	Man you boys just got to Hollywood
	You boys just started
	You dont know what you just started
	All I do is hang with the young and heartless
	All this is for my family, man, I try my hardest
	Its all I ever did and look where it got him
	Yeah, youve been on my mind lately
	Youve still got my number, girl you need to call me
	I feel like they wanna see me learn the hard way
	But you know I always handle that one my way
	Girl let me rock, rock, rock, rock, rock your body
	Justin Timberlake and then I hit the highway
	I cant trust no fuckin body
	They still out to get me cause they never got me

	They still out to get me, they dont get it
	I can not be gotten, thats a given
	They like Pablo why are all the windows tinted in your Tahoe?
	Why do you know every single bitch that I know?
	Why cant you just shut your mouth and take the high road?
	Fuck if I know, thats that Chicago, aye
	South, south, side, thats the motto, aye
	Cop a crib and spend ten million on remodel
	Take the devils out my life and preach the gospel, cause I know
	We went way, way past the line of scrimmage, aye
	Throne is back up in it, aye
	In the field like Emmitt, aye, yall get so offended, aye
	I be blacking out, I aint backing out
	Jay about his business, and Imma let you finish but I
	I just, I just, I just, I just wanna rock your body
	Take you to the garage and do some karate
	Chop it, chop it, chop it, chop it sipping sake
	Throw a thick bitch on a Kawasaki
	(Perfect)',
    9,
    1,
    7,
    2
),
(
	'Fly Me to the Moon',
    134,
    'Fly me to the moon
	Let me play among the stars
	Let me see what spring is like on
	A-Jupiter and Mars
	In other words, hold my hand
	In other words, baby, kiss me

	Fill my heart with song and let me sing for ever more
	You are all I long for
	All I worship and adore
	In other words, please be true
	In other words, I love you

	Fill my heart with song
	Let me sing for ever more
	You are all I long for, all I worship and adore
	In other words, please be true
	In other words
	In other words
	I love you',
    7,
    4,
    16,
    null
),
(
	'Well',
	180,
    'Lets say goodbye with a smile, dear
	Just for a while, dear, we must part
	Dont let this parting upset you
	Ill not forget you, sweetheart

	Well meet again
	Dont know where
	Dont know when
	But I know well meet again
	Some sunny day

	Keep smiling through
	Just like you always do
	Till the blue skies chase
	Those dark clouds far away

	And I will just say hello
	To the folks that you know
	Tell them you wont be long
	Theyll be happy to know
	That, as I saw you go
	You were singing this song

	Well meet again
	Dont know where
	Dont know when
	But I know well meet again
	Some sunny day

	And I will just say hello
	To the folks that you know
	Tell them you wont be long
	Theyll be happy to know
	That, as I saw you go
	You were singing this song

	Well meet again
	Dont know where
	Dont know when
	But I know well meet again
	Some sunny day',
    14,
    4,
    14,
    null
);

#Select skipanir
#A
SELECT nafn, diskur
FROM Lag
WHERE diskur = 1;

#B
SELECT nafn, flytjandi
FROM Lag
WHERE flytjandi = 1;

#C
SELECT nafn, tegund
FROM Lag
WHERE tegund = 4;

#D
SELECT nafn, lengd
FROM Lag
WHERE lengd > 300;

#E
SELECT nafn, utgafuar 
FROM Diskur
WHERE utgafudagur > 2010;

#F
SELECT Diskur.nafn, Flytjandi.nafn, Diskur.utgafuar
FROM Diskur
ORDER BY utgefandi.nafn
LIMIT 2;

#G
SELECT nafn, flytjandi, lengd
FROM Lag
ORDER BY lengd DESC
LIMIT 5;

#H
SELECT nafn, fjoldi_laga
FROM Diskur
ORDER BY fjoldi_laga DESC
LIMIT 2;

#I
SELECT Utgefandi nafn, count(Diskur.nafn)
FROM Diskur
JOIN Utgefandi
ON Utgefandi.ID = Diskur.utgefandi
GROUP BY Utgefandi.nafn
ORDER BY count(Diskur.nafn)
LIMIT 1;

#J
SELECT Diskur.nafn, Tegund.nafn, Utgefandi.nafn
FROM Diskur
JOIN Lag
ON Lag.diskur = Diskur.ID
JOIN Utgefandi
ON Utgefandi.ID = Diskur.utgefandi
JOIN Tegund
ON Tegund.ID = Lag.tegund
WHERE Diskur.utgafuar > 1998 AND Diskur.utgafuar < 2017
GROUP BY Utgefandi.nafn;

#K
SELECT count(nafn) as "A"
FROM Lag
WHERE nafn LIKE "A%";
SELECT count(nafn) as "s"
FROM Lag
WHERE nafn LIKE "%s%";

#L
SELECT nafn, 2017-faedingarAr
FROM Flytjandi;

#M
SELECT nafn, FORMAT(AVG(lengd))
FROM Lag;

#N
SELECT Flytjandi.nafn, count(Lag.nafn)
FROM Flytjandi
JOIN Lag
ON Flytjandi.ID = Lag.flytjandi
GROUP BY Flytjandi.nafn
HAVING count(Lag.nafn) > 4;

#O
SELECT Lag.nafn, Flytjandi.nafn,2017-Flytjandi.faedingarAr
FROM Lag
JOIN Flytjandi
ON Lag.flytjandi = Flytjandi.ID
GROUP BY Lag.nafn
ORDER BY Flytjandi.faedingarAr
LIMIT 1;

#7 fyrirspurnir
#1 Öll pop lög
SELECT nafn, tegund
FROM Lag
WHERE tegund = 2;

#2 Hvaða flytjendur eru hljómsveit
SELECT nafn, flokkur
FROM Lag
WHERE flokkur = 2;

#3 Hversu mörg lög eru á hverjum diski
SELECT nafn, fjoldi_laga
FROM Diskur;

#4 Öll kvenkyns flytjendur
SELECT nafn, kyn
FROM Flytjandi
WHERE kyn = "KVK";

#5 Allir flytjendur sem eru eldri en 30 ára
SELECT nafn, 2017-faedingarAr
FROM Flytjandi
WHERE (2017-faedingarAr) > 30;

#6 Öll lög skrifuð af Kendrick Lamar
SELECT nafn, hofundur
FROM Lag
WHERE hofundur = 2;

#7 Öll lög á Major Key diskinum
SELECT nafn, diskur
FROM Lag
WHERE diskur = 6;