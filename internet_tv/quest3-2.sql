SELECT
  programs.title AS program_title,
  seasons.number  AS season_number, 
  episodes.number AS episode_number,
  episodes.title AS episode_title,
  episodes.views  AS viwes
FROM programs
INNER JOIN seasons ON programs.id = seasons.program_id
INNER JOIN episodes ON seasons.id = episodes.season_id
ORDER BY views DESC
LIMIT 3;