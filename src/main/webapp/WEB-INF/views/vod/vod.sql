show tables;

create table vod (
	idx			int not null auto_increment,		/* vod 고유번호 */
	mid			varchar(20) not null,				/* 올린이 아이디 */
	nickName	varchar(20) not null,				/* 올린이 닉네임 */
	title		varchar(100) not null,				/* vod 제목 */
	part		varchar(20) not null,				/* vod 분류(하이라이트/풀영상/인터뷰/기타) */
	thumb	varchar(100) not null,				/* vod 썸네일 */
	content		text,								/* vod URL 링크 */
	vDate		datetime default now(),				/* vod 업로드 날짜 */
	viewNum		int default '0',					/* vod 조회수 */
	openSw		char(6) default '공개',				/* vod 공개여부 */
	primary key (idx)
);

drop table vod;