CREATE DATABASE IF NOT EXISTS theglory;
use theglory;

-- 2.예약 테이블
DROP TABLE IF EXISTS reservation;
create table reservation(
reservation_no INTEGER AUTO_INCREMENT PRIMARY KEY,
reservation_date varchar(15) ,
reservation_time varchar(10),
donationtype_no int , -- bd = blood donation 헌혈 종류 선택(전혈 1, 혈장 2, 혈소판 3 ,혈소판 혈장 4)
state_no int, -- 예약 1, 예약완료 2, 취소 3 
member_id varchar(25),
location_no int -- 지역(서울.대전 등)/주소(전체주소:서울 관악구 관악로 152 서량빌딩 2층, 서울대입구역 2번 출구 '\n' 진행방향 200m, 관악구청 맞은편 등)			
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


 
 -- < 7월 11일 예약자 >
 
 -- 9시 모두 예약 가능
 -- 9시 전혈3
insert into reservation(reservation_date, reservation_time, donationtype_no,state_no, member_id, location_no)
 values ('20230711','0900',1,1,'Silver1',1); -- 9시 전혈 예약
insert into reservation(reservation_date, reservation_time, donationtype_no,state_no, member_id, location_no)
 values ('20230711','0900',2,1,'Silver2',1); -- 9시 혈장 예약
insert into reservation(reservation_date, reservation_time, donationtype_no,state_no, member_id, location_no)
 values ('20230711','0900',3,1,'Silver5',1); -- 9시 혈소판 예약
 
 -- 9시 30분 예약 모두 가능
 -- 10시 
insert into reservation(reservation_date, reservation_time, donationtype_no, state_no, member_id, location_no)
 values ('20230711','1000',3,1,'Meadow5',1); -- 10시 혈소판 예약
insert into reservation(reservation_date, reservation_time, donationtype_no, state_no, member_id, location_no)
 values ('20230711','1000',1,1,'Meadow8',1);  --  10시 전혈 예약 
 
 -- 10시 30분 / 
insert into reservation(reservation_date, reservation_time, donationtype_no, state_no, member_id, location_no) 
 values ('20230711','1030',3,1,'Spirit1',1); -- 10시30분 혈소판 예약
insert into reservation(reservation_date, reservation_time, donationtype_no, state_no, member_id, location_no)
 values ('20230711','1030',1,1,'Spirit2',1);  --  10시 30분 전혈 예약 
insert into reservation(reservation_date, reservation_time, donationtype_no, state_no, member_id, location_no)
 values ('20230711','1030',2,1,'Spirit5',1);  --  10시 30분 혈장 예약 

 
-- 11시 예약
insert into reservation(reservation_date, reservation_time, donationtype_no,state_no, member_id, location_no)
 values ('20230711','1100',1,1,'Spirit8',1); -- 11시 전혈 예약
insert into reservation(reservation_date, reservation_time, donationtype_no,state_no, member_id, location_no)
 values ('20230711','1100',2,1,'Velvet1',1); -- 1시 혈장 예약 
-- 11시 30분 예약 모두 가능
-- 12시 예약
insert into reservation(reservation_date, reservation_time, donationtype_no,state_no, member_id, location_no)
 values ('20230711','1200',2,1,'Velvet14',1); -- 12시 30분 혈장 예약

-- 12시 30분 모두 가능
-- 13시 / 전혈 2 혈소판혈장1
insert into reservation(reservation_date, reservation_time, donationtype_no,state_no, member_id, location_no)
 values ('20230711','1300',1,1,'Velvet4',1); -- 13시 전혈 예약

-- 13시 30분 / 혈소판2 혈소판혈장1
insert into reservation(reservation_date, reservation_time, donationtype_no,state_no, member_id, location_no)
 values ('20230711','1330',4,1,'Blossom22',1); -- 13시 30분 혈소판 혈장
-- 14시 모두 가능
-- 14시 30분 모두 가능
-- 15시 모두 가능
-- 15시 30분 
insert into reservation(reservation_date, reservation_time, donationtype_no,state_no, member_id, location_no)
 values ('20230711','1530',3,1,'Blossom1',1); -- 15시 30분 혈소판
insert into reservation(reservation_date, reservation_time, donationtype_no,state_no, member_id, location_no)
 values ('20230711','1530',4,1,'Blossom2',1); -- 15시 30분 혈소판혈장

-- 16시모두 가능

-- 16시 30분 전혈2 혈소판혈장1
insert into reservation(reservation_date, reservation_time, donationtype_no,state_no, member_id, location_no)
 values ('20230711','1630',1,1,'Blossom14',1); -- 16시 30분 전혈 
insert into reservation(reservation_date, reservation_time, donationtype_no,state_no, member_id, location_no)
 values ('20230711','1630',4,1,'Willow14',1); -- 16시 30분 혈소판혈장

-- 17시 00분 
insert into reservation(reservation_date, reservation_time, donationtype_no, state_no, member_id, location_no)
 values ('20230711','1700',4,1,'Willow1',1); -- 17시 혈소판혈장 예약
insert into reservation(reservation_date, reservation_time, donationtype_no,state_no, member_id, location_no)
 values ('20230711','1700',3,1,'Willow6',1); -- 17시 혈소판 예약
insert into reservation(reservation_date, reservation_time, donationtype_no,state_no, member_id, location_no)
 values ('20230711','1700',1,1,'Willow3',1); -- 17시 전혈 예약
 
-- 17시 30분 모두 가능
 -- 18시 00분 예약 모두 가능
 -- 18시 30 분 
insert into reservation(reservation_date, reservation_time, donationtype_no,state_no, member_id, location_no)
	values ('20230711','1830',1,1,'Willow8',1); -- 18시 30분 전혈 예약
insert into reservation(reservation_date, reservation_time, donationtype_no,state_no, member_id, location_no)
	values ('20230711','1830',3,1,'Sunset14',1); -- 18시 30분 혈소판 예약
    
 -- 19시 00  
 insert into reservation(reservation_date, reservation_time, donationtype_no,state_no, member_id, location_no)
	values ('20230711','1900',1,1,'Galaxy14',1); -- 19시 전혈 예약

 
-- < 13일 목요일 예약 현황 -36명 신청>
-- 9시 전혈3
insert into reservation(reservation_date, reservation_time, donationtype_no,state_no, member_id, location_no)
 values ('20230713','0900',1,1,'Galaxy3',1); -- 9시 전혈 예약
 -- 9시 30분 예약 모두 가능
 -- 10시  전혈2 혈소판2

insert into reservation(reservation_date, reservation_time, donationtype_no, state_no, member_id, location_no) 
 values ('20230713','1000',3,1,'Galaxy1',1); -- 10시 혈소판 예약
insert into reservation(reservation_date, reservation_time, donationtype_no, state_no, member_id, location_no)
 values ('20230713','1000',1,1,'Castle2',1);  --  10시 전혈 예약 

 -- 10시 30분 /  혈소판1 현소판혈장1 전혈2
insert into reservation(reservation_date, reservation_time, donationtype_no, state_no, member_id, location_no) 
 values ('20230713','1030',3,1,'Castle1',1); -- 10시30분 혈소판 예약
insert into reservation(reservation_date, reservation_time, donationtype_no, state_no, member_id, location_no)
 values ('20230713','1030',1,1,'Castle5',1);  --  10시 30분 전혈 예약 
insert into reservation(reservation_date, reservation_time, donationtype_no, state_no, member_id, location_no)
 values ('20230713','1030',4,1,'Castle8',1);  --  10시 30분 혈소판 혈장 예약 

-- 11시 예약 모두 가능
-- 11시 30분 예약 모두 가능
-- 12시 예약 모두 가능
-- 12시 30분  전혈3 혈소판1
insert into reservation(reservation_date, reservation_time, donationtype_no,state_no, member_id, location_no)
 values ('20230713','1230',1,1,'Castle10',1); -- 12시 30분 전혈 예약
insert into reservation(reservation_date, reservation_time, donationtype_no,state_no, member_id, location_no)
 values ('20230713','1230',3,1,'Secret1',1); -- 12시 30분 혈소판 예약
 
-- 13시 / 전혈 2 혈소판혈장1
insert into reservation(reservation_date, reservation_time, donationtype_no,state_no, member_id, location_no)
 values ('20230713','1300',1,1,'Secret2',1); -- 13시 전혈 예약
insert into reservation(reservation_date, reservation_time, donationtype_no,state_no, member_id, location_no)
 values ('20230713','1300',4,1,'Secret5',1); -- 13시 혈소판혈장 예약
-- 13시 30분 / 혈소판2 혈소판혈장1
insert into reservation(reservation_date, reservation_time, donationtype_no,state_no, member_id, location_no)
 values ('20230713','1330',3,1,'Secret8',1); -- 13시30분 혈소판
insert into reservation(reservation_date, reservation_time, donationtype_no,state_no, member_id, location_no)
 values ('20230713','1330',4,1,'Secret10',1); -- 13시 30분 혈소판혈장
-- 14시 모두 가능
-- 14시 30분 모두 가능
-- 15시 모두 가능
-- 15시 30분 모두 가능
-- 16시 혈소판2 혈소판혈장2
insert into reservation(reservation_date, reservation_time, donationtype_no,state_no, member_id, location_no)
 values ('20230713','1600',3,1,'Bright1',1); -- 16시 00분 혈소판
insert into reservation(reservation_date, reservation_time, donationtype_no,state_no, member_id, location_no)
 values ('20230713','1600',4,1,'Bright2',1); -- 16시 00분 혈소판혈장
-- 16시 30분 전혈2 혈소판혈장1
insert into reservation(reservation_date, reservation_time, donationtype_no,state_no, member_id, location_no)
 values ('20230713','1630',1,1,'Bright5',1); -- 16시 30분 전혈 
insert into reservation(reservation_date, reservation_time, donationtype_no,state_no, member_id, location_no)
 values ('20230713','1630',4,1,'Bright7',1); -- 16시 30분 혈소판혈장
-- 17시 00분 모두 가능
-- 17시 30분  혈소판혈장1 혈소판1 전혈3
insert into reservation(reservation_date, reservation_time, donationtype_no,state_no, member_id, location_no)
 values ('20230713','1730',4,1,'Summer1',1); -- 16시 30분 혈소판혈장 예약
insert into reservation(reservation_date, reservation_time, donationtype_no,state_no, member_id, location_no)
 values ('20230713','1730',3,1,'Summer2',1); -- 16시 30분 혈소판 예약

 -- 18시 00분 예약 모두 가능
 -- 18시 30 분 예약 모두 가능
 -- 19시 00  전혈2 혈소판 1

insert into reservation(reservation_date, reservation_time, donationtype_no,state_no, member_id, location_no)
	values ('20230713','1730',3,1,'Summer15',1); -- 16시 30분 혈소판 예약
 

-- 7월 17일 예약자 

-- 9시 전혈3
insert into reservation(reservation_date, reservation_time, donationtype_no,state_no, member_id, location_no)
 values ('20230717','0900',1,1,'Silver1',1); -- 9시 전혈 예약
insert into reservation(reservation_date, reservation_time, donationtype_no,state_no, member_id, location_no)
 values ('20230717','0900',2,1,'Silver2',1); -- 9시 혈장 예약
insert into reservation(reservation_date, reservation_time, donationtype_no,state_no, member_id, location_no)
 values ('20230717','0900',3,1,'Silver5',1); -- 9시 혈소판 예약
 -- 9시 30분
 insert into reservation(reservation_date, reservation_time, donationtype_no, state_no, member_id, location_no)
 values ('20230717','0930',3,1,'Garden1',1); -- 9시 30분 혈소판 예약
insert into reservation(reservation_date, reservation_time, donationtype_no, state_no, member_id, location_no)
 values ('20230717','0930',1,1,'Garden2',1);  --  9시 30분 전혈 예약 

 -- 10시  예약  /  혈소판1 현소판혈장1 전혈2
insert into reservation(reservation_date, reservation_time, donationtype_no, state_no, member_id, location_no) 
 values ('20230717','1000',2,1,'Garden5',1); -- 10시30분 혈장 예약
insert into reservation(reservation_date, reservation_time, donationtype_no, state_no, member_id, location_no)
 values ('20230717','1000',1,1,'Garden6',1);  --  10시 30분 전혈 예약 
insert into reservation(reservation_date, reservation_time, donationtype_no, state_no, member_id, location_no)
 values ('20230717','1000',4,1,'Ocean5',1);  --  10시 30분 혈소판혈장 예약 

-- 10시 30분  모두 가능
-- 11시 예약 모두 가능
-- 11시 30분 예약 모두 가능
-- 12시 
insert into reservation(reservation_date, reservation_time, donationtype_no,state_no, member_id, location_no)
 values ('20230717','1200',1,1,'Ocean1',1); -- 12시 전혈 예약
insert into reservation(reservation_date, reservation_time, donationtype_no,state_no, member_id, location_no)
 values ('20230717','1200',3,1,'Ocean2',1); -- 12시 혈소판 예약
 -- 12시 30분  예약 모두 가능
-- 13시 
insert into reservation(reservation_date, reservation_time, donationtype_no,state_no, member_id, location_no)
 values ('20230717','1300',4,1,'Ocean10',1); -- 13시 혈소판혈장 예약
insert into reservation(reservation_date, reservation_time, donationtype_no,state_no, member_id, location_no)
 values ('20230717','1300',3,1,'Summer1',1); -- 13시 혈소판
 
-- 13시 30분 / 혈소판2 혈소판혈장1
insert into reservation(reservation_date, reservation_time, donationtype_no,state_no, member_id, location_no)
 values ('20230717','1330',3,1,'Summer6',1); -- 13시30분 혈소판
insert into reservation(reservation_date, reservation_time, donationtype_no,state_no, member_id, location_no)
 values ('20230717','1330',4,1,'Summer3',1); -- 13시 30분 혈소판 혈장
-- 14시 모두 가능
-- 14시 30분 모두 가능
-- 15시 
insert into reservation(reservation_date, reservation_time, donationtype_no,state_no, member_id, location_no)
 values ('20230717','1500',3,1,'Shadow1',1); -- 15시 00분 혈소판
insert into reservation(reservation_date, reservation_time, donationtype_no,state_no, member_id, location_no)
 values ('20230717','1500',4,1,'Shadow2',1); -- 15시 00분 혈소판혈장
-- 16시 30분 전혈2 혈소판혈장1
insert into reservation(reservation_date, reservation_time, donationtype_no, state_no, member_id, location_no)
 values ('20230717','1630',1,1,'Shadow5',1); -- 16시 30분 전혈 
insert into reservation(reservation_date, reservation_time, donationtype_no,state_no, member_id, location_no)
 values ('20230717','1630',4,1,'Shadow8',1); -- 16시 30분 혈소판혈장
-- 17시 00분 모두 가능
-- 17시 30분  혈소판혈장1 혈소판1 전혈3
insert into reservation(reservation_date, reservation_time, donationtype_no,state_no, member_id, location_no)
 values ('20230717','1730',4,1,'Spring6',1); -- 17시 30분 혈소판혈장 예약
insert into reservation(reservation_date, reservation_time, donationtype_no,state_no, member_id, location_no)
 values ('20230717','1730',3,1,'Spring2',1); -- 17시 30분 혈소판 예약
insert into reservation(reservation_date, reservation_time, donationtype_no,state_no, member_id, location_no)
 values ('20230717','1730',1,1,'Spring3',1); -- 17시 30분 전혈 예약

 -- 18시 00분 예약 모두 가능
 -- 18시 30 분 예약 모두 가능
 -- 19시 00  전혈2 혈소판 1
insert into reservation(reservation_date, reservation_time, donationtype_no,state_no, member_id, location_no)
	values ('20230717','1830',1,1,'Meadow1',1); --  전혈 예약
insert into reservation(reservation_date, reservation_time, donationtype_no,state_no, member_id, location_no)
	values ('20230717','1830',3,1,'Meadow2',1); -- 혈소판 예약

commit;
 
 
SELECT * FROM  reservation;

drop table donationtype;
create table donationtype(
donationtype_no int primary key,
donationtype_name varchar(50)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

insert into donationtype values(1,'전혈');
insert into donationtype values(2,'혈장');
insert into donationtype values(3,'혈소판');
insert into donationtype values(4,'혈소판혈장');


SELECT * FROM donationtype;
commit;

select r.reservation_date , r.reservation_time , rc.donationtype_name from reservation r,  donationtype rc 
	where r.donationtype_no = rc.donationtype_no;
    
SELECT
	d.donationtype_name ,r.reservation_time ,r.reservation_date
FROM reservation r, donationtype d 
where r.donationtype_no = d.donationtype_no
and r.reservation_date = '20230711' order by r.reservation_time;

use theglory;
SELECT
	d.donationtype_name, r.reservation_no, r.donationtype_no, r.reservation_time ,r.reservation_date
FROM reservation r, donationtype d 
where r.donationtype_no = d.donationtype_no
and r.reservation_date = '20230711' order by r.reservation_time, r.donationtype_no;
    
SELECT
	d.donationtype_name, r.reservation_no, r.donationtype_no, r.reservation_time ,r.reservation_date
FROM reservation r, donationtype d 
where r.donationtype_no = d.donationtype_no
and r.reservation_date = '20230711' 
and r.location_no = 1
order by r.reservation_time, r.donationtype_no;
    
SELECT * FROM reservation;    

SELECT location_name locationName FROM location
WHERE location_no = 1;
    
    
    