SELECT cohorts.name AS cohort, COUNT(assignment_submissions.*) AS total_submissions
FROM cohorts
 JOIN students ON cohorts.id = cohort_id
 JOIN assignment_submissions ON students.id = assignment_submissions.student_id
GROUP BY cohorts.name
ORDER BY COUNT(assignment_submissions.*) DESC;