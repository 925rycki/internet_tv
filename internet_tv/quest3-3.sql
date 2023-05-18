SELECT 
  channels.name AS channel_name, 
  time_slots.start, 
  time_slots.end, 
  seasons.number AS season_number, 
  episodes.number AS episode_number,
  episodes.title AS episode_title, 
  episodes.detail AS episode_detail
FROM channels
INNER JOIN time_slots ON time_slots.channel_id = channels.id
INNER JOIN episodes ON episodes.id = time_slots.episode_id
INNER JOIN seasons ON seasons.id = episodes.season_id
WHERE DATE(time_slots.start) = CURDATE()
ORDER BY time_slots.start;