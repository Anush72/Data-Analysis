-- Counting the total matches
USE AFL;
SELECT 
count(*) as Total_Matches
from matches;

-- All the team
SELECT * 
FROM teams;

-- Total number of playes
SELECT
COUNT(*) as Total_Players
FROM players;

-- Total goal scored by each players
SELECT p.player_name,
SUM(ps.goals) as Total_goals
FROM player_stats ps
JOIN players p on p.player_id = ps.player_id
GROUP BY p.player_name
ORDER BY total_goals DESC;

-- Total Disposal per Player
SELECT p.player_name,
SUM(ps.disposals) as Total_disposals
FROM player_stats ps
JOIN players p on p.player_id = ps.player_id
GROUP BY p.player_name
ORDER BY Total_disposals DESC;

-- Average Goal per Player
SELECT p.player_name,
AVG(ps.goals) as Average_goals
FROM player_stats ps
JOIN players p on p.player_id = ps.player_id
GROUP BY p.player_name
ORDER BY Average_goals DESC;

-- Maximum Goals Scored in a single match
SELECT 
MAX(goals) as Maximum_goal 
FROM player_stats;

-- Minimum Disposals recorded by any player

SELECT 
MIN(disposals) as minimum_disposals
FROM player_stats;


-- JOINS
-- List all players with their team name
SELECT p.player_name,T.team_name
FROM players p 
JOIN Teams T on p.team_id = T.team_id;


-- Find the total goal scored by each team
SELECT 
T.team_name,
SUM(ps.goals) as Total_Goals
FROM players p 
JOIN Teams T on p.team_id = T.team_id
JOIN player_stats ps on ps.player_id = p.player_id
GROUP BY T.team_name
ORDER BY Total_Goals DESC;

-- Average disposal per team
SELECT 
T.team_name,
AVG(ps.disposals) as Average_Disposals
FROM players p 
JOIN Teams T on p.team_id = T.team_id
JOIN player_stats ps on ps.player_id = p.player_id
GROUP BY T.team_name
ORDER BY Average_Disposals DESC;

-- Match played by each teams
SELECT 
    all_matches.team_id,
    T.team_name,
    COUNT(*) AS total_matches 
FROM (
    SELECT home_team_id AS team_id FROM matches
    UNION ALL
    SELECT away_team_id FROM matches
) AS all_matches 
JOIN teams T on T.team_id = all_matches.team_id
GROUP BY all_matches.team_id,T.team_name
ORDER BY total_matches DESC;




