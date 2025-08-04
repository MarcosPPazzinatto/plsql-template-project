BEGIN
    -- Setup
    DELETE FROM users WHERE username = 'testuser';

    -- Test
    example_procedure_create_user('testuser', 'test@example.com');

    -- Assertion
    DECLARE
        v_count NUMBER;
    BEGIN
        SELECT COUNT(*) INTO v_count FROM users WHERE username = 'testuser';
        IF v_count = 1 THEN
            DBMS_OUTPUT.PUT_LINE('Test passed!');
        ELSE
            DBMS_OUTPUT.PUT_LINE('Test failed!');
        END IF;
    END;
END;
/

