SELECT SUM(assignment_submissions.duration) AS total_duration
FROM students 
  JOIN cohorts ON cohort_id = cohorts.id
  JOIN assignment_submissions ON student_id = students.id
WHERE cohorts.name = 'FEB12';