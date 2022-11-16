--Multiple inserts with one single statement--
INSERT INTO student (name, lastname) VALUES ('Ichibē', 'Hyōsube'), 
                                            ('Tenjirō', 'Kirinji'),
                                            ('Kirio', 'Hikifune'),
                                            ('Ōetsu', 'Nimaiya'),
                                            ('Senjumaru', 'Shutara');

INSERT INTO category (name) VALUES ('FrontEnd'),
                                   ('Programming'),
                                   ('Databases'),
                                   ('Data Science');
								  
INSERT INTO course (name, category_id) VALUES ('HTML', 1),
                                              ('CSS', 1),
                                              ('JS', 1),
                                              ('PHP', 2),
                                              ('Java', 2),
                                              ('C++', 2),
                                              ('PostgreSQL', 3),
                                              ('MySQL', 3),
                                              ('Oracle', 3),
                                              ('SQL Server', 3),
                                              ('SQLite', 3),
                                              ('Pandas', 4),
                                              ('Machine Learning', 4),
                                              ('Power BI', 4);
											 
INSERT INTO student_course VALUES (1, 4),
                                  (1, 11),
                                  (2, 1),
                                  (2, 2),
                                  (3, 3),
                                  (3, 4),
                                  (4, 4),
                                  (4, 5),
                                  (4, 6);