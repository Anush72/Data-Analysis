-- Looking at different table

-- USE database AFl
USE AFl;

-- Looking at different tables

SELECT TOP 10 * FROM matches;

SELECT TOP 10 * FROM player_stats;

SELECT TOP 10 * FROM teams;

SELECT TOP 10 * FROM players;


-- TOP Goal Scorers

SELECT 
p.player_name,
SUM(ps.goals) as total_goals
FROM player_stats ps
JOIN players p on ps.player_id = p.player_id
GROUP BY p.player_name
ORDER BY total_goals DESC;

-- MOST Active Players
SELECT 
	p.player_name,
	SUM(ps.disposals) as total_disposals
FROM player_stats ps
JOIN players p on ps.player_id = p.player_id
GROUP BY p.player_name
ORDER BY total_disposals DESC;

-- BEST Teams by Total Goals
SELECT 
t.team_name,
sum(ps.goals) as total_goals
FROM player_stats ps
JOIN players p on ps.player_id = p.player_id
JOIN teams t on p.team_id = t.team_id
GROUP BY t.team_name
ORDER BY total_goals DESC;

-- BEST Win count per Team
SELECT 
    t.team_name,
    COUNT(*) AS wins
FROM matches m
JOIN teams t 
    ON t.team_id = 
        CASE 
            WHEN m.winner = 'home' THEN m.home_team_id
            WHEN m.winner = 'away' THEN m.away_team_id
        END
GROUP BY t.team_name
ORDER BY wins DESC;

