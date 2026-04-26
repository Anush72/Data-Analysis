-- Creating database
CREATE DATABASE AFl;

-- USING DATABSE
USE AFL;


-- CREATING THE 4 tables mathces,teams,players and players stats

-- Table matches

CREATE TABLE matches (
	match_id VARCHAR(100),
	match_name VARCHAR(255),
	mathc_date DATE,
	venue VARCHAR(255),
	home_team_id VARCHAR(50),
	away_team_id VARCHAR(50),
	winner VARCHAR(100),
	margin INT
);

-- Table teams

CREATE TABLE teams (
	team_id VARCHAR(100),
	team_name VARCHAR(100)
);

-- Table players

CREATE TABLE players (
	player_id VARCHAR(50),
	player_name VARCHAR(100),
	team_id VARCHAR(50)
);

-- Table player_stats

CREATE TABLE player_stats (
	player_id VARCHAR(50),
	match_id VARCHAR(100),
	goals INT,
	disposals INT,
	marks INT,
	tackles INT
);

-- look at raw data
SELECT TOP 1 * 
FROM afl_raw_data;

-- INSERT INTO players

INSERT INTO players
	SELECT DISTINCT
	player_playerid,
	player_givenname+' '+player_surname AS player_name,
	teamId
	FROM afl_raw_data;

-- INSERT INTO player_stats
INSERT INTO player_stats
SELECT
    player_playerid,
    matchId,
    goals,
    disposals,
    marks,
    tackles
FROM afl_raw_data;

-- INSERT into Matches
INSERT INTO matches
SELECT DISTINCT
    matchId,
    match_name,
    match_date,
    venue_name_x,
    match_homeTeamId,
    match_awayTeamId,
    match_winner,
    winning_margin
FROM afl_raw_data;

-- INSERT INTO teams
INSERT INTO teams
SELECT DISTINCT
    teamId,
    team_name
FROM afl_raw_data;