-- CREATE TABLE Students(id INTEGER PRIMARY KEY AUTOINCREMENT, firstname TEXT NOT NULL, lastname TEXT NOT NULL, dob TEXT NOT NULL);

-- CREATE TABLE Marks(id INTEGER PRIMARY KEY AUTOINCREMENT, student_id INTEGER, subject TEXT NOT NULL, mark INTEGER);

-- INSERT INTO Students(firstname, lastname, dob)
--                 VALUES('Lachlan', 'Snake', '26/09/2007');

-- INSERT INTO Students(firstname, lastname, dob) VALUES
--             ('Bobby', 'Bob', '3/01/2008'),
--             ('Bjorn', 'Johnson', '28/02/2007');

-- INSERT INTO Students(firstname, lastname, dob) VALUES
--            ('Tabitha', 'Michael', '23/10/2007'),
--            ('Bart', 'Simpson', '25/11/2007'),
--            ('Jennifer', 'Rose', '14/09/2007'),
--            ('Lequisha', 'Dequavious', '11/10/2007'),
--            ('Jill', 'Bloodborne', '28/03/2007');

-- INSERT INTO Marks(student_id, subject, mark) VALUES
--     (1, 'English', 50),
--     (1, 'Maths', 100),
--     (2, 'English', 67),
--     (2, 'Science', 80),
--     (3, 'English', 24),
--     (4, 'English', 97),
--     (5, 'Maths', 82),
--     (5, 'Science', 5);

-- UPDATE Students
--     SET firstname = 'Nick'
--     WHERE id = 2;

-- UPDATE Marks
--     SET subject = 'Math Advanced'
--     WHERE subject = 'Maths';

-- UPDATE Students
--     SET lastname = 'Simpson'
--     WHERE firstname = 'Jill';

-- UPDATE Marks
--     SET subject = 'English Standard'
--     WHERE subject = 'English';

-- UPDATE Marks
--     SET mark = 150
--     WHERE subject = 'Science';

-- DELETE FROM Students
--     WHERE id = 2;

-- INSERT INTO Students(firstname, lastname, dob)
--     VALUES('Bobby', 'Bob', '3/01/2008');

-- DELETE FROM Marks
--     WHERE mark < 25;

-- DELETE FROM Students
--     WHERE lastname = 'Simpson';

-- DELETE FROM Marks
--     WHERE mark > 100;

SELECT COUNT(id), firstname
    FROM Students
    GROUP BY firstname;

SELECT SUM(mark), subject
    FROM Marks
    GROUP BY subject;

SELECT AVG(mark), subject
    FROM Marks
    GROUP BY subject;

SELECT * FROM Students;

SELECT firstname, lastname FROM Students;

SELECT * FROM Students LIMIT 5;

SELECT firstname, dob from Students
    WHERE firstname LIKE 'B%';

SELECT lastname, dob FROM Students;

SELECT firstname, lastname FROM Students
    ORDER BY lastname ASC;

SELECT firstname, lastname, dob FROM Students
    WHERE dob LIKE '%2007';

SELECT * FROM Marks;

SELECT * FROM Marks
    WHERE subject = 'English';

SELECT subject, mark FROM Marks
    WHERE mark < 50;

SELECT subject, mark FROM Marks
    WHERE mark >= 50;

SELECT COUNT(id), lastname
    FROM Students
    GROUP BY lastname;

SELECT MAX(mark), subject
    FROM Marks
    GROUP BY subject;

SELECT COUNT(id), subject
    FROM Marks
    GROUP BY subject;

SELECT Students.firstname, Students.lastname, 
        Marks.subject, Marks.mark
    FROM Students JOIN Marks ON Students.id = Marks.student_id
    WHERE Marks.mark >= 50;

INSERT INTO Marks(student_id, subject, mark) VALUES
    (6, 'Maths', 88),
    (6, 'English', 75),
    (7, 'Science', 92),
    (7, 'Maths', 78),
    (8, 'English', 85),
    (8, 'Science', 90);

SELECT Students.*, Marks.*
    FROM Students JOIN Marks
    ON Students.id = Marks.student_id;

SELECT Students.*, Marks.*
    FROM Students JOIN Marks
    ON Students.id = Marks.student_id
    WHERE Marks.mark >= 50;

SELECT Students.firstname, Students.lastname, 
        Marks.subject, Marks.mark
    FROM Students JOIN Marks
    ON Students.id = Marks.student_id
    WHERE Marks.subject = 'English';