--On Air Study

--스터디방 카테고리
create table sr_category (
   no   number   not null,
   category   varchar2(30) not null,
    constraint pk_no primary key(no)
);
create sequence seq_sr_category_no;
--샘플데이터
insert into sr_category values(seq_sr_category_no.nextval, '자격증');
insert into sr_category values(seq_sr_category_no.nextval, '면접');
insert into sr_category values(seq_sr_category_no.nextval, '입시');
insert into sr_category values(seq_sr_category_no.nextval, '취미/예술');
insert into sr_category values(seq_sr_category_no.nextval, '컴퓨터/IT');
insert into sr_category values(seq_sr_category_no.nextval, '창업');
insert into sr_category values(seq_sr_category_no.nextval, '어학');
insert into sr_category values(seq_sr_category_no.nextval, '기타');
insert into sr_category values(100, '관리자용');

--drop sequence seq_sr_category_no;
--delete from sr_category where no='48';
select * from sr_category;
  
--회원
create table member (
   member_id   varchar2(20) not null,
   member_name   varchar2(20) not null,
   password   varchar2(300)    not null,
   member_role   char(1) default 'M'    not null,
   phone    varchar2(11) not null,
   diligent_point   number default 0,
   blacklist_yn   char(1) default 'N' not null,
   withdraw_yn   char(1) default 'N' not null,
   member_comment   varchar2(100),
   category   number   not null,
    constraint pk_member_id primary key(member_id),
    constraint ck_member_role check(member_role in ('M', 'P', 'A')),
    constraint ck_blacklist_yn check(blacklist_yn in ('Y', 'N')),
    constraint ck_withdraw_yn check(withdraw_yn in ('Y', 'N')),
    constraints fk_category foreign key(category) references sr_category(no) on delete cascade
);
--샘플데이터
insert into member values('honggd', '홍길동', '1234', 'P', '01011223344', 50, default, default, '성실의 아이콘', 1);
insert into member values('admin', '관리자', '1111', 'A', '01011111111', 0, default, default, '총 관리자', 100);
insert into member values('jhking', '이지해', '1234', 'P', '01013611361', 99, default, default, '멋지고 미래가 창창한 젊은 천재 개발자', 5);
insert into member values('kinghj', '김해지', '1234', 'P', '01010011364', 98, default, default, '창창한 미래를 대표하는 프로개발자', 5);
insert into member values('sullgu', '구술', '1234', 'P', '01014411360', 55, default, default, '개발자 연봉 1억받고싶음', 5);
insert into member values('morewhite', '백다지', '1234', 'P', '01010041304', 63, default, default, '같이 자격증 공부 빡세게하실분', 1);
insert into member values('boramss', '남보라', '1234', 'P', '01010041333', 47, default, default, '자격증 부자가 될래요', 1);
insert into member values('songsong', '송인혜', '1234', 'P', '01011941383', 30, default, default, '자격증따서 취뽀하자!', 1);
insert into member values('sinsa', '신사임', '1234', 'P', '01011940303', 21, default, default, '취뽀대비 면접, 같이해바요~', 2);
insert into member values('shunsin', '김순신', '1234', 'P', '01013940393', 13, default, default, '면접용 대본만 주구루박박써놓음..면접대비스터디급구', 2);
insert into member values('qwerty', '박지디', '1234', 'P', '01013140311', 5, default, default, '면접합격경험 다수, 금융권면접준비중', 2);
insert into member values('happy', '정철수', '1234', 'P', '01019340312', 24, default, default, '코로나조심, 주1회 랜선뜨개질하실분~', 4);
insert into member values('outgoing', '김영희', '1234', 'P', '01069342342', 31, default, default, '취미생활수집가', 4);
insert into member values('coronablu', '심성지', '1234', 'P', '01027341341', 2, default, default, '조용하게살고싶다', 4);
insert into member values('yoloyolu', '곽도균', '1234', 'P', '01012341234', 8, default, default, '열심히살자!', 6);
insert into member values('learningU', '유재석', '1234', 'M', '01012341003', 38, default, default, '배울때 진정 살아있음을 느낀다', 6);
insert into member values('iluv', '구서울', '1234', 'P', '01077341073', 13, default, default, '6시 기상 필수', 3);
insert into member values('estudy', '장공영', '1234', 'P', '01087388073', 40, default, default, '9시기상.중국어스터디원구함', 7);
insert into member values('iouod', '한승현', '1234', 'P', '01084581179', 2, 'Y', default, '기상스터디원구함,모닝콜조아', 3);
insert into member values('early', '이혜슬', '1234', 'P', '01089981319', 34, 'N', default, '일찍일어나는새가 배부르다', 8);

