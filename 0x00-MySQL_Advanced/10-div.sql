-- Create a function SafeDiv that divides two integers and returns 0 if the second is 0
DELIMITER //

CREATE FUNCTION SafeDiv(a INT, b INT) 
RETURNS INT
DETERMINISTIC
BEGIN
    -- Check if the second number is 0
    IF b = 0 THEN
        -- Return 0 if b is 0
        RETURN 0;
    ELSE
        -- Return the result of a divided by b
        RETURN a / b;
    END IF;
END //

DELIMITER ;
