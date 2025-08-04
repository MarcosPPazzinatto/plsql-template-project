CREATE OR REPLACE FUNCTION calculate_discount (
    p_price      NUMBER,
    p_discount   NUMBER
) RETURN NUMBER IS
BEGIN
    RETURN p_price - (p_price * p_discount / 100);
END;
/