--delete from member where member_id='admin' ;
select * from member;


--스터디방 리스트
create table sr_list (
   sr_no   number   not null,
   member_id   varchar2(20)   not null,
   sr_enroll_date   date   default sysdate not null,
   sr_category   number   not null,
   sr_opened_yn   char(1) default 'Y' not null,
   sr_ended_yn   char(1) default 'N' not null,
   sr_sort   char(1) default 'P' not null,
    constraint pk_sr_no primary key(sr_no),
    constraints fk_member_id foreign key(member_id) references member(member_id) on delete cascade,
    constraints fk_sr_category foreign key(sr_category) references sr_category(no) on delete cascade,
    constraint ck_sr_opened_yn check(sr_opened_yn in('Y', 'N')),
    constraint ck_sr_ended_yn check(sr_ended_yn in('Y', 'N')),
    constraint ck_sr_sort check(sr_sort in('N', 'P'))
);
create sequence seq_sr_list_no;
--샘플데이터
insert into sr_list values (seq_sr_list_no.nextval, 'admin', default, 1, default, default, 'N');
insert into sr_list values (seq_sr_list_no.nextval, 'admin', default, 2, default, default, 'N');
insert into sr_list values (seq_sr_list_no.nextval, 'admin', default, 3, default, default, 'N');
insert into sr_list values (seq_sr_list_no.nextval, 'admin', default, 4, default, default, 'N');
insert into sr_list values (seq_sr_list_no.nextval, 'admin', default, 5, default, default, 'N');
insert into sr_list values (seq_sr_list_no.nextval, 'admin', default, 6, default, default, 'N');
insert into sr_list values (seq_sr_list_no.nextval, 'admin', default, 7, default, default, 'N');
insert into sr_list values (seq_sr_list_no.nextval, 'admin', default, 8, default, default, 'N');
insert into sr_list values (seq_sr_list_no.nextval, 'honggd', default, 1, default, default, default);
insert into sr_list values (seq_sr_list_no.nextval, 'sinsa', default, 2, default, default, default);
insert into sr_list values (seq_sr_list_no.nextval, 'iluv', default, 3, default, default, default);
insert into sr_list values (seq_sr_list_no.nextval, 'happy', default, 4, default, default, default);
insert into sr_list values (seq_sr_list_no.nextval, 'jhking', default, 5, default, default, default);
insert into sr_list values (seq_sr_list_no.nextval, 'yoloyolu', default, 6, default, default, default);
insert into sr_list values (seq_sr_list_no.nextval, 'estudy', default, 7, default, default, default);
insert into sr_list values (seq_sr_list_no.nextval, 'early', default, 8, default, default, default);

--drop sequence seq_sr_list_no;
--delete from sr_list;
select * from sr_list;



