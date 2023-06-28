CREATE SCHEMA `theglory`;

use theglory;

DROP TABLE matching;

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
("제목1", "작성자1", 20230101, 0, "내용1", "1234", "서울", "A형", "전혈");
INSERT INTO matching (title,writer,write_date,read_count,content,pass,local,bloodtype,blood_donation) VALUES 
("제목2","작성자2",20230102,0,"내용2", "1234", "대전", "B형", "혈소판");
INSERT INTO matching (title,writer,write_date,read_count,content,pass,local,bloodtype,blood_donation) VALUES 
("제목3","작성자3",20230103,0,"내용3","1234", "대구","AB형","전혈");
INSERT INTO matching (title,writer,write_date,read_count,content,pass,local,bloodtype,blood_donation) VALUES 
("제목4","작성자4",20230104,0,"내용4", "1234", "부산","O형","혈장");
INSERT INTO matching (title,writer,write_date,read_count,content,pass,local,bloodtype,blood_donation) VALUES 
("제목5","작성자5",20230105,0,"내용5","1234", "충청도","B형","전혈");

INSERT INTO matching (title,writer,write_date,read_count,content,pass,local,bloodtype,blood_donation) VALUES 
("제목5","작성자5",20230105,0,"내용5","1234", "충청도","B형","전혈");
INSERT INTO matching (title,writer,write_date,read_count,content,pass,local,bloodtype,blood_donation) VALUES 
("제목5","작성자5",20230105,0,"내용5","1234", "충청도","B형","전혈");
INSERT INTO matching (title,writer,write_date,read_count,content,pass,local,bloodtype,blood_donation) VALUES 
("제목5","작성자5",20230105,0,"내용5","1234", "충청도","B형","전혈");
INSERT INTO matching (title,writer,write_date,read_count,content,pass,local,bloodtype,blood_donation) VALUES 
("제목5","작성자5",20230105,0,"내용5","1234", "충청도","B형","전혈");
INSERT INTO matching (title,writer,write_date,read_count,content,pass,local,bloodtype,blood_donation) VALUES 
("제목5","작성자5",20230105,0,"내용5","1234", "충청도","B형","전혈");
INSERT INTO matching (title,writer,write_date,read_count,content,pass,local,bloodtype,blood_donation) VALUES 
("제목5","작성자5",20230105,0,"내용5","1234", "충청도","B형","전혈");
INSERT INTO matching (title,writer,write_date,read_count,content,pass,local,bloodtype,blood_donation) VALUES 
("제목5","작성자5",20230105,0,"내용5","1234", "충청도","B형","전혈");
INSERT INTO matching (title,writer,write_date,read_count,content,pass,local,bloodtype,blood_donation) VALUES 
("제목5","작성자5",20230105,0,"내용5","1234", "충청도","B형","전혈");
INSERT INTO matching (title,writer,write_date,read_count,content,pass,local,bloodtype,blood_donation) VALUES 
("제목5","작성자5",20230105,0,"내용5","1234", "충청도","B형","전혈");
INSERT INTO matching (title,writer,write_date,read_count,content,pass,local,bloodtype,blood_donation) VALUES 
("제목5","작성자5",20230105,0,"내용5","1234", "충청도","B형","전혈");
INSERT INTO matching (title,writer,write_date,read_count,content,pass,local,bloodtype,blood_donation) VALUES 
("제목5","작성자5",20230105,0,"내용5","1234", "충청도","B형","전혈");
INSERT INTO matching (title,writer,write_date,read_count,content,pass,local,bloodtype,blood_donation) VALUES 
("제목5","작성자5",20230105,0,"내용5","1234", "충청도","B형","전혈");

CREATE TABLE IF NOT EXISTS matchReply (
	no INTEGER auto_increment PRIMARY KEY,
    match_no INTEGER NOT NULL,
    reply_content VARCHAR(500) NOT NULL,
    reply_writer VARCHAR(20) NOT NULL,
    reg_date TIMESTAMP NOT NULL,
    constraint reply_fk FOREIGN KEY(match_no) REFERENCES matching(no)
);
select * from matchReply;

INSERT INTO matchReply(match_no, reply_content, reply_writer, reg_date)VALUES(5, '댓글 내용 !!', 'midas', '2022-12-27 19:44:32');
INSERT INTO matchReply(match_no, reply_content, reply_writer, reg_date)VALUES(5, '댓글 내용 !!', 'midas', '2022-12-27 19:44:32');
INSERT INTO matchReply(match_no, reply_content, reply_writer, reg_date)VALUES(5, '댓글 내용 !!', 'midas', '2022-12-27 19:44:32');
INSERT INTO matchReply(match_no, reply_content, reply_writer, reg_date)VALUES(5, '댓글 내용 !!', 'midas', '2022-12-27 19:44:32');
INSERT INTO matchReply(match_no, reply_content, reply_writer, reg_date)VALUES(5, '댓글 내용 !!', 'midas', '2022-12-27 19:44:32');
INSERT INTO matchReply(match_no, reply_content, reply_writer, reg_date)VALUES(5, '댓글 내용 !!', 'midas', '2022-12-27 19:44:32');
INSERT INTO matchReply(match_no, reply_content, reply_writer, reg_date)VALUES(5, '댓글 내용 !!', 'midas', '2022-12-27 19:44:32');
INSERT INTO matchReply(match_no, reply_content, reply_writer, reg_date)VALUES(5, '댓글 내용 !!', 'midas', '2022-12-27 19:44:32');
INSERT INTO matchReply(match_no, reply_content, reply_writer, reg_date)VALUES(5, '댓글 내용 !!', 'midas', '2022-12-27 19:44:32');