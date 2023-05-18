SELECT
  time_slots.start, 
  time_slots.end, 
  seasons.number AS season_number, 
  episodes.number AS episode_number,
  episodes.title AS episode_title, 
  episodes.detail AS episode_detail
FROM time_slots
INNER JOIN episodes ON time_slots.episode_id = episodes.id
INNER JOIN seasons ON episodes.season_id = seasons.id
WHERE time_slots.channel_id = 1
AND time_slots.start BETWEEN NOW() AND DATE_ADD(CURDATE(), INTERVAL 1 WEEK)
ORDER BY time_slots.start;