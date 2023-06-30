use theglory;

-- 1.회원 테이블
DROP TABLE IF EXISTS member;
CREATE TABLE IF NOT EXISTS member(
	id varchar(20) PRIMARY KEY,
	name varchar(10) NOT NULL,
    pass VARCHAR(100) NOT NULL,
    gender varchar(5) NOT NULL,
    bloodtype varchar(10) NOT NULL,
    birth varchar(10) NOT NULL,
    email VARCHAR(30) NOT NULL,
    phone VARCHAR(20) NOT NULL,
	email_get VARCHAR(1) NOT NULL,
	reg_date TIMESTAMP NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

commit;
SELECT * FROM member;
desc member;