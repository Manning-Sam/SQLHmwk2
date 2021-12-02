--INNER JOIN order matters!
select * 
from artists
inner join favorite_song
on favorite_song.artist_id = artists.artists_id;

--inner join with constraints
select song_name, artsit_name
from favorite_song
inner join artist
on favorite_song.artist_id = artist.artist_id
where song_name like 'H%';

--left table is the from clause
--right table is the join clause

--left join
select artist_id, song_name, artist_name
from favorite_song
left join artist 
on favorite_song.artis_id = artists.artist_id;

--right join 
select artist_id, song_name, artist_name
from favorite_song
right join artist 
on favorite_song.artis_id = artists.artist_id;

--full join
select f_s.arstist_id, art.artist_name, record_label, f_s.song_name, album, count(*)
from favorite_song as f_s
full join artists as art
on f_s.artist_id = art.artist_id
group by f_s artsit_id, art.artists_name, record_label, f_s.song_name, album
order by count(*) desc;

--subqueries
select first_name, last_name
from actor
where actor_id in (
	select film_actor.actor_id
	from actor
	inner join film_actor
	on actor.actor_id = film_actor.actor_id
	inner join film
	on film.film_id = film_actor.film_id 
	where title = 'Mulan Moon'
);
-- Sub Query
-- You can make sub queries in the SELECT, FROM, and WHERE statement

SELECT headers_you_want_to_see
FROM my_table
WHERE condition_goes_here;

-- WHERE clause
-- Two basic queries, before combining them
-- query 1: find a customer_id that has more than $175 total purchase
select * from payment;

select customer_id
from payment
group by customer_id 
having sum(amount) > 175
order by sum(amount) desc;

-- query 2: find the customer info (name, address, ...)
select * from customer;

select first_name, last_name, email
from customer;
-- FINAL query: we combine the two queries into 1 using subqueries
-- our inner query will always happen first
select first_name, last_name, email, customer_id
from customer
where customer_id in (
	select customer_id
	from payment
	group by customer_id 
	having sum(amount) > 175
	order by sum(amount) desc
);

-- ANOTHER WHERE clause subquery
select first_name, last_name
from actor
where actor_id in (
	select film_actor.actor_id
	from actor
	inner join film_actor
	on acto



