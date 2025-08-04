-- Helper script para criar estrutura de teste

CREATE TABLE users (
    username VARCHAR2(50),
    email VARCHAR2(100)
);

CREATE TABLE user_log (
    username VARCHAR2(50),
    action   VARCHAR2(50),
    action_date DATE
);

