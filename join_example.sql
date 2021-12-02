create table artists(
	artist_id serial primary key,
	artist_name varchar(100),
	record_label varchar(100)
);

select * from artists;


create table favorite_song(
	song_id serial primary key,
	song_name varchar(100),
	artist_id integer,
	album varchar(100),
	date_published date,
	plays integer,
	foreign key (artist_id) references artists (artist_id)
);

select * from favorite_song;

--dml
--inserting data into the table
insert into artist (artist_name, record_label)
values ('pop smoke', 'republic records'), ('mac miller', 'rostrum records'), ('juice wrld', 'interscope records'), ('nispsey hussle', 'all money in no money out');

insert into artist(artist_name)
values('chance the rapper');

select * from artists;
--items need to align positionally
insert into favorite_song (song_name, artist_id, album, date_published, plays)
values
('blue world', 2, 'circles', '2020-01-17', 142556902),
('welcome to the party', 1, 'meet the woo', '2019-07-26', 282147889),
('So It Goes', 2, 'Swimming', '2018-08-03', 4912657),
('Yea Yea', 1, 'Shoot Fot The Stars Aim For The Moon', '2020-07-03', 6824587),
('Lucid Dreams', 3, 'Goodbye & Good Riddance', '2018-05-18', 1699199935),
('Hard Work Pays Off', 3, 'WRLD ON DRUGS', '2018-10-19', 517858962),
('Hussle and Motivate', 4, 'Victory Lap', '2018-02-16', 51656462),
('Grinding All My Life', 4, 'Victory Lap', '2018-02-16', 119751625);

insert into favorite_song(song_name)
values('dreamcatcher');

select * from favorite_song;

