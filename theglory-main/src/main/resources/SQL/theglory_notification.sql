
## DATABASE 생성 및 선택
CREATE DATABASE IF NOT EXISTS theglory_notification;
use theglory_notification;

-- 게시글 번호, 제목, 내용, 글쓴이, 날짜, 조회수
-- no, title, content, writer, reg_date, read_count, pass
DROP TABLE IF EXISTS notification;
CREATE TABLE IF NOT EXISTS notification(
  no INTEGER AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(50) NOT NULL,
  content VARCHAR(1000) NOT NULL,
  writer VARCHAR(10) NOT NULL,  
  reg_date TIMESTAMP NOT NULL,
  read_count INTEGER(5) NOT NULL,
  pass VARCHAR(10) NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO notification (title,content,writer,reg_date,read_count,pass) VALUES ('금일 공지사항입니다.','안녕하세요\r\n\r\n관리자 입니다.\r\n\r\n\r\r\n\n운영계획과 약관을 바꾸게 되었습니다.\r\n\r\n회원님들의 양해를 구하며 사이트 이용해 참고 하시기 바랍니다.\r\n\r\n','관리자','2023-01-10 11:44:58', 15,'1234');
INSERT INTO notification (title,content,writer,reg_date,read_count,pass) VALUES ('금일 공지사항은 없습니다','','관리자','2023-01-11 09:43:38', 53,'1234');
INSERT INTO notification (title,content,writer,reg_date,read_count,pass) VALUES ('금일 공지사항입니다.','안녕하세요\r\n\r\n관리자 입니다.\r\n\r\n\r\r\n\n이번에 변경된 회원 약관에 대해 관심을 가져 주셔서 감사합니다.\r\n\r\n사이트를 운영하다 보니.. \r\n\r\n어쩔수 없이 약관이 변경되었습니다.\r\n\r\n변경된 약관이 계속 적용될 예정입니다.','관리자','2023-01-12 10:16:32', 21,'1234');
INSERT INTO notification (title,content,writer,reg_date,read_count,pass) VALUES ('금일 공지사항입니다.','안녕하세요\r\n\r\n관리자 입니다.\r\n\r\n\r\r\n\n자원 봉사자 모집합니다.\r\n\r\n자세한 내용은 고객센터로 부탁드립니다','관리자','2023-01-13 11:41:13', 26,'1234');
INSERT INTO notification (title,content,writer,reg_date,read_count,pass) VALUES ('금일 공지사항입니다.','안녕하세요\r\n\r\n관리자 입니다.\r\n\r\n\r\r\n\n많은 자원봉사 감사합니다.\r\n\r\n모든 사람이 충족되면 조기마감될 예정입니다','관리자','2023-01-14 12:44:32', 10,'1234');
INSERT INTO notification (title,content,writer,reg_date,read_count,pass) VALUES ('금일 공지사항은 없습니다','','관리자','2023-01-15 13:30:41', 102,'1234');
INSERT INTO notification (title,content,writer,reg_date,read_count,pass) VALUES ('금일 공지사항입니다.','안녕하세요\r\n\r\n관리자 입니다.\r\n\r\n\r\r\n\n봉사자 모집이 완료되었습니다.','관리자','2023-01-16 15:03:52', 35,'1234');
INSERT INTO notification (title,content,writer,reg_date,read_count,pass) VALUES ('금일 공지사항입니다.','안녕하세요\r\n\r\n관리자 입니다.\r\n\r\n\r\r\n\n봉사자 추가 모집에 대한 문의가 많습니다.\r\n\r\n하지만, 관리능력의 한계로 인하여, 사고가 발생할 수 있으므로, 더 이상 모집은 하지 않겠습니다','관리자','2023-01-17 15:44:32', 19,'1234');
INSERT INTO notification (title,content,writer,reg_date,read_count,pass) VALUES ('금일 공지사항은 없습니다','','관리자','2023-01-18 19:37:44', 41,'1234');
INSERT INTO notification (title,content,writer,reg_date,read_count,pass) VALUES ('금일 공지사항입니다.','안녕하세요\r\n\r\n관리자 입니다.\r\n\r\n\r\r\n\n자원봉사가 끝났습니다.\r\n\r\n모두 수고하셨습니다!','관리자','2023-01-19 09:04:23', 52,'1234');
COMMIT;

SELECT * FROM notification ORDER BY no DESC;