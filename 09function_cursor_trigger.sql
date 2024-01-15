-- stored procedure program
-- 설계 --> 인스턴스 화 --> 사용

delimiter $$
create procedure userProc()
begin
   select*from usertbl ;
end $$
delimiter 

call userProc();

desc usertbl;


delimiter $$
create procedure userProc1(in_addr char(2))
begin
   select*from usertbl where addr='서울' ;
end $$
delimiter 
call userProc1('서울');

-- 유저 아이디 'BBK','LJB' 검색하기
delimiter $$
create procedure userProc2(in_userId1 varchar(10),in _userId2  varchar(10))
begin
   select*from usertbl where userId in (_userId1,_userId2) ;
end $$
delimiter 
call userProc2('BBK','LJB');
-- 파라미터 값을 내보내기
-- 서울에 사는 사람이 몇명인지 변수에 담아서 외부로 내보내기
-- 파라미터를 넣어 처리형식
drop procedure userProc3;

delimiter $$
create procedure userProc3(in _addr char(2), out _result int)
begin
   select count(addr) into _result from usertbl where addr= _addr;
end $$
delimiter ; 

select*from usertbl;
call userProc3('서울', @_result);
select @_result;
select*from  buytbl;
desc buytbl;
-- 문제 groupName을 입력하면 price 값이 가장 큰것을 찾기 변수로 받기
-- 처리결과 입력은 전자 답은 노트북 1000
--             의류 답은 청바지 50
--             서적 답은 책    15
drop procedure buyProc1;
delimiter $$
create procedure buyProc1(in _gN char(4), out _price int )
begin
select  max(price) into _price from buytbl where groupName = _gN ;
end $$

delimiter ;

call buyProc1('전자', @priceVar) ;
call buyProc1('의류', @priceVar) ;
call buyProc1('서적', @priceVar) ;
select @priceVar;



drop procedure  buyPro2;

delimiter $$
create procedure  buyPro2( in _gN  char(4), out _pN char(6),  out _price int )
begin 
  /* 여러개의 출력값을 얻으려면 select문을 여러개 쓰기 */ 
  select prodName into _pN from buytbl where groupName = _gN 
       group by prodName 
       order by max(price) desc limit 1;
  select  max(price) into _price from buytbl where  groupName = _gN ;
   
end $$
delimiter ;

call buyPro2( '전자', @pNVar, @priVar) ;
select @pNVar, @priVar; 

call buyPro2( '의류', @pNVar, @priVar) ;
select @pNVar, @priVar; 

call buyPro2( '서적', @pNVar, @priVar) ;
select @pNVar, @priVar; 

-- 2 )procedure function 함수 결과 1개 나온다 reture452
-- 주의사항 사전에 해야 되는 작업 -함수생성궈한 제한을 풀어주기
set global log_bin_trust_function_creators = 1 ;

delimiter $$
create function userFun1(v1 int , v2 int)
returns int -- 출력해줄 자료형 선언
begin
return v1+v2 ;
end $$;
delimiter ;
select userFun1(100,200);

delimiter $$
create function ageFun( birthYear int )
returns int
begin
   declare age int;
   set age = year(curdate() ) - birthYear;
   return age ;
end $$
delimiter ;

select ageFun(2000)into @age2000;
select ageFun(2020)into @age2020;

--  요구사항 mDate 를 이용해서 근무년수를 구하느 함수를 만들기
-- 1단계 함수를 만든다
delimiter $$
create function yearsFun( y1 date)
returns int
begin
    declare yy int;
    set yy= year(curdate() ) - year(y1);
    return yy ;
    end $$
delimiter ;

drop table cusertbl;
create table cusertbl
as 
select * from usertbl;

desc cusertbl;
-- 2단계 함수를 호출해서 근무 년수를 구한다
select mDate into @mDate from cUsertbl where userId='EJW';
select@mDate;
select yearsFun( @mDate) into @years ;
select@years ;
-- 3단게 years컬럼 엡뎃하기
update cUsertbl set years= @years where userId='EJW';  
select*from cUsertbl;

-- kbs 업데이트 하기
-- 3) cursor 반복처리
-- 포인터 가르치다 자동으로 ㅎ나행으 읽으면 아래(다음)로 내려간다
-- 파일시작 BoF: begin of File, EOf emd of file
-- 처리순서 1단계 파일을 연다 단게 파일을 읽는다 행단위로 읽는다 3단계 파일 끝 4단계 단는다


