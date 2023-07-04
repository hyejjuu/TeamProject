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
    address varchar(20) NOT NULL,
    email VARCHAR(30) NOT NULL,
    phone VARCHAR(20) NOT NULL,
	email_get VARCHAR(1) NOT NULL,
	reg_date TIMESTAMP NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO member VALUES('midas', '홍길동', 
	'$2a$10$aWYm2BGI/0iMuemBeF4Y8.7WZeVKAoudv/VzgQx697lYlZgQxr/pe', '남성', 'O형', '1980-09-14', '서울특별시 관악구',
	'midastop@naver.com', '010-1234-5678', '1', '2022-06-06 12:10:30');

-- 서울 36

insert into member values('Silver1','김태우','1234','남성','A형','2005-05-22','서울특별시 종로구','silver1@gmail.com','010-1111-2222','1','2015-07-07 10:10:10'); 
insert into member values('Garden1','이준호','1234','남성','A형','2006-06-22','서울특별시 중구','gardem1@gmail.com','010-3333-4444','1','2015-08-07 11:10:55'); 
insert into member values('Bright1','박성민','1234','남성','A형','2007-07-22','서울특별시 용산구','bright1@gmail.com','010-5555-6666','1','2015-07-09 08:25:55'); 
insert into member values('Spirit1','최종현','1234','남성','A형','2002-04-22','서울특별시 성동구','spirit1@gmail.com','010-7777-8888','1','2015-07-08 10:10:25'); 
insert into member values('Castle1','정준영','1234','남성','A형','2001-05-22','서울특별시 광진구','castle1@gmail.com','010-9999-0000','1','2015-07-06 10:25:10'); 
insert into member values('Ocean1','박동욱','1234','남성','A형','1999-06-22','서울특별시 동대문구','ocean1@gmail.com','010-0000-1111','1','2015-05-06 10:25:18'); 
insert into member values('Secret1','김상현','1234','남성','B형','1998-07-22','서울특별시 중랑구','secret1@gmail.com','010-2222-3333','1','2016-07-06 10:25:10'); 
insert into member values('Meadow1','이태우','1234','남성','B형','1997-08-22','서울특별시 성북구','meadow1@gmail.com','010-4444-5555','1','2015-09-06 10:25:10'); 
insert into member values('Shadow1','최현우','1234','남성','B형','1996-09-22','서울특별시 강북구','shadow1@gmail.com','010-6666-7777','1','2015-06-06 10:25:10'); 
insert into member values('Summer1','박성훈','1234','남성','B형','1995-10-22','서울특별시 도봉구','summer1@gmail.com','010-8888-9999','1','2017-09-06 10:30:10'); 
insert into member values('Spring2','김준수','1234','남성','O형','1993-11-22','서울특별시 노원구','spring2@gmail.com','010-1212-2323','1','2015-05-06 10:25:10'); 
insert into member values('Willow1','이도현','1234','남성','O형','1992-12-22','서울특별시 은평구','willow1@gmail.com','010-5656-4343','1','2016-04-01 09:45:10'); 
insert into member values('Sunset1','박지훈','1234','남성','O형','1990-02-22','서울특별시 서대문구','sunset1@gmail.com','010-2525-1313','0','2015-11-06 10:25:10'); 
insert into member values('Frozen1','김상우','1234','남성','O형','1981-03-22','서울특별시 마포구','frosen1@gmail.com','010-7878-8989','0','2016-01-06 12:25:10'); 
insert into member values('Galaxy1','이준혁','1234','남성','O형','1980-04-22','서울특별시 양천구','galaxy1@gmail.com','010-1616-8585','1','2016-02-12 11:05:16'); 
insert into member values('Autumn1','박성준','1234','남성','AB형','1979-05-22','서울특별시 강서구','autumn1@gmail.com','010-2424-1234','1','2016-01-01 08:25:10'); 
insert into member values('Velvet1','임영재','1234','남성','AB형','1968-06-22','서울특별시 구로구','velvet1@gmail.com','010-2345-6789','1','2015-09-11 12:50:55'); 
insert into member values('Blossom1','김준휘','1234','남성','AB형','1959-07-22','서울특별시 금천구','blossom1@gmail.com','010-7410-8520','1','2015-08-06 11:20:00'); 

