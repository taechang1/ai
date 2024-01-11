-- 피벗의 구현

use sqldb;
select*from usertbl;
select*from  buytbl;

create table pivoTest
(
uNa char(3),
ses char(2),
amout int
);

insert into pivoTest values
('김범수','겨울',10),('윤종신','여름',15),('김범수','가을',25),('윤종신','가을',25),
('김범수','여름',25),('윤종신','봄',5),('김범수','봄',15),('윤종신','겨울',35);

select*from pivoTest;
-- 피벗:함수 사용해서 보기 편하게 만들기
select uNa '이름',sum(if(ses='봄',amout,0))'봄',
                 sum(if(ses='여름',amout,0))'여름',
                 sum(if(ses='가을',amout,0))'가을',
                 sum(if(ses='겨울',amout,0))'겨울',
                 sum(amout)'합계'
from pivoTest group by uNa;

-- 270 page 문제 풀기
select season,
       sum(if(uNa='김범수',amout,0))'김범수',
	   sum(if(uNa='윤종신',amout,0))'윤종신',
       sum(amount)'합계'
from pivoTest group by season;

-- json 파일 처리하기
-- 1.json 만들기
-- json_object()
select json_array(1,"abc",Null,True,curtime());-- []배열 리스트
-- json_object()
select json_object("score",87,"name","hong","age",25);

set @jsonDate =json_object("score",87,"name","hong","age",25);
select @jsonDate ;
select*from usertbl;
-- 키 userid ,addr값 json을 만들기
select
      json_object(userid,addr)
      from usertbl;
      
-- 키 userid,값[010,000000]형태로 json을 만들기
select
       json_object(userid,json_array(mobile1,mobile2))
       from usertbl
       into outfile 'D:/ai/study/temp/movies/jsonOutput.json';
       
-- 자료형이 json 인지 판단하기
-- json_void()
set @jsonDate =json_object("score",87,"name","hong","age",25);
select
if(json_valid(@jsonDate)=1,
'json자료다',
'json자료가 아니다');
-- json 자료안에 값을 검색하기
SET @j='["abc",[{"k":"10"},"def"],[{"x1":"abc1"},{"x2":"abc2"},{"x5":"abc5"}],{"y":"bcd"}]';

select
   json_search(@j,'all','abc55');-- 못 찾으면 null이 반환된다 -- 찾으면 리스트 위치를 알려준다
-- json_extract

-- json_insert

SET @j='{"a":1,"b":[2,3]}';
select json_insert(@j,'$.c',10);-- 키가 새것이면 삽입된다
select json_insert(@j,'$.a',10);-- 키가 이미 있으면 삽입되지 않는다
select json_insert(@j,'$.b','[2,3,4]');-- 키가 이미 있으면 삽입되지 않는다

-- json_replace
SET @j='{"a":1,"b":[2,3]}';
select json_replace(@j,'$.a',10);-- 키가 있으면 수정하기
select json_replace(@j,'$.c',10);-- 키가 없으면 아무걱도 안하기

-- ------------- 조인
select*from usertbl;
select*from buytbl;

select*from usertbl
inner join buytbl
on usertbl.userid =buytbl.userid
where birthyear between 1970 and  1980;

select usertbl.name, buytbl.prodName  from usertbl 
   inner join  buytbl
   on usertbl.userid = buytbl.userid 
where  birthyear  between 1970 and 1980 order by usertbl.name limit 3 ;

-- select usertbl.name, buytbl.prodName  from usertbl 
--                    5                        1
--    inner join  buytbl
--                  2
--    on usertbl.userid = buytbl.userid 
--                     3
-- where  birthyear  between 1970 and 1980 
--                      4
-- order by usertbl.name
--              6
-- limit 3 ; 
--     7
select u.name, b.prodName  from usertbl u 
   inner join  buytbl b
   on u.userid = b.userid 
where  b.userid='BBK';

-- 282
create table stdtbl(
stdName varchar(10) not null primary key,
addr char(4) not null
);
create table clubtbl(
clubName varchar(10) not null primary key,
roomNo char(4) not null
);

create table stdclubTbl (
   num int auto_increment not null primary key,
   stdName varchar(10) not null,
   clubName varchar(10) not null,
   foreign key(stdName) references stdTbl(stdName),
   foreign key(clubName) references clubTbl(clubName)
);

insert into stdTbl
values
( '김범수','경남'), ('성시경','서울'), ('조용필','경기'),('은지원','경북'), ('바비킴','서울') ; 

insert into clubTbl
values
( '수영','101호'), ('바둑','102호'), ('축구','103호'),('봉사','104호') ; 

insert into stdclubTbl
values
( null, '김범수','바둑'), (null,'김범수','축구'),
(null,'조용필','축구'),(null,'은지원','축구'),
(null, '은지원','봉사'), (null, '바비킴','봉사') ; 

