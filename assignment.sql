USE mysql_assignment_bd;
SELECT * from Members;

INSERT INTO Members (id, name, age) VALUES
(1, 'Jane Doe', 28),
(2, 'John Smith', 35),
(3, 'Alice Johnson', 22);

DELETE FROM Members
WHERE name = 'John Smith';

USE mysql_assignment_bd;
SELECT * from WorkoutSessions;

INSERT INTO WorkoutSessions (session_id, member_id, session_date, session_time, activity) VALUES
(1, 1, '2024-08-01', 'Morning', 'Yoga'),
(2, 2, '2024-08-01', 'Afternoon', 'Cardio'),
(3, 3, '2024-08-01', 'Evening', 'Weightlifting');

UPDATE WorkoutSessions
SET session_time = 'Evening'
WHERE member_id = (SELECT id FROM Members WHERE name = 'Jane Doe');

DELETE FROM WorkoutSessions
WHERE member_id = (SELECT id FROM Members WHERE name = 'John Smith');
