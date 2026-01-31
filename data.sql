-- 20 Members
INSERT INTO member (member_id, name, address, phone_number) VALUES 
('M01', 'James Bond', 'London, UK', '007007007'), ('M02', 'Tony Stark', 'Malibu, USA', '012345678'),
('M03', 'Bruce Wayne', 'Gotham City', '0999888777'), ('M04', 'Peter Parker', 'Queens, NY', '011223344'),
('M05', 'Clark Kent', 'Metropolis', '0555666777'), ('M06', 'Diana Prince', 'Themyscira', '0888000111'),
('M07', 'Steve Rogers', 'Brooklyn, NY', '019411941'), ('M08', 'Natasha Romanoff', 'Moscow, Russia', '0777555333'),
('M09', 'Wanda Maximoff', 'Sokovia', '0444222111'), ('M10', 'Stephen Strange', 'Bleecker St, NY', '0111999222'),
('M11', 'Thor Odinson', 'Asgard', '000000001'), ('M12', 'Loki Laufeyson', 'Asgard', '000000002'),
('M13', 'Arthur Curry', 'Atlantis', '0222333444'), ('M14', 'Barry Allen', 'Central City', '0333444555'),
('M15', 'Hal Jordan', 'Coast City', '0444555666'), ('M16', 'Victor Stone', 'Detroit, MI', '0555666777'),
('M17', 'Oliver Queen', 'Star City', '0666777888'), ('M18', 'John Constantine', 'Liverpool, UK', '0777888999'),
('M19', 'Lucifer Morningstar', 'Los Angeles', '066666666'), ('M20', 'Mazikeen Smith', 'Hell', '0999666333');

-- 5 Categories & 5 Authors & 5 Publishers
INSERT INTO category VALUES ('C1', 'Fiction'), ('C2', 'Computing'), ('C3', 'History'), ('C4', 'Science'), ('C5', 'Fantasy');
INSERT INTO author VALUES ('A1', 'J.K. Rowling'), ('A2', 'George Orwell'), ('A3', 'Robert Martin'), ('A4', 'Stephen King'), ('A5', 'Elon Musk');
INSERT INTO publisher VALUES ('P1', 'Oxford Press'), ('P2', 'Pearson'), ('P3', 'O-Reilly'), ('P4', 'HarperCollins'), ('P5', 'Penguin');

-- 3 Librarians & 2 Admins
INSERT INTO librarian VALUES ('L01', 'Sarah Connor'), ('L02', 'Ellen Ripley'), ('L03', 'John McClane');
INSERT INTO administrator VALUES ('ADM1', 'Nick Fury', 'fury@shield.gov', '0911911911'), ('ADM2', 'Maria Hill', 'hill@shield.gov', '0911911912');

-- 2 Policies
INSERT INTO policy_rule VALUES 
('POL1', 'ADM1', '2026-01-01', '2026-12-31', 2.0, 14),
('POL2', 'ADM2', '2026-01-01', '2026-12-31', 5.0, 7);

-- 20 Books
INSERT INTO book VALUES 
('B01', 'P1', 'L01', 'Harry Potter 1', '1997-06-26'), ('B02', 'P1', 'L01', 'Harry Potter 2', '1998-07-02'),
('B03', 'P2', 'L02', 'Clean Code', '2008-08-01'), ('B04', 'P3', 'L03', 'SQL Performance', '2020-05-12'),
('B05', 'P4', 'L01', '1984', '1949-06-08'), ('B06', 'P5', 'L02', 'The Shining', '1977-01-28'),
('B07', 'P2', 'L03', 'Java Design Patterns', '2015-10-10'), ('B08', 'P3', 'L01', 'Python Basics', '2021-02-20'),
('B09', 'P4', 'L02', 'World War II', '2010-05-05'), ('B10', 'P5', 'L03', 'SpaceX History', '2023-11-11'),
('B11', 'P1', 'L01', 'The Hobbit', '1937-09-21'), ('B12', 'P2', 'L02', 'Data Structures', '2019-03-15'),
('B13', 'P3', 'L03', 'AI Revolution', '2024-01-01'), ('B14', 'P4', 'L01', 'Cyber Security', '2022-07-07'),
('B15', 'P5', 'L02', 'Digital Marketing', '2018-09-09'), ('B16', 'P1', 'L03', 'Chemistry 101', '2017-04-04'),
('B17', 'P2', 'L01', 'Modern Physics', '2016-03-03'), ('B18', 'P3', 'L02', 'Database Internals', '2020-08-08'),
('B19', 'P4', 'L03', 'Economics Today', '2021-12-12'), ('B20', 'P5', 'L01', 'Psychology 101', '2019-06-06');

