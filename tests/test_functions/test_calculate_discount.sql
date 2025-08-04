DECLARE
    v_result NUMBER;
BEGIN
    v_result := calculate_discount(100, 10); -- Esperado: 90
    IF v_result = 90 THEN
        DBMS_OUTPUT.PUT_LINE('Test passed!');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Test failed. Expected 90, got ' || v_result);
    END IF;
END;
/

