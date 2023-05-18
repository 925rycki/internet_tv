SELECT
  title AS episode_title,
  views
FROM episodes
ORDER BY views DESC
LIMIT 3;