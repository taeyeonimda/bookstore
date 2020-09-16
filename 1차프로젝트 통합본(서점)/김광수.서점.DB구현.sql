drop user kimkwangsoo cascade;

create user kimkwangsoo IDENTIFIED BY kimkwangsoo default tablespace users;
grant connect, resource TO kimkwangsoo;

-- 회원 
CREATE TABLE kimkwangsoo.USERS (
		"USER_ID" VARCHAR2(20) NOT NULL,
		"USER_NAME" VARCHAR2(20) NULL,
		"USER_PWD" VARCHAR2(20) NULL,
		"USER_EMAIL" VARCHAR2(50) NULL,
		"USER_TEL" VARCHAR2(20) NULL,
		"USER_ADDR" VARCHAR2(200) NULL,
		"USER_BIRTH" DATE NULL,
		"USER_REG_DATE" DATE NULL,
		"USER_CLASS" CHAR(1) NULL,
		"USER_STATUS" CHAR(1) NULL
);

-- 회원
ALTER TABLE kimkwangsoo.USERS
	ADD CONSTRAINT "PK_USERS" -- 회원 기본키
	PRIMARY KEY (
		"USER_ID" -- 아이디
	);
    
    
INSERT INTO kimkwangsoo.users VALUES (
    'user',
    '사용자',
    'user',
    'user@naver.com',
    '01000000003',
    '서울특별시 마포구',
    '2005-09-04',
    '2020-04-27',
    'U',
    'A'
);

	
INSERT INTO kimkwangsoo.users VALUES (
    'bbc926',
    '한아름',
    '1234',
    'user@naver.com',
    '01084861633',
    '서울특별시 강서구 대림동 그린빌 101호',
    '1996-09-04',
    '2020-04-20',
    'U',
    'A'
);


INSERT INTO kimkwangsoo.users VALUES (
    'chs03',
    '최한석',
    '1234',
    'user@naver.com',
    '01084861633',
    '서울특별시 강서구 대림동 그린빌 102호',
    '2001-07-22',
    '2020-02-02',
    'U',
    'A'
);

INSERT INTO kimkwangsoo.users VALUES (
    'cds03',
    '이봉팔',
    '1234',
    'user@naver.com',
    '01064861633',
    '서울특별시 강서구 대림동 그린빌 103호',
    '1991-04-08',
    '2020-02-12',
    'U',
    'A'
);

INSERT INTO kimkwangsoo.users VALUES (
    'cqws03',
    '곽두팔',
    '1234',
    'user@naver.com',
    '01086861633',
    '서울특별시 강서구 대림동 그린빌 202호',
    '2006-03-26',
    '2020-02-09',
    'U',
    'A'
);

INSERT INTO kimkwangsoo.users VALUES (
    'chhh03',
    '천필상',
    '1234',
    'user@naver.com',
    '01084561633',
    '서울특별시 강서구 대림동 그린빌 107호',
    '1986-05-14',
    '2019-02-02',
    'U',
    'A'
);


-- 도서
CREATE TABLE kimkwangsoo.BOOKS (
		"BOOK_ISBN" NUMBER(7) NOT NULL,
		"BOOK_TITLE" VARCHAR2(70) NULL,
		"BOOK_AUTHOR" VARCHAR2(20) NULL,
		"PUBLISHER" VARCHAR2(50) NULL,
		"PUBLISH_DATE" DATE NULL,
		"BOOK_INTR" VARCHAR2(300) NULL,
		"BOOK_GENRE" VARCHAR2(40) NULL,
		"BOOK_IMAGE" VARCHAR2(60) NULL,
		"BOOK_PRICE" NUMBER(9) NULL,
        "BOOK_STATUS" char(1)
);

-- 도서
ALTER TABLE kimkwangsoo.BOOKS
	ADD CONSTRAINT "PK_BOOKS" -- 도서 기본키
	PRIMARY KEY (
		"BOOK_ISBN" -- ISBN
	);
	

CREATE SEQUENCE kimkwangsoo.bookno_seq INCREMENT BY 1 START WITH 10001;

INSERT INTO kimkwangsoo.books VALUES (
    kimkwangsoo.bookno_seq.NEXTVAL,
    '스티브잡스',
    '월터아이작슨',
    '민음사',
    '2015-10-05',
    '스티브 잡스가 직접 참여한 유일한 공식 전기',
    '경영',
    'Steve Jobs.jpg',
    '25000',
    'O'
);