select*from stdTbl;
select*from clubTbl;
select*from stdclubTbl;
-- 1.요구사항 학생테이블 동아리 테이블 학생 동아리 테이블을 이용하여
-- 학생을 기준으로 학생이름 지역 가입한 동아리 동아리방 보기
select s.stdName,s.addr,c.clubName,c.roomNo

from stdTbl s
 inner join stdclubtbl sc
 on s.stdName= sc.stdName
 inner join clubtbl c
 on sc.clubName=c.clubName;
 -- 2.요구사항 학생 테이블 동아리 테이블 학생 동아리 테이블을 이용하여
 -- 축구를 선택하신 분의 이름과 지역은?
 select
 c.clubName,s.stdName
 from stdTbl s
  inner join stdclubtbl sc
  on s.stdName= sc.stdName
   inner join clubtbl c
    on sc.clubName=c.clubName
    where sc.clubName='축구';
    
-- 3. 요구사항 학생테이블, 동아리테이블, 학생동아리 테이블을 이용하여 
-- 은지원이 선택한 동아리와 동아리방은?
select
c.clubName,c.roomNo
 from stdTbl s
  inner join stdclubtbl sc
  on s.stdName= sc.stdName
   inner join clubtbl c
    on sc.clubName=c.clubName
    where sc.stdName='은지원';

-- 4. 요구사항 학생테이블, 동아리테이블, 학생동아리 테이블을 이용하여 
-- 서울 지역에 사는 사람이 선택한 동아리명은? 답은 바비킴 봉사 성시경 null
select
s.stdName,c.clubName
 from stdTbl s
  left outer join stdclubtbl sc
  on s.stdName= sc.stdName
   left outer  join clubtbl c
    on sc.clubName=c.clubName
    where s.addr='서울';
 -- 5 요구사항 동아리방 101 호와 102 호를 사용하는 사람들의 이름을 구하기
 -- 답은 102호 김범수 단 101호nulㅣ 출력되지 않는다 왜 null이니까
 select
   c.roomNo,s.stdName
 from stdTbl s
  left outer join stdclubtbl sc
  on s.stdName= sc.stdName
 right outer join clubtbl c
    on sc.clubName=c.clubName
    where c.roomNo in('101호','102호');
    -- outer join
    -- 조인에 만족하지 않는 행까지 포함하기 null까지 포함하기
    select
    *
    from stdTbl s
    left outer join stdclubTbl sc
    on s.stdName= sc.stdName;
    
     select
    *
    from stdTbl s
    right outer join stdclubTbl sc
    on s.stdName= sc.stdName;
    
    select
    *
    from stdtbl s
	left outer join stdclubtbl sc
    on s.stdName= sc.stdName
    left outer join clubtbl c
    on sc.clubName= c.clubName
    
    union
     select
    *
    from stdtbl s
     left outer join stdclubtbl sc
    on s.stdName= sc.stdName
    right outer join clubtbl c
    on sc.clubName= c.clubName;
-- cross join 비강추
select*from stdtbl s,stdclubtbl sc,clubtbl c;
    
select*from stdtbl s
cross join stdclubtbl sc;

-- self 조인 -----
USE sqldb;
CREATE TABLE empTbl (emp CHAR(3), manager CHAR(3), empTel VARCHAR(8));

INSERT INTO empTbl VALUES('나사장',NULL,'0000');
INSERT INTO empTbl VALUES('김재무','나사장','2222');
INSERT INTO empTbl VALUES('김부장','김재무','2222-1');
INSERT INTO empTbl VALUES('이부장','김재무','2222-2');
INSERT INTO empTbl VALUES('우대리','이부장','2222-2-1');
INSERT INTO empTbl VALUES('지사원','이부장','2222-2-2');
INSERT INTO empTbl VALUES('이영업','나사장','1111');
INSERT INTO empTbl VALUES('한과장','이영업','1111-1');
INSERT INTO empTbl VALUES('최정보','나사장','3333');
INSERT INTO empTbl VALUES('윤차장','최정보','3333-1');
INSERT INTO empTbl VALUES('이주임','윤차장','3333-1-1');

select*from empTbl;
-- 우대리 상관의 연락처 답 2222-2
select
e1.emptbl e
from emptbl e
 inner join emptbl e1
 on e.manager=e1.emp
 where e.emp='우대리';
 
 -- 이주임 매니저의 매니저는 최정보
 select
 e1.manager
 from emptbl e1
 inner join emptbl e1
  on e.emptbl= e1.emp
 where e.emp='이주임';
 
 
 -- ---
 select
 e1.manager
 from emptbl e
  inner join emptbl e1
  on e.manager=e1.emp
   inner join emptbl e2
   on e1.manager=e2.emp;
   
select
 e2.emptel
 from emptbl e
  inner join emptbl e1
  on e.manager=e1.emp
   inner join emptbl e2
   on e1.manager=e2.emp
   where e.emp='이주임';
 