insert into member values('Willow14','송강호','1234','남성','A형','2007-12-13','서울특별시 은평구','willow14@gmail.com','010-5627-1247','0','2016-08-06 11:30:00'); 
insert into member values('Sunset14','이병헌','1234','남성','A형','2000-02-13','서울특별시 서대문구','sunset14@gmail.com','010-2258-1102','1','2015-08-07 11:21:00'); 
insert into member values('Frozen14','하정우','1234','남성','O형','1998-03-13','서울특별시 마포구','frozen14@gmail.com','010-7854-2222','1','2015-09-06 11:20:22'); 
insert into member values('Galaxy14','차은우','1234','남성','O형','1980-04-13','서울특별시 양천구','galaxy14@gmail.com','010-4275-8685','1','2015-10-06 11:20:45'); 
insert into member values('Autumn14','송중기','1234','남성','B형','1977-05-13','서울특별시 강서구','automn14@gmail.com','010-8775-7522','1','2015-11-06 11:20:05'); 
insert into member values('Velvet14','조인성','1234','남성','B형','1967-06-13','서울특별시 구로구','velvet14@gmail.com','010-7521-5857','1','2015-12-06 11:45:00'); 
insert into member values('Blossom14','이동욱','1234','남성','AB형','1953-07-13','서울특별시 관악구','blossom14@gmail.com','010-1457-6252','1','2015-06-06 11:11:11');


insert into member values('Blossom22','김지영','1234','여성','O형','2006-06-12','서울특별시 강남구','blossom22@gmail.com','010-2541-1245','1','2015-08-06 11:01:11'); 
insert into member values('Velvet2','이서현','1234','여성','O형','2007-04-12','서울특별시 송파구','velvet2@gmail.com','010-3265-2258','1','2015-09-06 11:11:11'); 
insert into member values('Autumn2','박지민','1234','여성','A형','1999-06-06','서울특별시 서초구','autumn2@gmail.com','010-7551-7365','1','2017-01-24 08:29:11'); 
insert into member values('Galaxy2','최은지','1234','여성','A형','1996-04-07','서울특별시 강동구','galaxy2@gmail.com','010-7830-7505','1','2017-01-15 09:17:11'); 
insert into member values('Frozen2','정수민','1234','여성','A형','1997-03-08','서울특별시 마포구','frozen2@gmail.com','010-7860-7801','1','2016-09-29 07:53:11'); 
insert into member values('Sunset2','강지원','1234','여성','B형','1989-07-07','서울특별시 양천구','sunset2@gmail.com','010-4620-9368','1','2016-07-28 12:56:11'); 
insert into member values('Winter2','박지현','1234','여성','B형','1976-07-12','서울특별시 동작구','winter2@gmail.com','010-9678-3543','1','2017-07-27 11:58:11'); 
insert into member values('Summer2','황가영','1234','여성','AB형','1958-07-12','서울특별시 관악구','sumet2@gmail.com','010-9789-0459','1','2017-09-30 11:26:11');

insert into member values('Sunset15','손예진','1234','여성','A형','1989-03-03','서울특별시 양천구','sunset15@gmail.com','010-7822-5670','1','2017-08-14 06:12:11'); 
insert into member values('Winter15','배두나','1234','여성','O형','1976-03-03','서울특별시 동작구','winter@gmail.com','010-2225-1110','1','2016-11-05 11:11:08'); 
insert into member values('Summer15','김희애','1234','여성','B형','1952-03-03','서울특별시 관악구','summer15@gmail.com','010-7867-4530','1','2017-08-14 06:12:11');

