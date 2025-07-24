CREATE OR REPLACE PROCEDURE create_user (
    p_username   IN users.username%TYPE,
    p_email      IN users.email%TYPE,
    p_created_by IN users.created_by%TYPE DEFAULT 'system'
) AS
BEGIN
    -- Validação simples de e-mail
    IF NOT REGEXP_LIKE(p_email, '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$') THEN
        RAISE_APPLICATION_ERROR(-20001, 'E-mail inválido');
    END IF;

    -- Inserção do novo usuário
    INSERT INTO users (username, email, created_at, created_by)
    VALUES (p_username, p_email, SYSDATE, p_created_by);

    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        -- Tratamento genérico de erro
        ROLLBACK;
        RAISE_APPLICATION_ERROR(-20002, 'Erro ao criar usuário: ' || SQLERRM);
END create_user;
/