INSERT INTO kimkwangsoo.books VALUES (
    kimkwangsoo.bookno_seq.NEXTVAL,
    '트래블로그 폴란드',
    '조대현',
    '나우출판사',
    '2020-04-29',
    '유럽의 중원 폴란드를 담은 여행 가이드북',
    '해외여행',
    'Poland Travlog.jpg',
    '16000',
    'O'
);

INSERT INTO kimkwangsoo.books VALUES (
    kimkwangsoo.bookno_seq.NEXTVAL,
    '백설공주에게 죽음을',
    '넬레',
    '북로드',
    '2011-02-11',
    '폐쇄적 분지 마을에서 일어나는 일련의 사건',
    '독일소설',
    'Snow White.jpg',
    '14000',
    'O'
);

INSERT INTO kimkwangsoo.books VALUES (
    kimkwangsoo.bookno_seq.NEXTVAL,
    '폴란드에서 보물찾기',
    '강경효',
    '미래엔아이세움 ',
    '2013-08-19',
    '전 세계를 여행하면서 각 나라의 역사와 문화를 알아 가는 세계 탐험',
    '어린이',
    'Poland Treasure Hunt.jpg',
    '10000',
    'O'
);

INSERT INTO kimkwangsoo.books VALUES (
    kimkwangsoo.bookno_seq.NEXTVAL,
    'the 바른 폴란드어',
    '피오르트',
    'ECKBOOKS ',
    '2016-11-21',
    '동사로 쉽게 배우는 폴란드어',
    '유럽어',
    'Polska.jpg',
    '15000',
    'O'
);

INSERT INTO kimkwangsoo.books VALUES (
    kimkwangsoo.bookno_seq.NEXTVAL,
    '폴란드어 문법',
    '김지영',
    '한국외국어대학교',
    '2016-02-10',
    '폴란드어 원어로 된 문법서',
    '외국어',
    'Polska Grammar.jpg',
    '18000',
    'O'
);

INSERT INTO kimkwangsoo.books VALUES (
    kimkwangsoo.bookno_seq.NEXTVAL,
    '특이점이 온다',
    '레이 커즈와일',
    '김영사',
    '2007-01-07',
    '기술이 인간을 초월하는 순간',
    'IT',
    'Singularity.jpg',
    '35000',
    'O'
);

INSERT INTO kimkwangsoo.books VALUES (
    kimkwangsoo.bookno_seq.NEXTVAL,
    '여행필수 폴란드어 회화',
    '문예림',
    '김영사',
    '2001-06-30',
    '폴란드의 독립 후 유일한 공용어가 된 폴란드어 회화. ',
    '유럽어',
    'Polska Travel.jpg',
    '7000',
    'O'
);

INSERT INTO kimkwangsoo.books VALUES (
    kimkwangsoo.bookno_seq.NEXTVAL,
    '4차원 문명세계',
    '박천수',
    '하문사',
    '2013-07-25',
    '4차원 문명세계를 향한 UFO 여행기',
    '우주',
    'Spiritual Civilization.jpg',
    '10000',
    'O'
);


-- 장바구니
CREATE TABLE kimkwangsoo.CARTS (
		"CART_NUM" NUMBER(7) NOT NULL,
		"USER_ID" VARCHAR2(20) NOT NULL,
		"BOOK_ISBN" NUMBER(7) NULL,
        "BOOK_QUAN" NUMBER(3) NULL
);


-- 장바구니
ALTER TABLE kimkwangsoo.CARTS
	ADD CONSTRAINT "PK_CARTS" -- 장바구니 기본키
	PRIMARY KEY (
		"CART_NUM" -- 장바구니번호
	);

	
CREATE SEQUENCE kimkwangsoo.cartno_seq INCREMENT BY 1 START WITH 30001;

INSERT INTO kimkwangsoo.carts VALUES (
    kimkwangsoo.cartno_seq.NEXTVAL,
    'chs03',
    10005,
    1
);

INSERT INTO kimkwangsoo.carts VALUES (
    kimkwangsoo.cartno_seq.NEXTVAL,
    'chs03',
    10006,
    2
);

