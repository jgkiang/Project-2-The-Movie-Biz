drop table oscar_filter;

create table oscar_filter (
	numbest int,
	year_film int,
	category varchar,
	film varchar primary key,
	winner boolean
);

select * from oscar_filter;

drop table omdb_api;

create table omdb_api(
	numbest int,
	title varchar primary key,
	boxoffice varchar,
	imdbrating decimal,
	metascore int
)

select * from omdb_api

select oscar_filter.film, omdb_api.boxoffice, omdb_api.imdbrating, omdb_api.metascore, oscar_filter.year_film, oscar_filter.category, oscar_filter.winner
from oscar_filter
inner join omdb_api on
oscar_filter.film = omdb_api.title
