show tables;

create table member2 (
	idx			int not null auto_increment,		/* 회원 고유번호 */
	mid			varchar(20) not null,				/* 회원 아이디(중복x) */
	pwd			varchar(100) not null,				/* 회원 비밀번호 */
	nickName	varchar(20) not null,				/* 회원 별명(중복x) */
	name		varchar(20) not null,				/* 회원 성명 */
	gender		varchar(5) default '미선택',			/* 회원 성별 */
	birthday	datetime default now(),				/* 회원 생일 */
	tel			varchar(15),						/* 회원 전화번호(010-xxxx-xxxx) */
	address		varchar(100),						/* 회원 주소(우편번호 API 활용) */
	email		varchar(50) not null,				/* 회원 이메일(아이디, 비밀번호 분실시/티켓 예매 및 상품 결제 완료 시 사용) - 형식체크 필수 */
	content 	text,								/* 회원 소개 */
	userDel 	char(2) default 'NO',      			/* 탈퇴 신청 유무 */
	level		int default 1,						/* 회원 등급(0:관리자, 1: 정회원) */
	startDate 	datetime default now(),				/* 최초 가입일 */
  	lastDate  	datetime default now(),				/* 마지막 접속일 */
	primary key (idx),
	unique key (mid)
);

insert into member2 values (default,'admin','1234','관리자','관리자',default,default,'010-1234-5678','충북 청주시 흥덕구','admin1234@gmail.com','관리자 계정입니다',default,'0',default,default);

desc member;

select * from member;

drop table member2;