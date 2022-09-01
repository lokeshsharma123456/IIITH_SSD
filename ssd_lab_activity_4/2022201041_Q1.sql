DELIMITER //
 CREATE PROCEDURE `Add_val`(
	IN `num1` INT,
	IN `nuum2` INT,
	OUT `sum_value` INT)
	BEGIN
	Set sum_value = num1 + nuum2;
END//
DELIMITER ;
	
	CALL Add_val(2,3,@SUM);
	SELECT @SUM;