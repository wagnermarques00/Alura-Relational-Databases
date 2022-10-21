SELECT * 
	FROM student
	WHERE id = 1; /* got one result */
	
DELETE 
	FROM student
	WHERE id = 1; 
	
SELECT * 
	FROM student
	WHERE id = 1; /* no result because it was deleted */	