-- 부산 8명
insert into member values('Blossom2','정일국','1234','남성','A형','2006-07-24','부산광역시 중구','blossom2@gmail.com','010-5187-0453','1','2016-09-14 09:56:11'); 
insert into member values('Velvet02','송준영','1234','남성','A형','2000-04-24','부산광역시 서구','velvet2@gmail.com','010-5187-7862','1','2016-05-14 09:33:02'); 
insert into member values('Autumn02','윤상현','1234','남성','B형','1999-06-24','부산광역시 동구','autumn2@gmail.com','010-5375-4532','1','2016-06-14 09:38:11'); 
insert into member values('Galaxy02','김준후','1234','남성','O형','1996-04-24','산광역시 금정구','galaxy2@gmail.com','010-4530-4530','1','2016-12-14 06:12:11'); 
insert into member values('Winter3','심수봉','1234','남성','AB형','1954-07-24','부산광역시 수영구','winter3@gmail.com','010-0146-0202','1','2017-08-14 06:12:11');
insert into member values('Frozen02','이지민','1234','남성','A형','1988-03-24','부산광역시 강서구','frozen2@gmail.com','010-0000-0101','1','2017-08-14 06:12:11'); 
insert into member values('Sunset02','손서아','1234','여성','O형','1977-07-24','부산광역시 연제구','sunset2@gmail.com','010-3262-0001','1','2015-12-26 11:01:01');  
insert into member values('Summer02','박가영','1234','여성','B형','1968-07-24','부산광역시 수영구','summer2@gmail.com','010-3054-0581','0','2016-10-30 12:30:49');

-- 대구경북 9명

insert into member values('Silver2','김지훈','1234','남성','A형','1954-07-18','대구광역시 중구','silver2@gmail.com','010-7680-4207','1','2017-08-14 06:12:11');
insert into member values('Garden2','박도훈','1234','남성','A형','1967-07-18','대구광역시 수성구','garden2@gmail.com','010-3524-8670','1','2016-07-30 09:12:11');
insert into member values('Bright2','이태현','1234','남성','B형','1979-07-18','대구광역시 달서구','bright2@gmail.com','010-0786-7830','1','2016-10-12 12:12:11');
insert into member values('Spirit2','김준성','1234','남성','O형','1990-07-18','대구광역시 동구','spirit2@gmail.com','010-2752-7830','1','2016-09-22 11:30:11');
insert into member values('Castle2','윤성민','1234','남성','B형','1996-07-18','대구광역시 달성군','castle2@gmail.com','010-7539-4504','1','2016-05-14 11:56:11');
insert into member values('Ocean2','송준형','1234','남성','O형','1998-07-18','경상북도 구미시','ocean2@gmail.com','010-4530-8908','1','2016-12-14 12:12:11');
insert into member values('Secret2','박은지','1234','여성','A형','2000-07-25','경상북도 포항시','secret2@gmail.com','010-7486-2048','1','2017-11-14 08:55:23');
insert into member values('Meadow2','김서연','1234','여성','O형','2005-07-18','경상북도 경주시','meadow2@gmail.com','010-0002-5345','1','2017-02-02 09:11:48');
insert into member values('Shadow2','조유진','1234','여성','B형','2006-07-25','경상북도 안동시','shadow2@gmail.com','010-4891-7527','1','2017-09-14 10:12:11');

-- 인천 7명
insert into member values('Spring3','김수빈','1234','여성','A형','2005-07-17','인천광역시 미추홀구','spring3@gmail.com','010-7075-0447','1','2017-02-14 01:12:11');
insert into member values('Summer3','이하늘','1234','여성','O형','2002-08-17','인천광역시 연수구','summer3@gmail.com','010-3028-0018','1','2016-06-06 11:08:11');
insert into member values('Sunset3','박태호','1234','남성','A형','1999-09-17','인천광역시 부평구','sunset3@gmail.com','010-4524-7850','1','2017-12-14 07:30:11');
insert into member values('Willow3','김민준','1234','남성','O형','1991-10-17','인천광역시 계양구','willow3@gmail.com','010-4508-5704','0','2017-11-30 07:12:11');
insert into member values('Frozen3','임준영','1234','남성','B형','1979-07-17','인천광역시 남동구','frozen3@gmail.com','010-0789-7542','1','2017-10-14 09:12:11');
insert into member values('Galaxy3','정도훈','1234','남성','A형','1966-07-17','인천광역시 중구','galaxy3@gmail.com','010-5420-5304','1','2017-08-27 08:12:11');
insert into member values('Island3','한성훈','1234','남성','AB형','1956-07-17','인천광역시 동구','island3@gmail.com','010-8476-0477','1','2017-08-30 03:12:11');

