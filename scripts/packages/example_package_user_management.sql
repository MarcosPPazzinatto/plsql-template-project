CREATE OR REPLACE PACKAGE user_management AS
    PROCEDURE create_user(p_username VARCHAR2, p_email VARCHAR2);
    FUNCTION user_exists(p_username VARCHAR2) RETURN BOOLEAN;
END user_management;
/

CREATE OR REPLACE PACKAGE BODY user_management AS
    PROCEDURE create_user(p_username VARCHAR2, p_email VARCHAR2) IS
    BEGIN
        INSERT INTO users (username, email)
        VALUES (p_username, p_email);
    END;

    FUNCTION user_exists(p_username VARCHAR2) RETURN BOOLEAN IS
        v_count NUMBER;
    BEGIN
        SELECT COUNT(*) INTO v_count FROM users WHERE username = p_username;
        RETURN v_count > 0;
    END;
END user_management;
/

