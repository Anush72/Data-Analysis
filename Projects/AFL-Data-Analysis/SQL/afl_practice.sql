-- Counting the total matches
USE AFl;
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
SUM(ps.goals) as Total_Goals
FROM player_stats ps
JOIN players p ON ps.player_id = p.player_id
GROUP BY p.player_name
ORDER BY Total_Goals DESC;

-- Total Disposal per player
SELECT p.player_name,
SUM(ps.disposals) as Total_Disposals
FROM player_stats ps
JOIN players p ON ps.player_id = p.player_id
GROUP BY p.player_name
ORDER BY Total_Disposals DESC;

-- Average Goal Per Player
SELECT p.player_name,
AVG(ps.goals) as Total_Average
FROM player_stats ps
JOIN players p ON ps.player_id = p.player_id
GROUP BY p.player_name
ORDER BY Total_Average DESC;

-- Maximum Goal scored in a single match
SELECT 
MAX(goals) as Maximum_Goals
FROM player_stats;

-- Minimum Disposals recorded by any player
SELECT 
MIN(disposals) as Minimum_Disposals
FROM player_stats;

-- List all players wiith their team names
SELECT t.team_name, p.player_name
FROM players p 
JOIN teams T on T.team_id = p.team_id;


-- Total Score Scored by Ecah team
SELECT T.team_name,
SUM(ps.goals) as Total_Goal
FROM teams T 
JOIN players  p on p.team_id = T.team_id
JOIN player_stats ps on ps.player_id = p.player_id
GROUP BY T.team_name
ORDER BY Total_Goal DESC;

-- Total Tackles by Each Team
SELECT T.team_name,
SUM(ps.tackles) as Total_Tackles
FROM teams T 
JOIN players  p on p.team_id = T.team_id
JOIN player_stats ps on ps.player_id = p.player_id
GROUP BY T.team_name
ORDER BY Total_Tackles DESC;

