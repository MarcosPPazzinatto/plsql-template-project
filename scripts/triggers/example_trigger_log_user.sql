CREATE OR REPLACE TRIGGER trg_log_new_user
AFTER INSERT ON users
FOR EACH ROW
BEGIN
    INSERT INTO user_log (username, action, action_date)
    VALUES (:NEW.username, 'CREATED', SYSDATE);
END;
/