-- 울산 3명
insert into member values('Blossom4','이정휘','1234','남성','A형','1997-06-16','울산광역시 중구','blossom4@gmail.com','010-4278-5374','1','2016-01-30 12:30:35');
insert into member values('Dreamy4','김동영','1234','남성','O형','1988-07-16','울산광역시 남구','dreamy4@gmail.com','010-7530-1587','1','2015-09-14 12:02:56');
insert into member values('Velvet4','장서린','1234','여성','A형','1979-08-17','울산광역시 동구','velvet4@gmail.com','010-7800-0452','1','2016-01-31 12:30:14');

-- 경기 9명
 insert into member values('Silver5','이가은','1234','여성','AB형','2008-05-15','울산광역시 중구','silver5@gmail.com','010-0987-6543','0','2016-05-26 09:24:17'); 
 insert into member values('Garden5','최현아','1234','여성','O형','2007-06-15','울산광역시 중구','garden5@gmail.com','010-6201-1101','1','2015-07-12 11:56:11'); 
 insert into member values('Bright5','정지현','1234','여성','A형','2001-07-15','울산광역시 중구','bright5@gmail.com','010-3406-0043','1','2016-12-03 10:01:11'); 
 insert into member values('Spirit5','김성민','1234','남성','B형','1999-08-15','울산광역시 중구','spirit5@gmail.com','010-0148-6721','1','2016-05-01 10:34:11'); 
 insert into member values('Castle5','임준혁','1234','남성','A형','1997-09-15','울산광역시 중구','castle5@gmail.com','010-3541-0130','1','2016-07-23 09:22:11'); 
 insert into member values('Ocean5','최성준','1234','남성','A형','1991-10-15','울산광역시 중구','ocean5@gmail.com','010-1067-5380','1','2016-08-12 08:15:11'); 
 insert into member values('Secret5','이영재','1234','남성','O형','1979-11-15','울산광역시 중구','secret5@gmail.com','010-4338-7544','1','2016-11-14 09:50:11'); 
 insert into member values('Meadow5','박준휘','1234','남성','B형','1972-12-15','울산광역시 중구','meadow5@gmail.com','010-8992-5734','1','2016-07-14 08:05:11'); 
 insert into member values('Shadow5','김정호','1234','남성','O형','1961-01-15','울산광역시 중구','shadow5@gmail.com','010-2173-0458','1','2016-12-14 09:26:11'); 
 
 -- 강원 5명
insert into member values('Spring6','유성훈','1234','남성','AB형','2009-07-11','강원도 춘천시','spring6@gmail.com','010-0123-5678','1','2017-07-25 09:12:03'); 
insert into member values('Summer6','강준호','1234','남성','A형','2002-08-11','강원도 원주시','summer6@gmail.com','010-0124-3567','1','2017-02-01 08:28:10');
insert into member values('Sunset6','황승민','1234','남성','O형','1993-09-11','강원도 동해시','sunset6@gmail.com','010-8901-7890','1','2017-01-30 09:56:28');
insert into member values('Willow6','한용준','1234','남성','B형','1955-04-11','강원도 태백시','willow6@gmail.com','010-2058-0008','1','2016-08-22 10:01:10');
insert into member values('Frozen6','유나연','1234','여성','B형','1956-05-11','강원도 속초시','frozen6@gmail.com','010-8080-8282','1','2016-08-12 11:02:55');

-- 충북 3명 
insert into member values('Silver7','박영준','1234','남성','A형','1990-10-02','충청북도 청주시 상당구','silver7@gmail.com','010-5187-1237','1','2017-08-14 06:12:11');
insert into member values('Garden7','이정호','1234','남성','B형','1975-11-02','충청북도 청주시 서원구','gardem7@gmail.com','010-4210-9842','1','2015-11-11 12:05:55');
insert into member values('Bright7','김준후','1234','남성','O형','1968-12-02','충청북도 청주시 청원구','bright7@gmail.com','010-1863-4278','1','2017-03-25 12:03:54');

