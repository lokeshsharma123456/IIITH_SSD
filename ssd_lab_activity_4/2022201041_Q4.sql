	DELIMITER //
 CREATE PROCEDURE explicit_cur()
 BEGIN
	DECLARE V_cname varchar(100) ;
	DECLARE V_grade DECIMAL(10,0);
	DECLARE V_city varchar(100) ;
	DECLARE V_country varchar(100) ;
	DECLARE V_finished integer default 0; 

 	DECLARE c1_cursor CURSOR FOR  SELECT CUST_NAME , CUST_CITY , CUST_COUNTRY , GRADE
    FROM customer WHERE AGENT_CODE like "A00%" ;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET V_finished = 1;
	 OPEN c1_cursor;

	get_emp: LOOP

			FETCH c1_cursor INTO V_cname,V_city,V_country,V_grade;

 			IF V_finished = 1 THEN

 			LEAVE get_emp;

	END IF;

 select V_cname,V_city,V_country,V_grade;

 END LOOP get_emp;

 CLOSE c1_cursor;

 END //
 
 delimiter ;
 
 
 call explicit_cur();


	
	
