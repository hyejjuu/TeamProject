
## DATABASE 생성 및 선택
CREATE DATABASE IF NOT EXISTS theglory;
use theglory;

-- num_goods, name_goods, explain_goods, pic_goods, value_goods
DROP TABLE IF EXISTS goods;
CREATE TABLE IF NOT EXISTS goods(
  no INTEGER AUTO_INCREMENT PRIMARY KEY,
  name_goods VARCHAR(1000) NOT NULL,
  explain_goods VARCHAR(1000) NOT NULL,
  pic_goods VARCHAR(1000) NOT NULL,
  value_goods VARCHAR(1000) NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO goods (name_goods, explain_goods, pic_goods, value_goods) VALUES ('영화표', '멀티플렉스에서 1인, 1회 영화관람이 가능한 쿠폰입니다.', 'resources/img/goodsmovieticket.jpg', '마일리지 1점' );
INSERT INTO goods (name_goods, explain_goods, pic_goods, value_goods) VALUES ('손톱깍기 세트', '손발톱 손질이 가능한 고급세트입니다.', 'resources/img/goodsnailclipperset.jpg', '마일리지 1점' );
INSERT INTO goods (name_goods, explain_goods, pic_goods, value_goods) VALUES ('포켓몬스터 인형', '한정판 포켓몬스터 인형입니다.', 'resources/img/goodspokemonset.jpg', '마일리지 10점' );
INSERT INTO goods (name_goods, explain_goods, pic_goods, value_goods) VALUES ('화장품 세트', '20만원 상당의 화장품세트입니다.', 'resources/img/goodscosmeticset.jpg', '마일리지 20점' );
INSERT INTO goods (name_goods, explain_goods, pic_goods, value_goods) VALUES ('에어프라이기', '가정용 에어프라이기입니다.', 'resources/img/goodsairfryer.jpg', '마일리지 30점' );
INSERT INTO goods (name_goods, explain_goods, pic_goods, value_goods) VALUES ('전자레인지', '가정용 전자레인지입니다.', 'resources/img/goodsmicrowave.jpg', '마일리지 50점' );
INSERT INTO goods (name_goods, explain_goods, pic_goods, value_goods) VALUES ('갤럭시S', '최신 삼성 갤럭시S입니다.', 'resources/img/goodsgalaxyS.jpg', '마일리지 100점' );
INSERT INTO goods (name_goods, explain_goods, pic_goods, value_goods) VALUES ('아이패드', '최신 애플 아이패드입니다.', 'resources/img/goodsipad.jpg', '마일리지 200점' );
COMMIT;

SELECT * FROM goods ORDER BY no asc;
