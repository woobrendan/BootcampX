SELECT assignments.id AS id, assignments.name AS name, day, chapter, COUNT(assignment_requests) AS total_requests
FROM assignments
  JOIN assistance_requests ON assignment_id = assignments.id
GROUP BY assignments.id
ORDER BY total_requests DESC;