/*-- 커서 형식
delimiter $$
create procedure cursorProc()
begin
-- 변수 선언 6줄 ~10줄까지
declare userHeight int;-- 고객의 키
declare cnt int default 0; -- 고객의 인원수
declare totaHeight int default 0; -- 키의합계
declare endOfRow boolean default false;
-- 커서 선언 12줄
declare userCursir Cursor for
select height from usertbl; -- 문제가 평균키를 구하기
-- 반복 조건 15줄
declare continue handler
for not found set endOfRow = true ;
-- 커서 열기
open userCursor;
-- 반복문
cursor_loop:Loop
fetch userCursor into userHeight;
if endOfRow then
      leave cursor_loop ;
end if;
set cut=cut+1;
set totalHeight =totalHeight+userHeight ;
end loop cursor_loop;

end loop cursor_loop;
-- 결과출력
select concat('고객 키의 평균===>',(totalHeight/cnt));
-- 커서 닫기
close userCursor;
end $$
delimiter ;

-- 호출하기
call cursorProc();*/
-- 고객의 평균키를 구하는 프로시저 커서 이용하기

-- 고객 테이블 고객 등급 열을 하나 추가하기 등급넣기
use sqldb;
select*from usertbl;

create table rankUt
as
select*from usertbl;
alter table rankUt
add column r1 varchar(20);


delimiter $$
 create procedure  gP()
 begin
   -- 변수 선언 6줄~10줄까지
   declare id varchar(10) ; -- 사용자 id 'BBK'
   declare hap bigInt ; -- 총구매합 1920
   declare userGrade varchar(20) ; -- 등급 '최우수고객' 
   declare endOfRow boolean default False ; 
   -- 커서 선언  
   declare userCursor cursor for 
      select  u.userid, sum( b.price * b.amount ) 
      from  buytbl b
         right outer join  usertbl u
         on b.userid = u.userid
      group by u.userid, u.name ;   
         
   -- 반복 조건  
   declare continue handler
       for not found set endOfRow = TRUE;
       
   -- 커서 열기
   open userCursor ;
   -- 반복문
   grade_loop : Loop 
      fetch  userCursor into id, hap ; 
      if endOfRow  then
          leave grade_loop;
      end if; 
      
      case 
        when ( hap >= 1500 ) then set userGrade = '최우수고객' ; 
        when ( hap >= 1000 ) then set userGrade = '우수고객' ; 
        when ( hap >= 1 ) then set userGrade = '일반고객' ; 
        else set userGrade = '잠재고객' ; 
      end case ;
    
      update usertbl set r1 = userGrade where userId = id; 
      
   end Loop  grade_loop ;
   
   -- 커서 닫기
   close userCursor ;
 end $$
delimiter ;

call gP();


select*from usetbl;
alter table usertbl
add column r1 varchar(20);

-- 4 트리거
-- 예 사원테이블 삽입된 후에 기본적인 인적사항이 자동삽ㅇ비되면 좋겠다 급여가 지급된 후에 세금 테이블에 자동저장
-- 사용은 insert update delete
-- 직접실행은 안됌 이벤트가 발생했을때 자동 실행

create database if not exists testDB;
use testDB;

create table if not exists testTbl(id int, txt varchar(10) );
insert  into testTbl values (1,'레드벨벳');
insert  into testTbl values (2,'잇지');
insert  into testTbl values (3,'블랙핑크');

select*from testTbl;
drop trigger if exists testTrg;

delimiter //
create trigger testTrg
after delete
on testTbl
for each row
begin
set @msg='가수 그룹이 삭제됩니다' ;
end//
delimiter ;
set @msg ='';
insert into testtbl values(4,'마마무');
select @msg;

update testTbl set txt = '마마머무' where id = 4 ;
select @msg;
-- ----------
-- 요구사항 회원테이블에서 update delete시도하면
-- 수정된 또는 삭제된 테이블을 별도의 테이블에 보관하고 변경일자 변경한 사람을 기록하자

use sqldb;
create table backup_userTbl
(
userID     CHAR(8) NOT NULL PRIMARY KEY, -- 사용자 아이디(PK)
  name       VARCHAR(10) NOT NULL, -- 이름
  birthYear   INT NOT NULL,  -- 출생년도
  addr        CHAR(2) NOT NULL, -- 지역(경기,서울,경남 식으로 2글자만입력)
  mobile1   CHAR(3), -- 휴대폰의 국번(011, 016, 017, 018, 019, 010 등)
  mobile2   CHAR(8), -- 휴대폰의 나머지 전화번호(하이픈제외)
  height       SMALLINT,  -- 키
  mDate       DATE,  -- 회원 가입일
  modType char(2),-- 변경된 타입 수정 또는 삭제
  modDate date, -- 변경된 날짜
  modUser varchar(256)
);

drop trigger but;
-- 트리거 작성
delimiter //
create trigger but
after update
on usertbl
for each row
begin
insert into backup_userTbl
values(OLD.userID,OLD.name,OLD.birthYear,old.addr,
                 old.mobile1,old.mobile2,old.height,old.mDate,
                 '수정',curdate(),current_user() 
				 );
end//
delimiter ;

select*from usertbl;
update usertbl set birthYear = 1977 where userID='BBK';
update usertbl set addr = '서울'where userId='EJW';
select*from backup_userTbl ;