-- 대전세종충남 10명
insert into member values('Spirit8','윤상현','1234','남성','A형','1952-10-10','대전광역시 유성구','spririt8@gmail.com','010-1147-4478','1','2015-01-06 10:12:23');
insert into member values('Castle8','송준영','1234','남성','O형','1974-11-10','대전광역시 서구','castle8@gmail.com','010-2044-1013','1','2015-02-06 11:08:24');
insert into member values('Secret8','정태우','1234','남성','A형','1980-12-10','대전광역시 중구','secret8@gmail.com','010-2111-2222','1','2015-03-06 11:10:14');
insert into member values('Meadow8','김지훈','1234','남성','B형','1988-01-10','청남도 천안시 동남구','meadow8@gmail.com','010-1100-4431','1','2015-04-06 11:05:22');
insert into member values('Shadow8','박도훈','1234','남성','O형','1990-02-10','충청남도 천안시 서북구','shadow8@gmail.com','010-1478-3443','1','2015-12-30 09:12:14');
insert into member values('Spring8','이태현','1234','남성','AB형','1996-03-10','충청남도 아산시','spring8@gmail.com','010-1234-0001','1','2015-05-06 11:12:06');
insert into member values('Summer8','최성민','1234','남성','B형','1998-04-10','충청남도 공주시','summer8@gmail.com','010-1212-0012','1','2015-06-06 10:12:11');
insert into member values('Sunset8','김수민','1234','여성','B형','2003-05-10','세종특별자치시','sunset8@gmail.com','010-7859-9989','1','2015-07-06 11:12:30');
insert into member values('Willow8','박지영','1234','여성','O형','2007-06-10','충청남도 청양군','willow8@gmail.com','010-1110-8945','1','2015-01-06 11:12:11');
insert into member values('Frozen8','손미나','1234','여성','A형','2006-07-10','충청남도 예산군','frozen8@gmail.com','010-1115-0147','1','2017-02-07 11:36:11');

-- 전북 4명
insert into member values('Willow9','송민준','1234','남성','A형','1987-05-21','전라북도 전주시 완산구','willow9@gmail.com','010-1020-0007','1','2015-08-11 09:12:11');
insert into member values('Sunset9','윤성훈','1234','남성','O형','1983-06-21','전라북도 전주시 덕진구','sunset9@gmail.com','010-4520-1120','1','2015-01-06 10:45:22');
insert into member values('Summer9','김준형','1234','남성','B형','1973-07-21','전라남도 광주광역시 동구','summer9@gmail.com','010-5552-0474','1','2015-01-06 10:12:41');
insert into member values('Spring9','김수민','1234','여성','A형','1944-08-21','전라북도 군산시','spring9@gmail.com','010-0444-4452','1','2015-01-06 10:25:35');

-- 경남 5명
insert into member values('Shadow10','한지민','1234','여성','A형','2005-08-28','경상남도 창원시 의창구','shadow10@gmail.com','010-2585-3696','1','2016-11-11 10:22:59');
insert into member values('Meadow10','김민성','1234','남성','O형','2000-09-28','경상남도 창원시 성산구','meadow10@gmail.com','010-5555-1145','1','2016-12-12 10:22:59');
insert into member values('Secret10','임준영','1234','남성','B형','1986-10-28','경상남도 창원시 마산합포구','secret10@gmail.com','010-7588-2585','1','2016-12-16 10:22:59');
insert into member values('Ocean10','정도현','1234','남성','B형','1975-11-28','경상남도 창원시 마산회원구','ocean10@gmail.com','010-2756-7567','1','2016-12-15 10:22:59');
insert into member values('Castle10','한승훈','1234','남성','AB형','1968-12-28','경상남도 진주시','castle10@gmail.com','010-8844-5569','1','2016-12-11 10:22:59');

-- 제주 1명
insert into member values('Shadow11','최예은','1234','여성','O형','1997-08-01','제주특별자치도 서귀포시','shadow11@gmail.com','010-8844-5569','1','2016-12-11 10:22:59');

commit;
SELECT * FROM member;
desc member;