INSERT INTO kimkwangsoo.carts VALUES (
    kimkwangsoo.cartno_seq.NEXTVAL,
    'chhh03',
    10006,
    3
);

INSERT INTO kimkwangsoo.carts VALUES (
    kimkwangsoo.cartno_seq.NEXTVAL,
    'cqws03',
    10007,
    2
);

INSERT INTO kimkwangsoo.carts VALUES (
    kimkwangsoo.cartno_seq.NEXTVAL,
    'cds03',
    10001,
    1
);


-- 주문
CREATE TABLE kimkwangsoo.ORDERS (
		"ORDER_NUM" NUMBER(7) NOT NULL,
		"ORDER_DATE" DATE NULL,
		"PAY_TYPE" CHAR(1) NULL,
		"RECIPIENT_NAME" VARCHAR2(20) NULL,
		"RECIPIENT_ADDR" VARCHAR2(200) NULL,
		"RECIPIENT_TEL" VARCHAR2(20) NULL,
		"USER_ID" VARCHAR2(20) NULL,
		"BOOK_ISBN" NUMBER(7) NULL,
        "ORDER_STATUS" CHAR(1) NULL,
        "BOOK_QUAN" NUMBER(3) NULL
);



-- 주문
ALTER TABLE kimkwangsoo.ORDERS
	ADD CONSTRAINT "PK_ORDERS" -- 주문 기본키
	PRIMARY KEY (
		"ORDER_NUM" -- 주문번호
	);
	
    
CREATE SEQUENCE kimkwangsoo.orderno_seq INCREMENT BY 1 START WITH 50001;	

insert into kimkwangsoo.orders values(
    kimkwangsoo.orderno_seq.nextval,
    sysdate,
	'A',
	'김태연',
	'인천시 서구',
	'010-1234-5678',
	'bbc926',
	10003,
    'D',
    2
);

insert into kimkwangsoo.orders values(
	kimkwangsoo.orderno_seq.nextval,
	sysdate,
	'C',
	'최한석',
	'서울시 용산',
	'010-5432-3218',
	'chs03',
	10008,
    'D',
    3
);

insert into kimkwangsoo.orders values(
	kimkwangsoo.orderno_seq.nextval,
	sysdate,
	'C',
	'최한석',
	'서울시 용산',
	'010-5432-3218',
	'chs03',
	10003,
    'D',
    1
);

insert into kimkwangsoo.orders values(
	kimkwangsoo.orderno_seq.nextval,
	sysdate,
	'M',
	'최한석',
	'서울시 용산',
	'010-5432-3218',
	'chs03',
	10002,
    'D',
    2
);

insert into kimkwangsoo.orders values(
	kimkwangsoo.orderno_seq.nextval,
	sysdate,
	'A',
	'최한석',
	'서울시 용산',
	'010-5432-3218',
	'chs03',
	10005,
    'D',
    1
);

insert into kimkwangsoo.orders values(
	kimkwangsoo.orderno_seq.nextval,
	sysdate,
	'A',
	'최한석',
	'서울시 용산',
	'010-5432-3218',
	'chs03',
	10001,
    'D',
    1
);

insert into kimkwangsoo.orders values(
	kimkwangsoo.orderno_seq.nextval,
	sysdate,
	'C',
	'한아름',
	'서울시 강남',
	'010-2312-6248',
	'cds03',
	10005,
    'D',
    1
);

insert into kimkwangsoo.orders values(
	kimkwangsoo.orderno_seq.nextval,
	sysdate,
	'C',
	'김광수',
	'서울시 용산구',
	'010-1231-6428',
	'cqws03',
	10006,
    'D',
    1
);

insert into kimkwangsoo.orders values(
	kimkwangsoo.orderno_seq.nextval,
	sysdate,
	'M',
	'이태양',
	'서울시 용산구',
	'010-5471-4321',
	'chhh03',
	10002,
    'D',
    2
);


-- 배송
CREATE TABLE kimkwangsoo.DELIVERS (
		"DELI_NUM" NUMBER(7) NOT NULL,
		"ORDER_NUM" NUMBER(7) NULL,
        "DELIVER_DATE" DATE NULL
);

