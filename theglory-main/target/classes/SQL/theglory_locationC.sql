use theglory;

-- 주소 위도 경도

select * from location where location_address like '%관악구%';

drop table location;

create table location(
location_no INTEGER AUTO_INCREMENT PRIMARY KEY,
location_name varchar(50),
donationtype varchar(5), -- bd = blood donation 헌혈
location_address varchar(100), -- 우선 도로명 주소로
location_starthour varchar(10),
location_endhour varchar(10),
location_tel varchar(15),
loaction_category int,
latitude varchar(15),
longitude varchar(15),
area_no int
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 서울 동부


insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('서울중앙(원내)','보류' , 
'서울 강서구 공항대로 591 대한적십자사 중앙혈액원 3층',
'0900','1800','0267110184',2,'37.5480421','126.870715',1);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('구로디지털단지역센터','보류' , 
'서울 관악구 시흥대로 576 명인빌딩 2층(구로디지털단지역센터 6번출구 길건너편 올리브영 2층)',
'0900','1800','028699415',1,'37.4840485','126.903061',1);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('신도림테크노마트센터','보류' , 
'서울 구로구 새말로 97 신도림테크노마트 지하상가 1층 광장, 신도림역 3번 출구',
'0900','1800','028610801',2,'37.5069587','126.890296',1);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('서울역센터','보류' , 
'서울 중구 청파로 426 (봉래동2가), 서울역2번출구(북쪽광장)',
'0900','1800','027529020',2,'37.5581471','126.969569',1);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('신촌연대앞센터','보류' , 
'서울 서대문구 명물길 6 윤성빌딩 8층',
'0900','1800','023926460',2,'37.5572962','126.937461',1);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('신촌센터','보류' , 
'서울 서대문구 신촌로 107 세인빌딩  2층 2호선 신촌역 4번 출구',
'0900','1800','023121247',2,'37.5556205','126.937813',1);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('연신내센터','보류' , 
'서울 은평구 통일로 855-8 (갈현동) Y빌딩 4층',
'0900','1800','023537750',2,'37.6190483','126.920225',1);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('홍대센터','보류' , 
'서울 마포구 양화로 152 (동교동 162-1) 대화빌딩 6층, 홍대역 9번출구)',
'0900','1800','023235420',2,'37.5558368','126.922818',1);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('서울대역센터','보류' , 
'서울 관악구 관악로 152  2층(봉천동 1598-18) 관악구청 맞은편, 서울대입구역 2번출구',
'0900','1800','02-873-4364',2,'37.4787364','126.952587',1);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('대방역센터','보류' , 
'서울 영등포구 여의대방로 300 (신길동 1372), 대방역 5번출구',
'0900','1800','028256560',2,'37.5132936','126.925679',1);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('우장산역센터','보류' , 
'서울 강서구 강서로45길 5 (화곡동 1006-1) 2층, 우장산역 3번 출구',
'0900','1800','0226035817',2,'37.5478091','126.835817',1);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('서울대학교센터','보류' , 
'서울 관악구 관악로 1 (서울대학교) 두례문예관 1층 103-1호',
'0900','1800','028862479',2,'37.4533208','126.957125',1);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('일산센터','보류' , 
'경기 고양시 일산동구 중앙로1261번길 55 (장항동) 효산캐슬빌딩 204호, 정발산역 1번출구',
'0900','1800','0319015492',2,'37.6575570','126.770841',1);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('영등포센터','보류' , 
'서울 영등포구 영중로 3 (영등포동 4가), 영등포역 지하상가 2번출구',
'0900','1800','0226751361',2,'37.5167664','126.906174',1);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('목동센터','보류' , 
'서울 양천구 목동동로 293 현대41타워 지하',
'0900','1800','027153105',2,'37.5281626','126.875795',1);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('발산역센터','보류' , 
'서울 양천구 목동동로 293 현대41타워 지하',
'0900','1800','027771291',2,'37.5597863','126.8384114',1);



-- 서울남부
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('서울남부(원내)','보류' , 
'서울 강남구 개포로31길 48 대한적십자사 서울남부혈액원',
'0900','1800','025700662',2,'37.4820165','127.049083',2);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('강동센터','보류' , 
'강동센터,서울 강동구 고덕로 272 이마트 명일점앞(명일2동 46-5호) 5호선 고덕역 4번출구',
'0900','1800','0234275130',2,'37.5546516','127.1557517',2);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('동서울2센터','보류' , 
'서울 광진구 강변역로 50 동서울터미널내 1층 114호(구의동 546-1번지) 2호선 강변역 4번출구',
'0900','1800','024463526',2,'37.5339687','127.093637',2);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('천호센터','보류' , 
'서울 강동구 천호대로 1033 강동빌딩 8층 (천호동453-15호) 천호역 5번출구',
'0900','1800','024853515',2,'37.5378483','127.127009',2);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('강남센터','보류' , 
'서울 서초구 강남대로 437 대원빌딩 7층 / 2호선 강남역 10번출구, 9호선 신논현역 6번출구(CGV 건너편)',
'0900','1800','025330770',2,'37.5013321','127.025437',2);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('건대역센터','보류' , 
'서울 광진구 동일로22길 115 하마빌딩 4층(화양동 5-91) 2,7호선 건대역 2번출구',
'0900','1800','024984185',2,'37.5407691','127.070450',2);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('강남2센터','보류' , 
'서울 강남구 강남대로 378 준빌딩9층(역삼동825-9) 2호선 강남역 2번출구',
'0900','1800','025641525',2,'37.4966372','127.028625',2);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('이수센터','보류' , 
'서울 동작구 동작대로 109 경문빌딩 3층(사당동 145-2)4호선 이수역(총신대)13번출구',
'0900','1800','025789811',2,'37.4863493','126.981754',2);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('잠실역센터','보류' , 
'서울 송파구 올림픽로 지하265 잠실역 구내광장 7호점(잠실 광역버스 환승센터 옆)',
'0900','1800','0222027479',2,'37.5137262','127.101202',2);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('코엑스센터','보류' , 
'서울 강남구 봉은사로 524 코엑스몰 R7, 2호선 삼성역 5번 출구',
'0900','1800','025510600',2,'37.5125020','127.058796',2);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('노량진역센터','보류' , 
'서울 동작구 노량진로 154 동작경찰서 옆, 노량진역 1호선 1번출구, 9호선 3번출구',
'0900','1800','028252916',2,'37.5133935','126.942962',2);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('하남센터','보류' , 
'경기 하남시 신장로 133 1층',
'0900','1800','0317961035',2,'37.5381925','127.203564',2);

-- 서울 동부

insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('서울동부(원내)','보류' , 
'서울 노원구 동일로 1329 대한적십자사 서울동부혈액원 2층(7호선 중계역 6번 출구)',
'0900','1800','0220929356',2,'37.6470721','127.061846',3);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('노원센터','보류' , 
'서울 노원구 상계로 70 화랑빌딩 7층(노원역 4호선 2번 출구)',
'0900','1800','029345340',2,'37.6559824','127.062714',3);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('돈암센터','보류' , 
'서울 성북구 동소문로20다길 17 랄라블라 빌딩 4층 (4호선 성신여대역 1번 출구 200M)',
'0900','1800','029253566',2,'37.5919554','127.017665',3);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('수유센터','보류' , 
'서울 강북구 도봉로 325 수성타워 (지하철4호선 수유역 5번 출구)',
'0900','1800','029004772',2,'37.6372287','127.024439',3);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('회기센터','보류' , 
'서울 동대문구 회기로 188 두리빌딩 5층 (1호선 회기역 1번 출구)',
'0900','1800','029696199',2,'37.5897451','127.056795',3);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('의정부센터','보류' , 
'경기 의정부시 행복로 9 2층(LG U+ 건물 / 1호선 의정부역 5-3번 출구)',
'0900','1800','0318410322',2,'37.5897451','127.056795',3);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('구리센터','보류' , 
'경기 구리시 경춘로 239 리맥스빌딩 7층 (경의중앙 구리역 2번 출구)',
'0900','1800','0315635322',2,'37.6015949','127.141600',3);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('한양대역센터','보류' , 
'서울 성동구 왕십리로 206 한양대역(역사 내 2번 출구 방면)',
'0900','1800','0222961076',2,'37.5555670','127.043562',3);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('고려대앞센터','보류' , 
'서울 성북구 인촌로24길 11 2층(6호선 안암역 3번출구 안경박사 2층)',
'0900','1800','029673852',2,'37.5856733','127.029483',3);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('대학로센터','보류' , 
'서울 종로구 대명길 26 3층(4호선 혜화역 4번출구)',
'0900','1800','027431972',2,'37.5833521','127.000160',3);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('광화문센터','보류' , 
'서울 종로구 종로 33 그랑서울 2층(쉐이크쉑 위층/1호선 종각역 1번출구)',
'0900','1800','027321027',2,'37.5710970','126.981370',3);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('의정부2센터','보류' , 
'경기 의정부시 시민로 80 센트럴타워 707호(1호선 의정부역 2번출구)',
'0900','1800','0318710310',2,'37.7380151','127.043563',3);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('노해로센터','보류' , 
'서울 노원구 노해로 480 조광빌딩 2층 (7호선 노원역 5번 출구)',
'0900','1800','029350322',2,'37.6541450','127.061421',3);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('망우역센터','보류' , 
'서울 중랑구 망우로 353 상봉 프레미어스 엠코 C동 302호(망우역 1번 출구)',
'0900','1800','027621978',2,'37.5980767','127.090342',3);

-- 부산
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('부산(원내)','보류' , 
'부산 부산진구 전포대로 168 (전포3동 362-5번지)',
'0900','1800','0518109054',2,'35.1515039','129.065890',4);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('남포센터','보류' , 
'부산 중구 구덕로 50-1 (남포동 5가 3-7)',
'0900','1800','0512467505',2,'35.0985319','129.030243',4);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('서면센터','보류' , 
'부산 부산진구 중앙대로 698-1',
'0900','1800','0518097505',2,'35.1551544','129.059486',4);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('장전센터','보류' , 
'부산 금정구 부산대학로 47 롯데리아 부산대점 2층',
'0900','1800','0515824505',2,'35.2311524','129.086105',4);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('동의대센터','보류' , 
'부산 부산진구 엄광로 176',
'0900','1800','0518922505',2,'35.1415342','129.033548',4);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('하단센터','보류' , 
'부산 사하구 낙동대로550번길 13 3층',
'0900','1800','0512041691',2,'35.1133252','128.964829',4);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('동의과학대학센터','보류' , 
'부산 부산진구 양지로 54',
'0900','1800','0518615505',2,'35.1658934','129.072860',4);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('대연센터','보류' , 
'부산 남구 용소로 4',
'0900','1800','0516119505',2,'35.1367871','129.100030',4);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('부전센터','보류' , 
'부산 부산진구 중앙대로702번길 50',
'0900','1800','0518047505',2,'35.1552490','129.061870',4);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('덕천센터','보류' , 
'부산 북구 백양대로 1200',
'0900','1800','0513357505',2,'35.2094002','129.006010',4);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('해운대센터','보류' , 
'부산 해운대구 구남로29번길 38',
'0900','1800','0517469505',2,'35.1625468','129.162264',4);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('부산대학로센터','보류' , 
'부산 금정구 부산대학로 63',
'0900','1800','0513137505',2,'35.2314255','129.084377',4);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('서면로센터','보류' , 
'부산 부산진구 서면로68번길 1 노블레스 빌딩 3층',
'0900','1800','0518057505',2,'35.1568994','129.058082',4);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('사상센터','보류' , 
'부산 사상구 사상로 200 엠시티빌딩 3층 301호',
'0900','1800','0512457505',2,'35.1629913','128.984601',4);

-- 경기
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('경기(원내)','보류' , 
'경기 수원시 권선구 권광로 129',
'0900','1800','0312208518',2,'37.2596777','127.030568',5);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('평촌센터','보류' , 
'경기 안양시 동안구 동안로 130',
'0900','1800','0313878842',2,'37.3897339','126.9510641',5);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('수원역센터','보류' , 
'경기 수원시 팔달구 덕영대로 923-1 새수원 빌딩 4층',
'0900','1800','0312456518',2,'37.2661327','127.001664',5);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('안양센터','보류' , 
'경기 안양시 만안구 만안로223번길 13 , 3층',
'0900','1800','0314498309',2,'35.1629913','128.984601',5);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('평택역센터','보류' , 
'경기 평택시 평택로39번길 36 , 2층',
'0900','1800','0316568844',2,'36.9909372','127.086619',5);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('한대앞역센터','보류' , 
'경기 안산시 상록구 광덕4로 391',
'0900','1800','0314065031',2,'37.3094156','126.853148',5);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('야탑센터','보류' , 
'경기 성남시 분당구 야탑로69번길 24-8 분당종합상가 3층',
'0900','1800','0317073791',2,'37.4115899','127.127600',5);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('서현센터','보류' , 
'경기 성남시 분당구 분당로53번길 11 , 서원빌딩 4층',
'0900','1800','031707-795',2,'37.3840522','127.121512',5);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('산본센터','보류' , 
'경기 군포시 산본로323번길 16-14 , 로데오거리 분수광장 센타빌딩 A동 3층',
'0900','1800','0313977600',2,'37.3596572','126.932019',5);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('용인센터','보류' , 
'경기 용인시 처인구 금령로 64 아이렉스타워 2층',
'0900','1800','0313381670',2,'37.2345858','127.203630',5);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('수원시청역센터','보류' , 
'경기 수원시 팔달구 권광로 181 씨네파크 2층',
'0900','1800','0312248550',2,'37.2639392','127.032249',5);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('수지센터','보류' , 
'경기 용인시 수지구 풍덕천로 133 금오프라자 4층',
'0900','1800','0312726133',2,'37.3236526','127.096223',5);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('동탄센터','보류' , 
'경기 화성시 동탄반석로 204 동탄제일프라자',
'0900','1800','03180035585',2,'37.2066425','127.072803',5);

-- 인천
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('인천(원내)','보류' , 
'인천 연수구 함박뫼로 220 (신연수역 3번출구)',
'0900','1800','0328101383',2,'37.4197524','126.689828',6);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('주안센터','보류' , 
'인천 남구 석바위로 68 필프라자',
'0900','1800','0324285195',2,'37.4608406','126.680604',6);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('부평센터','보류' , 
'인천 부평구 광장로 16 부평역사1층',
'0900','1800','0325040975',2,'37.4896712','126.722668',6);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('부천센터','보류' , 
'경기 부천시 원미구 부천로 4 경동빌딩',
'0900','1800','0326511618',2,'37.4844471','126.783472',6);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('상동센터','보류' , 
'경기 부천시 원미구 상동로 87 가나베스트타운',
'0900','1800','0323283052',2,'37.5052078','126.752400',6);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('구월센터','보류' , 
'인천 남동구 인하로 497-9 신현프라자',
'0900','1800','0324219013',2,'37.4439568','126.701571',6);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('광명센터','보류' , 
'경기 광명시 철산로 20 야우리빌딩',
'0900','1800','0220605473',2,'37.4757794','126.868365',6);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('김포구래센터','보류' , 
'경기 김포시 김포한강9로76번길 63 아스타프라자',
'0900','1800','0319863557',2,'37.6453670','126.626852',6);


-- 강원
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('강원(원내)','보류' , 
'강원 춘천시 퇴계공단1길 8',
'0900','1800','0332691043',2,'37.8457744','127.735932',7);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('원주센터','보류' , 
'강원 원주시 원일로 139 건강문화센터',
'0900','1800','0337456551',2,'37.3515657','127.946781',7);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('강원대센터','보류' , 
'강원 춘천시 강원대학길 1 천지관',
'0900','1800','0332535551',2,'37.8691627','127.744506',7);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('춘천명동센터','보류' , 
'강원 춘천시 시청길10번길 4-2',
'0900','1800','03180035585',2,'37.8802450','127.728488',7);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('상지대센터','보류' , 
'강원 원주시 상지대길 80 상지대학교',
'0900','1800','0337484012',2,'37.3704961','127.934217',7);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('강릉센터','보류' , 
'강원 강릉시 솔올로5번길 41 강릉혈액공급소',
'0900','1800','0336473460',2,'37.7641568','128.876004',7);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('원주터미널센터','보류' , 
'강원 원주시 서원대로 162 프라임빌딩2층',
'0900','1800','0337347787',2,'37.3440258','127.929533',7);

-- 충북
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('충북(원내)','보류' , 
'충북 청주시 흥덕구 가로수로 1000 대한적십자사',
'0900','1800','0432308763',2,'36.6224118','127.409049',8);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('성안길센터','보류' , 
'충북 청주시 상당구 성안로 26-1 성안길 청주시청 제2청사 옆 건물',
'0900','1800','0337347787',2,'36.6345470','127.488990',8);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('충북대센터','보류' , 
'충북 청주시 서원구 충대로 1 충북대학교 개신문화관',
'0900','1800','0432652655',2,'36.6283933','127.459223',8);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('충주센터','보류' , 
'충북 충주시 성서7길 22-2 현대타운',
'0900','1800','0438426262',2,'36.9713555','127.931737',8);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('청대앞센터','보류' , 
'충북 청주시 청원구 상당로 252',
'0900','1800','0432682656',2,'36.6507934','127.489193',8);

-- 대전
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('충남(원내)','보류' , 
'대전 대덕구 송촌남로 22 대전충남적십자혈액원',
'0900','1800','0426232166',2,'36.3539329','127.442058',9);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('천안센터','보류' , 
'충남 천안시 동남구 만남로 52 문타워',
'0900','1800','0415612166',2,'36.8186483','127.157833',9);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('공주대학교센터','보류' , 
'충남 공주시 공주대학로 56',
'0900','1800','0418582166',2,'36.4675102','127.138894',9);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('충남대학교센터','보류' , 
'대전 유성구 대학로 99 충남대학교 한누리회관',
'0900','1800','0428237166',2,'36.3696542','127.344345',9);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('으능정이센터','보류' , 
'대전 중구 중앙로 164 이안경원건물',
'0900','1800','0422522166',2,'36.3290857','127.427674',9);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('둔산센터','보류' , 
'대전 서구 둔산로 34 씨엔씨타워',
'0900','1800','0424862166',2,'36.3513778','127.377530',9);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('대전복합터미널센터','보류' , 
'대전 동구 동서대로 1688 빅플러스타워',
'0900','1800','0426312166',2,'36.3488223','127.437407',9);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('노은역센터','보류' , 
'대전 유성구 은구비남로33번길 36 흥인빌딩',
'0900','1800','0428262166',2,'36.3738773','127.319524',9);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('아산센터','보류' , 
'충남 아산시 번영로 215 우전빌딩',
'0900','1800','0415342166',2,'36.7846436','127.014546',9);

-- 전북
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('전북(원내)','보류' , 
'전북 전주시 덕진구 혁신로 463',
'0900','1800','0632705836',2,'35.8542129','127.065326',10);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('전북대센터','보류' , 
'전북 전주시 덕진구 백제대로 567 전북대학교',
'0900','1800','0632759907',2,'35.8459274','127.134891',10);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('덕진센터','보류' , 
'전북 전주시 덕진구 기린대로 470',
'0900','1800','0632752114',2,'35.8420700','127.126516',10);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('고사동센터','보류' , 
'전북 전주시 완산구 전주객사5길 46',
'0900','1800','0632852114',2,'35.8202566','127.145394',10);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('익산센터','보류' , 
'전북 익산시 무왕로 884-1',
'0900','1800','0638562110',2,'35.9638847','126.956873',10);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('군산대센터','보류' , 
'전북 군산시 대학로 558 군산대학교',
'0900','1800','0415342166',2,'35.9473428','126.681225',10);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('군산센터','보류' , 
'전북 군산시 월명로 233 효원월드타워',
'0900','1800','0634660609',2,'35.9648312','126.715100',10);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('효자센터','보류' , 
'전북 전주시 완산구 용머리로 57 전주클리닉센터',
'0900','1800','0632292116',2,'35.8068862','127.116360',10);

-- 대구
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('대구경북(원내)','보류' , 
'대구 중구 태평로 7',
'0900','1800','0536055642',2,'35.8786455','128.579200',11);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('포항센터','보류' , 
'경북 포항시 북구 중앙상가길 10-1',
'0900','1800','0542448891',2,'36.0364027','129.362487',11);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('안동센터','보류' , 
'경북 안동시 문화광장길 18',
'0900','1800','0548583780',2,'36.5640237','128.730559',11);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('2.28기념중앙공원센터','보류' , 
'대구 중구 동성로2길 80',
'0900','1800','0532532280',2,'35.8695706','128.597642',11);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('대구대센터','보류' , 
'경북 경산시 진량읍대구대로 201',
'0900','1800','0538513124',2,'35.9277161','128.543546',11);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('대구보건대센터','보류' , 
'대구 북구 영송로 15',
'0900','1800','0533269064',2,'35.8068862','127.116360',11);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('동성로센터','보류' , 
'대구 중구 국채보상로 598',
'0900','1800','0532522285',2,'35.8705562','128.596034',11);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('중앙로센터','보류' , 
'대구 중구 중앙대로 390',
'0900','1800','0532522315',2,'35.8677550','128.593897',11);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('경북대북문센터','보류' , 
'대구 북구 대학로 83',
'0900','1800','0534216235',2,'35.8927465','128.609226',11);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('구미센터','보류' , 
'경북 구미시 문화로 25-1',
'0900','1800','0544589790',2,'36.1288902','128.334201',11);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('동성로광장센터','보류' , 
'대구 중구 동성로 23-2',
'0900','1800','0532542901',2,'35.8691089','128.595086',11);

-- 경남
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('경남(원내)','보류' , 
'경남 창원시 의창구 용지로 226',
'0900','1800','0552706035',2,'35.2337261','128.685941',12);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('진주센터','보류' , 
'경남 진주시 진양호로 526',
'0900','1800','0557452611',2,'35.1923976','128.083014',12);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('김해센터','보류' , 
'경남 김해시 내외중앙로 59',
'0900','1800','0553332612',2,'35.2354667','128.866499',12);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('경남대앞센터','보류' , 
'경남 창원시 마산합포구 해안대로 2 댓츠빌딩',
'0900','1800','0552455161',2,'35.1801874','128.559194',12);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('창원센터','보류' , 
'경남 창원시 의창구 원이대로 587',
'0900','1800','0552865161',2,'35.2284354','128.679494',12);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('경상대센터','보류' , 
'경남 진주시 진주대로 501 경상대학교',
'0900','1800','0557565161',2,'35.1511811','128.098073',12);

-- 울산
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('울산(원내)','보류' , 
'울산 중구 함월10길 25',
'0900','1800','0522108553',2,'35.5731539','129.308620',14);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('성남동센터','보류' , 
'울산 중구 젊음의거리 30-5 다남빌딩',
'0900','1800','0522438799',2,'35.5533496','129.318439',14);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('울산대센터','보류' , 
'울산 남구 대학로 93 울산대학교 내 종합서비스센터',
'0900','1800','0522243969',2,'35.5416308','129.256948',14);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('울산과학대센터','보류' , 
'울산 동구 봉수로 101 울산과학대학 동부캠퍼스',
'0900','1800','0522363459',2,'35.4953857','129.415306',14);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('공업탑센터','보류' , 
'울산 남구 삼산로 18 동아빌딩',
'0900','1800','0522607918',2,'35.5325893','129.309982',14);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('울산삼산동센터','보류' , 
'울산 남구 삼산로 275 킴스메디컬센터',
'0900','1800','0522665225',2,'35.5396069','129.337192',14);

-- 제주
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('제주(원내)','보류' , 
'제주 제주시 오남로 45',
'0900','1800','0647207800',2,'33.4911349','126.520125',13);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('신제주센터','보류' , 
'제주 제주시 신광로 39',
'0900','1800','0647588101',2,'33.4885815','126.490377',13);
insert into location(location_name,donationtype,location_address,location_starthour,location_endhour,
location_tel,loaction_category,latitude,longitude,area_no) values('한라센터','보류' , 
'제주 제주시 중앙로 230 중앙빌딩',
'0900','1800','0647578101',2,'33.4991158','126.529970',13);