--스터디방 정보
create table sr_info (
   sr_no   number   not null,
   sr_title   varchar2(150)   not null,
   sr_goal   varchar2(150),
   sr_comment   varchar2(300) not null,
   sr_attendance_cnt   number default 0,
   sr_ranking   number default 0,
   attend_day   varchar2(30)    not null,
   attend_time   varchar2(50) not null,
   forced_exit_opt   number default 0 not null,
   forced_exit_yn   char(1) default 'N' not null,
    constraints fk_sr_info_sr_no foreign key(sr_no) references sr_list(sr_no) on delete cascade
    --pk&fk
);
--샘플데이터
insert into sr_info values(1, '자격증 기본방', null, '자격증 스터디 기본방입니다', default, default, '-', '-', default, default); 
insert into sr_info values(2, '면접 기본방', null, '면접 스터디 기본방입니다', default, default, '-', '-', default, default); 
insert into sr_info values(3, '입시 기본방', null, '입시 스터디 기본방입니다', default, default, '-', '-', default, default); 
insert into sr_info values(4, '취미/예술 기본방', null, '취미/예술 스터디 기본방입니다', default, default, '-', '-', default, default); 
insert into sr_info values(5, '컴퓨터/IT 기본방', null, '컴퓨터/IT 스터디 기본방입니다', default, default, '-', '-', default, default); 
insert into sr_info values(6, '창업 기본방', null, '창업 스터디 기본방입니다', default, default, '-', '-', default, default); 
insert into sr_info values(7, '어학 기본방', null, '어학 스터디 기본방입니다', default, default, '-', '-', default, default); 
insert into sr_info values(8, '기타 기본방', null, '기타 스터디 기본방입니다', default, default, '-', '-', default, default); 
insert into sr_info values(9, '자단기 자격증단기 2달방', 'n월n일 자격증 따기', '절박한 사람이 모인 진짜 자격증방', 18, 4, '월,수,금', '13:00,15:00,13:00', 3, 'Y');
insert into sr_info values(10, '상반기 금융권면접대비방', '취뽀', '매주 2회 랜선 면접대비 발표가능한사람들 모였음', 8, 7, '수,금', '10:00,10:00', 2, 'Y');
insert into sr_info values(11, '하루 13시간 공부. 대학같이가자!', '대학합격!!!', '매일출석하고 공부내용인증가능한사람들모임', 12, 6, '월,화,수,목,금', '6:00,6:00,6:00,6:00,6:00', 3, 'Y');
insert into sr_info values(12, '랜선월요병탈출 뜨개질파티', '각자 목표한거 완성하기', '주 1회는 랜선소통방', 4, 8, '월', '22:00', 0, 'N');
insert into sr_info values(13, '일어나자바해야지', '자기전 1일1커밋, 오류공유방', '백엔드방', 52, 1, '월,수,금', '22:00,22:00,22:00', 3, 'Y');
insert into sr_info values(14, '헬스케어창업공모전 함께할 성실한 디자이너,개발자방', '창업공모전 당선', '성실창업공모전준비만몰두 ', 16, 5, '화,수,목', '18:00,18:00,18:00', 0, 'N');
insert into sr_info values(15, 'DO YOUR BEST토익900점넘기기', '토익900점이상 달성', '급하게 토익점수필요한사람들', 24, 3, '월,수,금', '13:00,13:00,13:00', 3, 'Y');
insert into sr_info values(16, '8시기상스터디', '일찍기상해서광명찾자짹', '일찍일어나는새들짹짹짹.', 34, 2, '월,화,수,목,금', '8:00,8:00,8:00,8:00,8:00', 3, 'Y');

--delete from sr_info;
select * from sr_info;



