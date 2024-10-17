-- Create a trigger that resets the valid_email attribute when the email has been changed

DELIMITER $$

CREATE TRIGGER reset_valid_email_on_update
AFTER UPDATE ON users
FOR EACH ROW
BEGIN
    -- Check if the email has been changed
    IF NEW.email <> OLD.email THEN
        -- Reset valid_email to FALSE (or 0) if the email has changed
        UPDATE users
        SET valid_email = FALSE
        WHERE id = NEW.id;
    END IF;
END$$

DELIMITER ;
