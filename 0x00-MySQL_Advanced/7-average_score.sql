-- Create a stored procedure ComputeAverageScoreForUser that computes and stores the average score for a student

DELIMITER $$

CREATE PROCEDURE ComputeAverageScoreForUser(
    IN user_id INT
)
BEGIN
    DECLARE avg_score DECIMAL(5,2);

    -- Compute the average score for the given user
    SELECT AVG(score) INTO avg_score
    FROM corrections
    WHERE user_id = user_id;

    -- Check if the user already has an average score entry
    IF EXISTS (SELECT * FROM user_averages WHERE user_id = user_id) THEN
        -- If the user already has an entry, update it
        UPDATE user_averages
        SET avg_score = avg_score
        WHERE user_id = user_id;
    ELSE
        -- If the user does not have an entry, insert a new one
        INSERT INTO user_averages (user_id, avg_score)
        VALUES (user_id, avg_score);
    END IF;

END$$

DELIMITER ;
