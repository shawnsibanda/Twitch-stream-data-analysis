CREATE DATABASE Twitch_analysis;
USE twitch_analysis;

CREATE TABLE stream(
date DATETIME,
device_id VARCHAR(100),
login VARCHAR(100),
channel CHAR(20),
country CHAR(30),
player CHAR(20),
game CHAR(50),
stream_format CHAR(50),
subscriber CHAR(10)
);

CREATE TABLE chat(
date DATETIME,
device_id VARCHAR(100),
login VARCHAR(100),
channel CHAR(20),
country CHAR(30),
player CHAR(20),
game CHAR(50)
);


-- Distinct games 
SELECT DISTINCT(game)
FROM stream;

-- Total streams by game to determine the most popular game
SELECT game, COUNT(*) AS total_streams
FROM stream
GROUP BY 1
ORDER BY 2 DESC;

-- Distinct channels
SELECT DISTINCT(channel)
FROM stream;

-- Top 10 most streamed channels
SELECT channel, COUNT(*) AS stream_count
FROM stream
GROUP BY 1
ORDER BY 2 DESC
LIMIT 10;

-- Viewer devices distribution
SELECT player AS device_type, COUNT(*) AS total_views
FROM stream
GROUP BY player
ORDER BY 2 DESC;


-- Countries with the highest activity
SELECT country, COUNT(*) AS total_streams
FROM stream
GROUP BY 1
ORDER BY 2 DESC;

-- Top 5 countries where the most popular game is streamed the most
SELECT country, COUNT(game)
FROM stream
WHERE game LIKE 'League%' AND country IS NOT NULL
GROUP BY 1
ORDER BY 2 DESC
LIMIT 5;

-- View count for the hours in the United Kingdom
SELECT date_format(date, '%H') AS 'Hours', COUNT(*) AS 'Count'
FROM stream
WHERE country = 'GB'
GROUP BY 1;

-- Chat activity by game
SELECT game, COUNT(*) AS total_messages
FROM chat 
GROUP BY 1
ORDER BY 2 DESC;

-- Join analysis: streams vs chat engagement
SELECT s.game, COUNT(DISTINCT s.device_id) AS unique_viewers, COUNT(c.device_id) AS chat_messages
FROM stream s
LEFT JOIN chat c
ON s.device_id = c.device_id
GROUP BY 1
ORDER BY 2 DESC;

-- Subscriber vs non-subscriber streams
SELECT subscriber, COUNT(*) AS total_streams
FROM stream
WHERE subscriber IS NOT NULL
GROUP BY 1;
