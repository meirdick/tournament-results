-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.

-- create table "players"
create table players (
  id serial PRIMARY KEY,
  player_name text,
  wins integer,
  matches integer
);

--create the matches table
create table matches (
  match_id serial primary key,
  player1 integer references players(id),
  player2 integer references players(id),
  winner integer references players(id)
);