-- 배송
ALTER TABLE kimkwangsoo.DELIVERS
	ADD CONSTRAINT "PK_DELIVERS" -- 배송 기본키
	PRIMARY KEY (
		"DELI_NUM" -- 배송번호
	);


CREATE SEQUENCE kimkwangsoo.deliverno_seq INCREMENT BY 1 START WITH 70001;

INSERT INTO kimkwangsoo.delivers VALUES (
    kimkwangsoo.deliverno_seq.NEXTVAL,
    50001,
    '2020-05-11'
);

INSERT INTO kimkwangsoo.delivers VALUES (
    kimkwangsoo.deliverno_seq.NEXTVAL,
    50002,
    '2020-05-11'
);

INSERT INTO kimkwangsoo.delivers VALUES (
    kimkwangsoo.deliverno_seq.NEXTVAL,
    50003,
    '2020-05-11'
);

INSERT INTO kimkwangsoo.delivers VALUES (
    kimkwangsoo.deliverno_seq.NEXTVAL,
    50004,
    '2020-05-11'
);

INSERT INTO kimkwangsoo.delivers VALUES (
    kimkwangsoo.deliverno_seq.NEXTVAL,
    50005,
    '2020-05-11'
);



-- 관리자
CREATE TABLE kimkwangsoo.MANAGERS (
		"MANAGER_ID" VARCHAR2(20) NOT NULL
);

-- 관리자
ALTER TABLE kimkwangsoo.MANAGERS
	ADD CONSTRAINT "PK_MANAGERS" -- 관리자 기본키
	PRIMARY KEY (
		"MANAGER_ID" -- 관리자 아이디
	);


INSERT INTO kimkwangsoo.users VALUES (
    'admin',
    '김광수',
    'admin',
    'admin@naver.com',
    '01000000000',
    '서울특별시 서대문구',
    '1990-11-24',
    '2020-02-12',
    'A',
    'A'
);

INSERT INTO kimkwangsoo.managers VALUES (
    'admin'
);


-- 장바구니
ALTER TABLE kimkwangsoo.CARTS
	ADD CONSTRAINT "FK_BOOKS_TO_CARTS" -- 도서 -> 장바구니
	FOREIGN KEY (
		"BOOK_ISBN" -- ISBN
	)
	REFERENCES kimkwangsoo.BOOKS ( -- 도서
		"BOOK_ISBN" -- ISBN
	);

-- 장바구니
ALTER TABLE kimkwangsoo.CARTS
	ADD CONSTRAINT "FK_USERS_TO_CARTS" -- 회원 -> 장바구니
	FOREIGN KEY (
		"USER_ID" -- 아이디
	)
	REFERENCES kimkwangsoo.USERS ( -- 회원
		"USER_ID" -- 아이디
	);

-- 주문
ALTER TABLE kimkwangsoo.ORDERS
	ADD CONSTRAINT "FK_USERS_TO_ORDERS" -- 회원 -> 주문
	FOREIGN KEY (
		"USER_ID" -- 아이디
	)
	REFERENCES kimkwangsoo.USERS ( -- 회원
		"USER_ID" -- 아이디
	);

-- 주문
ALTER TABLE kimkwangsoo.ORDERS
	ADD CONSTRAINT "FK_BOOKS_TO_ORDERS" -- 도서 -> 주문
	FOREIGN KEY (
		"BOOK_ISBN" -- ISBN
	)
	REFERENCES kimkwangsoo.BOOKS ( -- 도서
		"BOOK_ISBN" -- ISBN
	);

-- 배송
ALTER TABLE kimkwangsoo.DELIVERS
	ADD CONSTRAINT "FK_ORDERS_TO_DELIVERS" -- 주문 -> 배송
	FOREIGN KEY (
		"ORDER_NUM" -- 주문번호
	)
	REFERENCES kimkwangsoo.ORDERS ( -- 주문
		"ORDER_NUM" -- 주문번호
	);

    
-- 관리자
ALTER TABLE kimkwangsoo.MANAGERS
	ADD CONSTRAINT "FK_USERS_TO_MANAGERS" -- 회원 -> 관리자
	FOREIGN KEY (
		"MANAGER_ID" -- 관리자 아이디
	)
	REFERENCES kimkwangsoo.USERS ( -- 회원
		"USER_ID" -- 아이디
	);