--스터디방 로그
create table sr_log (
   no   number   not null,
   sr_no   number   not null,
   member_id   varchar2(20)   not null,
   status_log   varchar2(20)   not null,
   warning_cnt   number   not null,
   reader_yn   char(1) default 'N'   not null,
    constraint pk_sr_log_no primary key(no),
    constraints fk_sr_log_no foreign key(sr_no) references sr_list(sr_no) on delete cascade,
    constraints fk_log_member_id foreign key(member_id) references member(member_id) on delete cascade,
    constraint ck_reader_yn check(reader_yn in('Y', 'N'))
);
create sequence seq_sr_log_no;
--샘플데이터
insert into sr_log values(seq_sr_log_no.nextval, 1, 'honggd', '참여', 0, 'Y');
insert into sr_log values(seq_sr_log_no.nextval, 1, 'morewhite', '참여', 0, 'N');
insert into sr_log values(seq_sr_log_no.nextval, 1, 'boramss', '참여', 0, 'N');
insert into sr_log values(seq_sr_log_no.nextval, 1, 'songsong', '참여', 0, 'N');
insert into sr_log values(seq_sr_log_no.nextval, 2, 'sinsa', '참여', 0, 'Y');
insert into sr_log values(seq_sr_log_no.nextval, 2, 'shunsin', '참여', 0, 'N');
insert into sr_log values(seq_sr_log_no.nextval, 2, 'qwerty', '참여', 0, 'N');
insert into sr_log values(seq_sr_log_no.nextval, 3, 'iluv', '참여', 0, 'Y');
insert into sr_log values(seq_sr_log_no.nextval, 3, 'iouod', '참여', 2, 'N');
insert into sr_log values(seq_sr_log_no.nextval, 4, 'happy', '참여', 2, 'Y');
insert into sr_log values(seq_sr_log_no.nextval, 4, 'outgoing', '참여', 2, 'N');
insert into sr_log values(seq_sr_log_no.nextval, 4, 'coronablu', '참여', 2, 'N');
insert into sr_log values(seq_sr_log_no.nextval, 5, 'jhking', '참여', 2, 'Y');
insert into sr_log values(seq_sr_log_no.nextval, 5, 'kinghj', '참여', 2, 'N');
insert into sr_log values(seq_sr_log_no.nextval, 5, 'sullgu', '참여', 2, 'N');
insert into sr_log values(seq_sr_log_no.nextval, 6, 'yoloyolu', '참여', 2, 'Y');
insert into sr_log values(seq_sr_log_no.nextval, 6, 'learningU', '참여', 2, 'N');
insert into sr_log values(seq_sr_log_no.nextval, 7, 'estudy', '참여', 2, 'Y');
insert into sr_log values(seq_sr_log_no.nextval, 8, 'early', '참여', 2, 'Y');
insert into sr_log values(seq_sr_log_no.nextval, 9, 'honggd', '참여', 0, 'Y');
insert into sr_log values(seq_sr_log_no.nextval, 9, 'morewhite', '참여', 0, 'N');
insert into sr_log values(seq_sr_log_no.nextval, 9, 'boramss', '참여', 0, 'N');
insert into sr_log values(seq_sr_log_no.nextval, 9, 'songsong', '참여', 0, 'N');
insert into sr_log values(seq_sr_log_no.nextval, 10, 'sinsa', '참여', 0, 'Y');
insert into sr_log values(seq_sr_log_no.nextval, 10, 'shunsin', '참여', 0, 'N');
insert into sr_log values(seq_sr_log_no.nextval, 10, 'qwerty', '참여', 0, 'N');
insert into sr_log values(seq_sr_log_no.nextval, 11, 'iluv', '참여', 0, 'Y');
insert into sr_log values(seq_sr_log_no.nextval, 11, 'iouod', '참여', 2, 'N');
insert into sr_log values(seq_sr_log_no.nextval, 12, 'happy', '참여', 0, 'Y');
insert into sr_log values(seq_sr_log_no.nextval, 12, 'outgoing', '참여', 0, 'N');
insert into sr_log values(seq_sr_log_no.nextval, 12, 'coronablu', '참여', 0, 'N');
insert into sr_log values(seq_sr_log_no.nextval, 13, 'jhking', '참여', 0, 'Y');
insert into sr_log values(seq_sr_log_no.nextval, 13, 'kinghj', '참여', 0, 'N');
insert into sr_log values(seq_sr_log_no.nextval, 13, 'sullgu', '참여', 0, 'N');
insert into sr_log values(seq_sr_log_no.nextval, 13, 'morewhite', '참여', 0, 'N');
insert into sr_log values(seq_sr_log_no.nextval, 14, 'yoloyolu', '참여', 0, 'Y');
insert into sr_log values(seq_sr_log_no.nextval, 14, 'learningU', '참여', 0, 'N');
insert into sr_log values(seq_sr_log_no.nextval, 15, 'estudy', '참여', 0, 'Y');
insert into sr_log values(seq_sr_log_no.nextval, 15, 'outgoing', '참여', 0, 'N');
insert into sr_log values(seq_sr_log_no.nextval, 16, 'early', '참여', 0, 'Y');
insert into sr_log values(seq_sr_log_no.nextval, 16, 'boramss', '참여', 0, 'N');
insert into sr_log values(seq_sr_log_no.nextval, 16, 'jhking', '참여', 0, 'N');
insert into sr_log values(seq_sr_log_no.nextval, 16, 'sullgu', '참여', 0, 'N');
insert into sr_log values(seq_sr_log_no.nextval, 16, 'qwerty', '참여', 0, 'N');
insert into sr_log values(seq_sr_log_no.nextval, 16, 'songsong', '참여', 0, 'N');


--drop sequence seq_sr_log_no;
--delete from sr_log;
select * from sr_log;



--신고 카테고리
create table report_category(
    no number not null,
    category varchar2(30) not null,
    constraint pk_report_category_no primary key(no)
);
create sequence seq_report_category_no;
--샘플데이터
insert into report_category values(seq_report_category_no.nextval, '음담패설');
insert into report_category values(seq_report_category_no.nextval, '부적절한 홍보');
insert into report_category values(seq_report_category_no.nextval, '비방 또는 욕설');

--drop sequence seq_report_category_no;
--delete from report_category;
select * from report_category;

