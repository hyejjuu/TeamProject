CREATE SCHEMA `theglory`;

use theglory;

DROP TABLE matching;
DROP TABLE matchReply;

CREATE TABLE matching (
	no INTEGER AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(50) NOT NULL,
    writer VARCHAR(30) NOT NULL,
    write_date TIMESTAMP NOT NULL,
    read_count INT NOT NULL,
    content VARCHAR(5000) NOT NULL,
    pass VARCHAR(10) NOT NULL,
    local VARCHAR(10) NOT NULL,
    bloodtype VARCHAR(10) NOT NULL,
    blood_donation VARCHAR(10) NOT NULL,
    recommend INTEGER DEFAULT 0,
	thank INTEGER DEFAULT 0
);

select * from matching;

INSERT INTO matching (title,writer,write_date,read_count,content,pass,local,bloodtype,blood_donation) VALUES 
("급해요", "Silver1", 20230101, 0, "헌혈증 구합니다. 있으신 분들 댓글 부탁드려요.", "1234", "서울", "A형", "전혈");
INSERT INTO matching (title,writer,write_date,read_count,content,pass,local,bloodtype,blood_donation) VALUES 
("기부합니다", "Silver5", 20230102, 0, "필요하신 분 댓글 달아주세요.", "1234", "경기", "AB형", "혈장");
INSERT INTO matching (title,writer,write_date,read_count,content,pass,local,bloodtype,blood_donation) VALUES 
("혈소판 필요하신분", "Willow3", 20230103, 0, "댓글ㄱㄱ", "1234", "인천", "O형", "혈소판");
INSERT INTO matching (title,writer,write_date,read_count,content,pass,local,bloodtype,blood_donation) VALUES 
("헌혈증 기부받습니다", "Sunset6", 20230104, 0, "미리 감사합니다.", "1234", "강원", "O형", "전혈");
INSERT INTO matching (title,writer,write_date,read_count,content,pass,local,bloodtype,blood_donation) VALUES 
("O형 전혈 입니다.", "Shadow8", 20230105, 0, "필요하신 분 댓글 달아주세요.", "1234", "충남", "O형", "전혈");
INSERT INTO matching (title,writer,write_date,read_count,content,pass,local,bloodtype,blood_donation) VALUES 
("혈장 헌혈했습니다", "Bright7", 20230106, 0, "좋은 일 했다고 생각하니 뿌듯하네요.", "1234", "충북", "O형", "혈장");
INSERT INTO matching (title,writer,write_date,read_count,content,pass,local,bloodtype,blood_donation) VALUES 
("O형 혈장 필요합니다", "Shadow11", 20230107, 0, "급합니다. 부탁드려요.", "1234", "제주", "O형", "혈장");
INSERT INTO matching (title,writer,write_date,read_count,content,pass,local,bloodtype,blood_donation) VALUES 
("헌혈완료", "Castle8", 20230108, 0, "기부합니다.", "1234", "대전", "O형", "혈소판");
INSERT INTO matching (title,writer,write_date,read_count,content,pass,local,bloodtype,blood_donation) VALUES 
("도와주세요!", "Winter3", 20230109, 0, "혈장 있으신분 댓글 부탁드려요!", "1234", "부산", "AB형", "혈장");
INSERT INTO matching (title,writer,write_date,read_count,content,pass,local,bloodtype,blood_donation) VALUES 
("전혈 헌혈완료했습니다", "Meadow1", 20230110, 0, "댓글 남겨주세요.", "1234", "전남", "B형", "전혈");
INSERT INTO matching (title,writer,write_date,read_count,content,pass,local,bloodtype,blood_donation) VALUES 
("헌혈증 필요", "Silver1", 20230101, 0, "헌혈증 구합니다. 댓글 부탁드려요.", "1234", "서울", "A형", "전혈");
INSERT INTO matching (title,writer,write_date,read_count,content,pass,local,bloodtype,blood_donation) VALUES 
("헌혈증 기부하실 분 있으신가요", "Silver5", 20230102, 0, "댓글달아주세요", "1234", "경기", "AB형", "혈장");
INSERT INTO matching (title,writer,write_date,read_count,content,pass,local,bloodtype,blood_donation) VALUES 
("혈소판 필요하신분", "Willow3", 20230103, 0, "헌혈완료했습니다.", "1234", "인천", "O형", "혈소판");
INSERT INTO matching (title,writer,write_date,read_count,content,pass,local,bloodtype,blood_donation) VALUES 
("헌혈증 기부필요", "Sunset6", 20230104, 0, "강원도민분들 부탁드려요", "1234", "강원", "O형", "전혈");
INSERT INTO matching (title,writer,write_date,read_count,content,pass,local,bloodtype,blood_donation) VALUES 
("O형 전혈", "Shadow8", 20230105, 0, "충청도 직거래 가능합니다. 댓글 주세요", "1234", "충남", "O형", "전혈");
INSERT INTO matching (title,writer,write_date,read_count,content,pass,local,bloodtype,blood_donation) VALUES 
("헌혈완료", "Bright7", 20230106, 0, "혈장은 첨 해봤네요. 필요하신분?", "1234", "충북", "O형", "혈장");
INSERT INTO matching (title,writer,write_date,read_count,content,pass,local,bloodtype,blood_donation) VALUES 
("제주도 O혈 혈장 필요합니다", "Shadow11", 20230107, 0, "제주도면 직거래 다 가능합니다. 댓글주세요", "1234", "제주", "O형", "혈장");
INSERT INTO matching (title,writer,write_date,read_count,content,pass,local,bloodtype,blood_donation) VALUES 
("오헌완", "Castle8", 20230108, 0, "오늘은 혈소판했음", "1234", "대전", "O형", "혈소판");
INSERT INTO matching (title,writer,write_date,read_count,content,pass,local,bloodtype,blood_donation) VALUES 
("급합니다!", "Winter3", 20230109, 0, "많이 필요해요 댓글 많이 부탁드러요!", "1234", "부산", "AB형", "혈장");
INSERT INTO matching (title,writer,write_date,read_count,content,pass,local,bloodtype,blood_donation) VALUES 
("헌혈완료했습니다", "Meadow1", 20230110, 0, "직거래 우편 다 가능. 필요하시면 댓글주세요.", "1234", "전남", "B형", "전혈");


commit;

CREATE TABLE IF NOT EXISTS matchReply (
	no INTEGER auto_increment PRIMARY KEY,
    match_no INTEGER NOT NULL,
    reply_content VARCHAR(500) NOT NULL,
    reply_writer VARCHAR(20) NOT NULL,
    reg_date TIMESTAMP NOT NULL,
    constraint reply_fk FOREIGN KEY(match_no) REFERENCES matching(no)
);
select * from matchReply;

INSERT INTO matchReply(match_no, reply_content, reply_writer, reg_date)VALUES(5, '', 'Shadow1', '2022-12-27 19:44:32');

commit;