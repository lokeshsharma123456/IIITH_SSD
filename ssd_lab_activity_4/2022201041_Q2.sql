DELIMITER //
 CREATE PROCEDURE Banglore_cust
 ( IN CITY VARCHAR(30) )
	BEGIN
	SELECT CUST_NAME FROM customer where WORKING_AREA = CITY;	
END//
DELIMITER ;

 CALL Banglore_cust( "Bangalore");