--신고내역
create table report_log (
	no	number	not null,
	content_id	number	not null,
    --fk 제약조건이 없으므로 자바단에서 무결한 데이터를 넣어줘야함
	content_category	char(1)	not null,
	reporter	varchar2(20)	not null,
	reported_member	varchar2(20)	not null,
	category	number	not null,
	reported_date	date default sysdate	not null,
	vaild_yn	char(1) default 'Y'	not null,
    constraint pk_report_no primary key(no),
    constraint ck_content_category check(content_category in('M', 'C', 'R')),
    constraints fk_reporter foreign key(reporter) references member(member_id) on delete cascade,
    constraints fk_reported_member foreign key(reported_member) references member(member_id) on delete cascade,
    constraints fk_report_category foreign key(category) references report_category(no) on delete cascade,
    constraint ck_vaild_yn check(vaild_yn in('Y', 'N'))
);
create sequence seq_report_log_no;
--샘플데이터
insert into report_log values(seq_report_log_no.nextval, 10, 'R', 'honggd', 'sinsa', 1, default, default);
insert into report_log values(seq_report_log_no.nextval, 14, 'R', 'sullgu', 'yoloyolu', 2, default, default);

--drop sequence seq_report_log_no;
--delete from report_log;
select*from report_log;

--초대내역
create table invitation (
	no	number	not null,
	hosting_id	varchar2(20)	not null,
	invited_id	varchar2(20)	not null,
	sr_no	number	not null,
	invitation_date	date default sysdate	not null,
	invitation_yn	char(1) default 'N'	not null,
    constraint pk_invitation_no primary key(no),
    constraints fk_hosting_id foreign key(hosting_id) references member(member_id) on delete cascade,
    constraints fk_invited_id foreign key(invited_id) references member(member_id) on delete cascade,
    constraints fk_invitation_sr_no foreign key(sr_no) references sr_list(sr_no) on delete cascade,
    constraint ck_invitation_yn check(invitation_yn in('Y', 'N'))
);
create sequence seq_invitation_no;
--샘플데이터
insert into invitation values(seq_invitation_no.nextval, 'yoloyolu', 'coronablu', 14, default, default);
insert into invitation values(seq_invitation_no.nextval, 'honggd', 'coronablu', 9, default, default);
insert into invitation values(seq_invitation_no.nextval, 'honggd', 'learningU', 9, default, default);
insert into invitation values(seq_invitation_no.nextval, 'honggd', 'hjking', 9, default, default);
insert into invitation values(seq_invitation_no.nextval, 'sinsa', 'honggd',10 , default, default);
insert into invitation values(seq_invitation_no.nextval, 'sinsa', 'hjking', 10, default, default);
insert into invitation values(seq_invitation_no.nextval, 'sinsa', 'learningU', 10, default, default);
insert into invitation values(seq_invitation_no.nextval, 'estudy', 'honggd', 15, default, default);
insert into invitation values(seq_invitation_no.nextval, 'estudy', 'sinsa', 15, default, default);
insert into invitation values(seq_invitation_no.nextval, 'iluv', 'sinsa', 11, default, default);
insert into invitation values(seq_invitation_no.nextval, 'iluv', 'happy', 11, default, default);
insert into invitation values(seq_invitation_no.nextval, 'iluv', 'honggd', 11, default, default);
insert into invitation values(seq_invitation_no.nextval, 'happy', 'shunsin', 12, default, default);
insert into invitation values(seq_invitation_no.nextval, 'happy', 'songsong', 12, default, default);
insert into invitation values(seq_invitation_no.nextval, 'happy', 'yoloyolu', 12, default, default);
insert into invitation values(seq_invitation_no.nextval, 'jhking', 'learningU', 13, default, default);
insert into invitation values(seq_invitation_no.nextval, 'jhking', 'qwerty', 13, default, default);
insert into invitation values(seq_invitation_no.nextval, 'jhking', 'morewhite', 13, default, default);
insert into invitation values(seq_invitation_no.nextval, 'yoloyolu', 'morewhite', 14, default, default);
insert into invitation values(seq_invitation_no.nextval, 'yoloyolu', 'sullgu', 14, default, default);

--drop sequence seq_invitation_no;
--delete from invitation;
select*from invitation;

--출석
create table attendance (
	no	number	not null,
	sr_no	number	not null,
	member_id	varchar2(20)	not null,
	attend_cnt	number,
	recent_attend_date	 date default sysdate	not null,
	maximum_cnt	number	not null,
    constraint pk_attendance_no primary key(no),
    constraints fk_attendance_no foreign key(sr_no) references sr_list(sr_no) on delete cascade,
    constraints fk_attendance_member_id foreign key(member_id) references member(member_id) on delete cascade
);
create sequence seq_attendance_no;
--샘플데이터
insert into attendance values(seq_attendance_no.nextval, 1, 'honggd',  0, default, 0);
select * from attendance;