-- 20 Book Copies
INSERT INTO book_copy VALUES 
('BC01', 'B01'), ('BC02', 'B02'), ('BC03', 'B03'), ('BC04', 'B04'), ('BC05', 'B05'),
('BC06', 'B06'), ('BC07', 'B07'), ('BC08', 'B08'), ('BC09', 'B09'), ('BC10', 'B10'),
('BC11', 'B11'), ('BC12', 'B12'), ('BC13', 'B13'), ('BC14', 'B14'), ('BC15', 'B15'),
('BC16', 'B16'), ('BC17', 'B17'), ('BC18', 'B18'), ('BC19', 'B19'), ('BC20', 'B20');

-- 10 Loan Records (Mỗi người mượn khoảng 2 cuốn)
INSERT INTO loan VALUES 
('LN01', 'M01', 'L01', 'POL1', '2026-01-01'), ('LN02', 'M02', 'L02', 'POL1', '2026-01-05'),
('LN03', 'M03', 'L03', 'POL2', '2026-01-10'), ('LN04', 'M04', 'L01', 'POL1', '2026-01-15'),
('LN05', 'M05', 'L02', 'POL2', '2026-01-20'), ('LN06', 'M06', 'L03', 'POL1', '2026-01-25'),
('LN07', 'M07', 'L01', 'POL1', '2026-01-28'), ('LN08', 'M08', 'L02', 'POL2', '2026-01-29'),
('LN09', 'M09', 'L03', 'POL1', '2026-01-30'), ('LN10', 'M10', 'L01', 'POL2', '2026-01-31');

-- 20 Loan Details (Chi tiết mượn)
INSERT INTO loan_detail (loan_id, book_copy_id, overdue_date, return_date, sum_of_fine) VALUES 
('LN01', 'BC01', '2026-01-15', '2026-01-14', 0), ('LN01', 'BC02', '2026-01-15', '2026-01-16', 2.0),
('LN02', 'BC03', '2026-01-19', '2026-01-18', 0), ('LN02', 'BC04', '2026-01-19', NULL, 0),
('LN03', 'BC05', '2026-01-17', '2026-01-20', 15.0), ('LN03', 'BC06', '2026-01-17', NULL, 0),
('LN04', 'BC07', '2026-01-29', '2026-01-28', 0), ('LN04', 'BC08', '2026-01-29', NULL, 0),
('LN05', 'BC09', '2026-01-27', '2026-01-27', 0), ('LN05', 'BC10', '2026-01-27', '2026-01-30', 15.0),
('LN06', 'BC11', '2026-02-08', NULL, 0), ('LN06', 'BC12', '2026-02-08', NULL, 0),
('LN07', 'BC13', '2026-02-11', NULL, 0), ('LN07', 'BC14', '2026-02-11', NULL, 0),
('LN08', 'BC15', '2026-02-05', NULL, 0), ('LN08', 'BC16', '2026-02-05', NULL, 0),
('LN09', 'BC17', '2026-02-13', NULL, 0), ('LN09', 'BC18', '2026-02-13', NULL, 0),
('LN10', 'BC19', '2026-02-07', NULL, 0), ('LN10', 'BC20', '2026-02-07', NULL, 0);

INSERT INTO book_of_author (author_id, book_id) VALUES 
('A1', 'B01'), ('A1', 'B02'), ('A1', 'B11'), ('A1', 'B20'), 
('A2', 'B05'), ('A2', 'B09'), ('A2', 'B15'), ('A2', 'B19'), 
('A3', 'B03'), ('A3', 'B04'), ('A3', 'B07'), ('A3', 'B08'), 
('A3', 'B12'), ('A3', 'B14'), ('A3', 'B18'),               
('A4', 'B06'), ('A4', 'B16'), ('A4', 'B17'),               
('A5', 'B10'), ('A5', 'B13');                               

INSERT INTO book_category (book_id, category_id) VALUES 
('B01', 'C5'), ('B02', 'C5'), ('B11', 'C5'), -- Fantasy
('B03', 'C2'), ('B04', 'C2'), ('B07', 'C2'), -- Computing
('B08', 'C2'), ('B12', 'C2'), ('B14', 'C2'), -- Computing
('B15', 'C2'), ('B18', 'C2'),               -- Computing
('B05', 'C1'), ('B06', 'C1'), ('B20', 'C1'), -- Fiction
('B09', 'C3'), ('B19', 'C3'),               -- History
('B10', 'C4'), ('B13', 'C4'), ('B16', 'C4'), ('B17', 'C4'); -- Science
