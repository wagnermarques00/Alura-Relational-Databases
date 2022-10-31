--Just populating
INSERT INTO student ("name") VALUES ('Vinícius Dias');
INSERT INTO student ("name") VALUES ('Nico Steppat');
INSERT INTO student ("name") VALUES ('João Roberto');
INSERT INTO student ("name") VALUES ('Diego');
INSERT INTO student ("name") VALUES ('Diogo');


SELECT * 
	FROM student s
	WHERE "name" = 'Diego'; /* one result*/
	
SELECT * 
	FROM student s
	WHERE "name" <> 'Diego'; /* four results*/
	
SELECT *
	FROM student s 
	WHERE "name" != 'Diego'; /* same as above*/
	
SELECT *
	FROM student s 
	WHERE "name" LIKE '_iego'; /* one result, "ending with iego" */
	
SELECT *
	FROM student s 
	WHERE "name" LIKE 'di_go'; /* two results, the _ ignores the character*/
	
SELECT *
	FROM student s 
	WHERE "name" NOT LIKE 'di_go'; /* oposite of above */
	
SELECT *
	FROM student s 
	WHERE "name" LIKE '% %'; /* filter any element with an space, regardless of the position */
	
SELECT *
	FROM student s 
	WHERE "name" LIKE '%as'; /* filter any element ending with dias -> 1 result*/
	
SELECT *
	FROM student s 
	WHERE "name" LIKE 'as%'; /* filter any element ending with dias -> 0 result*/
	
	
SELECT *
	FROM student s 
	WHERE "name" LIKE '%i%a%'; /* filter any element with "i" and "a" (in that order) -> 2 results*/