--결제정보
create table payment_info (
	no	number	not null,
	member_id	varchar2(20) 	not null,
	next_pay_date	date	not null,
	payment_amount	number default 130000 not	null,
    constraint pk_payment_info_no primary key(no),
    constraints fk_payment_id foreign key(member_id) references member(member_id) on delete cascade
);
create sequence seq_payment_info_no;
--샘플데이터
insert into payment_info values(seq_payment_info_no.nextval, 'honggd', add_months(sysdate, 3) , 13000);

--결제내역
create table payment_log (
	no	number	not null,
	info_no	number	not null,
	payment_date	date default sysdate	null,
    constraint pk_payment_log__no primary key(no),
    constraints fk_info_no foreign key(info_no) references payment_info(no)
);
create sequence seq_payment_log_no;
--샘플데이터
insert into payment_log values(seq_payment_log_no.nextval, 1, default);

--위시리스트
create table sr_wish_list (
	no	number	not null,
	member_id	varchar2(20)	not null,
	sr_no	number	not null,
    constraint  pk_wish_no primary key(no),
    constraints fk_wish_id foreign key(member_id) references member(member_id) on delete cascade,
    constraints fk_wish_no foreign key(sr_no) references sr_list(sr_no) on delete cascade    
);
create sequence seq_wish_no;
--샘플데이터
insert into sr_wish_list values(seq_wish_no.nextval, 'honggd', 1);

--시험문제
create table pre_test (
	test_no	number	not null,
	member_id	varchar2(20)	not null,
	sr_no	number	not null,
	test_question	varchar2(1000)	not null,
	test_answer	number	not null,
	test_choice1	varchar2(1000)	not null,
	test_choice2	varchar2(1000)	not null,
	test_choice3	varchar2(1000)	not null,
	test_choice4	varchar2(1000)	not null,
	file_path	varchar2(100)	not null,
	renamed_filename	varchar2(100)	not null,
    constraint  pk_test_no primary key(test_no),
    constraints fk_test_id foreign key(member_id) references member(member_id) on delete cascade,
    constraints fk_test_no foreign key(sr_no) references sr_list(sr_no) on delete cascade   
);
create sequence seq_test_no;
--샘플데이터
insert into pre_test values(seq_test_no.nextval, 'honggd', 1, '강사님 성함은 무엇인가?', 2, '홍길동', '김동현', '신사임당', '이순신', '파일경로', '파일이름');

--신청대기
create table sr_waiting_list (
	no	number	not null,
	member_id	varchar2(20)	not null,
	sr_no	number	not null,
    constraint  pk_waiting_no primary key(no),
    constraints fk_waiting_id foreign key(member_id) references member(member_id) on delete cascade,
    constraints fk_waiting_no foreign key(sr_no) references sr_list(sr_no) on delete cascade   
);
create sequence seq_waiting_no;
--샘플데이터
insert into sr_waiting_list values(seq_waiting_no.nextval, 'morewhite', 9);
insert into sr_waiting_list values(seq_waiting_no.nextval, 'jhking', 10);
insert into sr_waiting_list values(seq_waiting_no.nextval, 'estudy', 11);
insert into sr_waiting_list values(seq_waiting_no.nextval, 'honggd', 12);
insert into sr_waiting_list values(seq_waiting_no.nextval, 'iluv', 13);

select*from sr_waiting_list;

--쪽지
create table message (
	no	number	not null,
	sender_id	varchar2(20)	not null,
	receiver_id	varchar2(20)	not null,
	msg_content	varchar2(1000)	not null,
	send_date	date default sysdate	not null,
	read_yn	char(1) default 'N'	not null,
	receiver_del_yn	char(1) default 'N'	not null,
	sender_del_yn	char(1) default 'N'	not null,
    constraint  pk_message_no primary key(no),
    constraints fk_sender_id foreign key(sender_id) references member(member_id) on delete cascade,
    constraints fk_receiver_id foreign key(receiver_id) references member(member_id) on delete cascade,
    constraint ck_read_yn check(read_yn in('Y', 'N')),
    constraint ck_receiver_del_yn check(receiver_del_yn in('Y', 'N')),
    constraint ck_sencer_del_yn check(sender_del_yn in('Y', 'N'))
);
create sequence seq_message_no;
--샘플데이터
insert into message values(seq_message_no.nextval, 'outgoing', 'coronablu', '코로나지만 날도 좋은데 오빠랑 어디 놀러갈까~~?', default, 'Y', default, default);
select*from message;

