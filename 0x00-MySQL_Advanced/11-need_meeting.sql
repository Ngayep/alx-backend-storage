-- Create a view need_meeting that lists students with a score < 80 and either no last_meeting or the last meeting was over a month ago
CREATE VIEW need_meeting AS
SELECT name
FROM students
WHERE score < 80
AND (
    last_meeting IS NULL 
    OR last_meeting < DATE_SUB(CURDATE(), INTERVAL 1 MONTH)
);
