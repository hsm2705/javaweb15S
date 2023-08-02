show tables;

create table news (
	idx			int not null auto_increment,	/* 뉴스 고유번호 */
	mid		 	varchar(20) not null,			/* 뉴스 올린이 아이디 */
	nickName	varchar(20) not null,			/* 뉴스 올린이 닉네임 */
	title 		varchar(50) not null,			/* 뉴스 제목 */
	email		varchar(50), 					/* 이메일 주소 */
	content	text not null,						/* 뉴스 내용 */
	readNum		int default 0,					/* 글 조회수 */
	openSw  	char(2)	default 'OK',			/* 게시글 공개여부(OK:공개,NO:비공개) */
	wDate 		datetime default now(),			/* 뉴스 올린 날짜/시간 */
	good		int default 0,					/* '좋아요' 클릭 횟수 누적 */
	primary key(idx)
);

desc news;

drop table news;
drop table newsReply;

delete table newsReply;

insert news values (default,'admin','관리자','가장 빠르게 소식을 접해보세요!','admin1234@gmail.com','소식 게시판에서 가장 빠르게 라이엇 게임즈의 소식을 접할 수 있습니다.',default,default,default,default);

select * from news;

create table newsReply (
	idx			int not null auto_increment,
	newsIdx		int not null,
	mid			varchar(20) not null,
	nickName	varchar(20) not null,
	wDate		datetime default now(),
	content		text not null,
	groupId		int default 0,
	level		int default 0,
	primary key(idx),
	foreign key(newsIdx) references news(idx)
	on update cascade
	on delete restrict
);

desc newsReply;