--채팅
create table chatting (
	no	number	not null,
   	member_id	varchar2(20)	not null,
	sr_no	number	not null,
	chat_content	 varchar2(1000) not	null,
	send_date	date default sysdate	not null,
    constraint  pk_chatting_no primary key(no),
    constraints fk_chatting_id foreign key(member_id) references member(member_id) on delete cascade,
    constraints fk_chatting_no foreign key(sr_no) references sr_list(sr_no) on delete cascade
);
create sequence seq_chatting_no;
--샘플데이터
insert into chatting values(seq_chatting_no.nextval, 'honggd', 1, '이 방에 저 혼자뿐인가요...', default);

--프사 첨부파일
create table profile_attachment (
	no	number	not null,
	member_id	varchar2(20),
	sr_no	number,
	original_filename	varchar2(100)	not null,
	renamed_filename	varchar2(100)	not null,
	file_path	varchar2(100) not null,
    constraint  pk_profile_no primary key(no),
    constraints fk_profile_id foreign key(member_id) references member(member_id) on delete cascade,
    constraints fk_profile_no foreign key(sr_no) references sr_list(sr_no) on delete cascade
);
create sequence seq_profile_no;
--샘플데이터
insert into profile_attachment values(seq_profile_no.nextval, 'honggd', null, '원래파일이름', '리네임이름', '경로');

select*from profile_attachment;

--문의 카테고리
create table service_category (
	no	number	not null,
	category	varchar2(10) not null,
    constraint  pk_service_category_no primary key(no)
);
create sequence seq_service_category_no;
--샘플데이터

insert into service_category values(seq_service_category_no.nextval, '신고');
insert into service_category values(seq_service_category_no.nextval, '이용');
insert into service_category values(seq_service_category_no.nextval, '결제');
insert into service_category values(seq_service_category_no.nextval, '기타');

--drop sequence seq_service_category_no;
--delete from service_category;
select*from service_category;

--문의게시판
create table service (
	no	number	not null,
	category	number	not null,
	service_status	varchar2(15) default '답변대기' 	not null,
	service_title	varchar2(200)  not	 null,
	service_content	varchar2(3000) not	null,
	reply_no	number,
	member_id	varchar2(20) 	not null,
	service_date	date default sysdate not	null,
	read_yn	char(1) default 'N' not	null,
	service_level	number default 1 not	null,
    constraint  pk_service_no primary key(no),
    constraints fk_service_category foreign key(category) references service_category(no) on delete cascade,
    constraint ck_service_status check(service_status in('답변대기', '답변완료')),
    constraints fk_service_id foreign key(member_id) references member(member_id) on delete cascade,
    constraint ck_service_read_yn check(read_yn in('Y', 'N'))
);
--drop table service;
create sequence seq_service_no;
--샘플데이터
insert into service values(seq_service_no.nextval, 3, '답변대기', '결제하긴 했는데 카드에서 나갔는지 아닌지 모르겠어요~', '제곧내', null, 'honggd', default, default, default);
insert into service values(seq_service_no.nextval, 1, '답변대기', '여러번 신고', '한사람 여러번 신고 가능한가요?', null, 'jhking', default, default, default);
insert into service values(seq_service_no.nextval, 1, '답변대기', '블랙 리스트', '제가 왜 블랙 리스트 인가요?', null, 'iouod', default, default, default);
insert into service values(seq_service_no.nextval, 2, '답변대기', '프리미엄 이용', '결제 했는데 이용이 안되네요 확인 부탁', null, 'honggd', default, default, default);
insert into service values(seq_service_no.nextval, 2, '답변대기', '방 생성', '방 안만들어져여 어떻게 된거예여', null, 'honggd', default, default, default);
insert into service values(seq_service_no.nextval, 3, '답변대기', '결제 오류', '자꾸 오류나.... 쓰지 말라는건가?', null, 'honggd', default, default, default);
insert into service values(seq_service_no.nextval, 4, '답변대기', '비밀번호', '비밀번호 바꾸고 싶은데 인증이 자꾸 안되요', null, 'honggd', default, default, default);
insert into service values(seq_service_no.nextval, 4, '답변대기', '메인화면', '광고 내용 바꿔야 할 듯 하다....', null, 'honggd', default, default, default);

--drop sequence seq_service_no;
--delete service;
select*from service;

