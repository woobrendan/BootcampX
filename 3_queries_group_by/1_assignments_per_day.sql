Select day, COUNT(*) as total_assignments
FROM assignments
GROUP BY day
Order by day;