--자주찾는질문
create table service_content (
	no	number	not null,
	category	number	not null,
	title	varchar2(200) not	null,
	content	varchar2(3000) not	null,
    constraint pk_service_content_no primary key(no),
    constraints fk_service_content_category foreign key(category) references service_category(no) on delete cascade
);
create sequence seq_service_content_no;
--샘플데이터
insert into service_content values(seq_service_content_no.nextval, 1, '신고문의는 어디서 하나요?', '관리자한테 물어보기');
insert into service_content values(seq_service_content_no.nextval, 2, '프리미엄 서비스 이용', '프리미엄 회원은 결제를 통해서 이용 가능합니다..');
insert into service_content values(seq_service_content_no.nextval, 3, '결제수단은 어떤게 있나요?', '결제수단으로는 어쩌구페이가 있습니다.');
insert into service_content values(seq_service_content_no.nextval, 4, '아이디 찾기', '핸드폰 번호로 인증 후 확인 가능합니다.');

--drop  sequence seq_service_content_no;
--delete from service_content;
select*from service_content;

--스케줄러
create table scheduler (
	no	number	not null,
	member_id	varchar2(20)	,
	sr_no	number,
	start_date	date not null,
	end_date	date not null,
	content	varchar2(200) not null,
	color_code	varchar2(10) default '#ffffff' not null,
	schedule_yn	char(1) not	null,
	d_yn	char(1) not	null,
	time_opt	varchar2(20),
    enabled_yn char(1) default 'N' not null,
    --디데이 활성화 여부 추가
    constraint  pk_schedul_no primary key(no),
    constraints fk_schedul_id foreign key(member_id) references member(member_id) on delete cascade,
    constraints fk_schedul_no foreign key(sr_no) references sr_list(sr_no) on delete cascade,
    constraint ck_schedul_yn check(schedule_yn in('Y', 'N')),
    constraint ck_d_yn check(d_yn in('Y', 'N')),
    constraint ck_enabled_yn check(enabled_yn in('Y', 'N'))
);
create sequence seq_schedule_no;
--샘플데이터
insert into scheduler values(seq_schedule_no.nextval, 'honggd', null, '201016', '201017', '벼락치기공부', default, 'Y', 'N', null, default);

--공부다이어리
create table diary (
	no	number	not null,
	member_id	varchar2(20)	not null,
	diary_title	varchar2(200) not	null,
	diary_content	varchar2(3000) not	null,
	read_cnt	number default 0 not	null,
	diary_date	date default sysdate not	null,
    constraint  pk_diary_no primary key(no),
    constraints fk_diary_id foreign key(member_id) references member(member_id) on delete cascade    
);
create sequence seq_diary_no;
--샘플데이터
insert into diary values(seq_diary_no.nextval, 'honggd', '공부일찐의 공부비법~!', '그런 건 없습니다.', default, default);
--drop sequence seq_diary_no;
--delete from diary;
select * from diary;

--다이어리 댓글
create table diary_reply (
	no	number	not null,
	member_id	varchar2(20)	not null,
	diary_no	number	not null,
	reply_content	varchar2(1000) not	null,
	reply_date	date default sysdate not	null,
    constraint  pk_diary_reply_no primary key(no),
    constraints fk_diary_reply_id foreign key(member_id) references member(member_id) on delete cascade,
    constraints fk_diary_reply_no foreign key(diary_no) references diary(no) on delete cascade
);
create sequence seq_diary_reply_no;
--샘플데이터
insert into diary_reply values(seq_diary_reply_no.nextval, 'honggd', 1, '내가 쓰고 내가 댓글 달기~', default);

select * from diary_reply;
--다이어리 첨부파일
create table diary_attachment (
	no	number	not null,
	diary_no	number	not null,
	original_filename	varchar2(100) not 	null,
	renamed_filename	varchar2(100) not null,
	file_path	varchar2(100)	not null,
    constraint pk_diary_attachment_no primary key(no),
    constraints fk_diary_attachment_no foreign key(diary_no) references diary(no) on delete cascade
);
create sequence seq_diary_attach_no;
--샘플데이터
insert into diary_attachment values(seq_diary_attach_no.nextval, 1, '원래파일명', '리네임파일명', '경로');

--공지
create table notice (
	no 	number	not null,
	title	varchar2(200) not	null,
	content	varchar2(3000) not	null,
	read_cnt	number default 0 not	null,
	notice_date	date default sysdate not	null,
    constraint pk_notice_no primary key(no)
);
create sequence seq_notice_no;

select*from notice;
--샘플데이터
insert into notice values(seq_notice_no.nextval, '어쩌구 업데이트입니다', '내용은 별거 없습니다.', default, default);


commit;
