-- 상품명 가격만 테이블로 만들기
-- 1단계 테이블 만들기
create table if not exists testtbl4
(prodName varchar(40) not null,
price int not null);
-- 2단계 삽입한다
select distinct prodName,price from buytbl;
insert into testtbl4 
 select distinct prodName,price from buytbl;
 
 select*from testtbl4 order by price desc;
 
 -- 청바지 가격을 100으로 수정하기
 update testtbl4 set price = 100 where prodName= '청바지';
 -- 가장 높은 가격인 것을 찾아서 10% 인하하기
 -- 1단계 가격이 가장 높은것 찾기
select prodName from testtbl4 order by price desc limit 0,1;
-- 2단계 10% 인하하기 **** with문으로 사용하기
-- update 시에 도일한 테이블을 서브퀘리로 사용해 update할수없다
  update testtbl4 set price= price-price*0.1
     where price=
    ( select price from testtbl4 order by price desc limit 1);
    
update testtbl4 set price= price-price*0.1
where price=
(select price from( select price from testtbl4 order by price desc limit 0,1)as t);



 with temptbl(price)
 as
(select price from testtbl4 order by price desc limit 1)
update testtbl4 set price= (select price from temptbl);
-- delate 문
select*from buytbl;
-- copyBuy 테이블 복사햇 만들기
create table if not exists copyBuy
select*from buytbl;
select*from copyBuy;

-- buytbl copyBuy가 제일작은것 찾아서 삭제하기
-- 1단계 amount가 제일 작은 것 찾기
select amount from copyBuy order by amount asc limit 1;
-- 2단계 삭제하기
delete from copyBuy
where 
amount=(select amount from
               (select amount from copyBuy order by amount asc limit 1)as t);

select*from copyBuy;

-- 1 with절 사용하기 229쪽 교재
-- 뷰 파생테이블 ,임시테이블, 가상테이블

use sqldb;
select*from usertbl;
select*from buytbl;

-- 요구사항 이름 총구매액(price*amount)
select userid,sum(price)*sum(amount)as'총구매액' from buytbl group by userId;
-- 이름을 출력하기alter
select name from usertbl;


select usertbl.name, buytbl.price from usertbl,buytbl;
 select userid, sum( price * amount) from buytbl, usertbl 
                                    where buytbl.userid = usertbl.userid  
group by userId;
select*from usertbl,buytbl;-- usertbl 행과 buytbl 행이 모두 곱해져 나온다
select*from usertbl,buytbl where usertbl.userid=buytbl.userid;
-- userid,name,amount,price 두개 테이블에 각각 다른 항목 검색하기
select usertbl.name,buytbl.amount,buytbl.price
from usertbl,buytbl 
where usertbl.userid = buytbl.userid;

-- select usertbl.name,buytbl.amount,buytbl.price
-- from usertbl,buytbl 
-- where usertbl.userid = buytbl.userid
-- group by buytbl.userid;
select u.name,b.amount*b.price
from usertbl u,buytbl b
where u.userid= b.userid;
-- 위에 퀴리를 가상테이블로 만들기
with t( id,name,total)
as
(
select u.userid,u.name,b.amount*b.price
from usertbl u,buytbl b
where u.userid= b.userid

) 
select name,total from t;

with  t( tid, total ) 
as
(
  select userid, sum( price  * amount) from buytbl group by userId
)
select tid, total from t ; 

select  usertbl.name, buytbl.price  from usertbl, buytbl ;

-- 회원테이블(usertbl)에서 각 지역별로 가장 큰 키를 1명씩 뽑은 후 그 사람들의 키의 평균을 내보자
-- 1단계 각 지역별로 가장 큰키를 1명씩 뽑은 후
select addr, max(height) from usertbl group by addr;
-- 2단계 가상 테이블 만들기
with t(avgHeight)
as
(
 select max(height) from usertbl group by addr
)
select avg(avgHeight) from t;

select*from buytbl;
-- 요구사항 각 groupName의 price가 최저을 구해서 그것의 평균을 구하기
-- 1단계 각 groupName의 price가 쵲을 구하기
select groupName,min(price) from buytbl group by groupName;
-- 2단계 1단계 가상 테이블 만들기
with t(minPrice)
as
(
select min(price) from buytbl group by groupName
)
select avg(minPrice) from t;

-- -----------7자 sql고급
-- 238 동영상 소리 그림 2진수 blob저장해야한다alter
-- 날짜형 
select cast('2020-10-19 12:35:29.123'as date);-- cast() 형 변환 함수 
select cast('2020-10-19 12:35:29.123'as time);
select cast('2020-10-19 12:35:29.123'as datetime);
set @var1=10;
set @var2='제품판매처:삼성';
select@var2,@var1;
select@var2, prodName from buytbl;

-- 데이터 형 변환 cast(),convert()
select*from buytbl;
select avg(amount) from buytbl;
-- 실수형을 정수형으로 변환하기
select cast(avg(amount)as signed integer) from buytbl;
select convert(avg(amount), signed integer) from buytbl;

-- 정수형을 실수형으로 변환
 set @var3=3;
 select cast(@var3 as Float);
 select convert(@var3,Float);
 -- 정수형을 문자로 변환
 select cast(@var3 as character);
 
select convert(@var3, char);

-- 246
select'100'+'200';
select concat('100','200');
select concat(100,'200');
select 1>'2mega';-- 거짓 이니깐 0
select 3>'2mega'; -- 참이니까 1
select 0='mega0';-- 문자는 0 으로 바뀌므로 0=0

-- if 함수
-- select if (조건, 참, 거짓)
set @v1=10;
set @v2=20;
set @v3=0;

-- 가장 큰수 구하기 답20
select if(@v1>@v2,if(@v1>@v3,@v1,@v3),if(@v2>@v3,@v2,@v3));
-- 가장 작은 수 구하기
select if (@v1<@v2, if (@v1<@v3,@v1,@v3),if(@v2<@v3,@v2,@v3));
-- 중간수 구하기
select if (@v1<@v2,if(@V1>@v3,@v1,@v3),if(@V2>@v3,@v2,@v3));
-- ifnull(수식1,수식2)
select ifnull(null,100);
select ifnull(200,null);
select ifnull(null,ifnull(null,300));

-- nullif(수식1,수식2)
select nullif(100,100);
select nullif(200,100);
-- case when else end
select case @v1
when 1 then '일'
when 2 then '이'
when 3 then '삼'
else '1,2,3이 아님'
end as 'case 연습';
-- 자바
-- switch @v1{
-- case 1:print('일');break;
-- case 2:print('이');break;
-- case 3:print('삼');break;alter
-- default:print ('1,2,3이 아님');
-- }
select*from buytbl;
-- user id kbs김범수jyp조용필 나머지는 '모름'

select case userId
            when 'KBS'then'김범수'
            when 'jyp'then'조용필 '
            else'모름'
		end as '이름',
        userId
from buytbl;

-- 문자열 ㅎ마수
-- concat()
-- concat_ws(구분자,문자열1,문자열2)
select concat_ws(',','100','200');
select elt (1,'하나','둘','셋');-- 
select field('김','이','박','최','김');-- 처음 위치의 김이라는 문자를 뒤에 문자열에서 찾기
select find_in_set('김','이,박,최,김,송');
select instr('이,박,최,김,송','김');
select locate('김','이,박,최,김,송');
select format(123456.123456,4);
select hex(10),oct(8),bin(15);
select insert('abcdefghi',3,4,'0000');
select trim('  abc  ');
select substring('대한민국만세',3,2);
select substring_index('cafe.naver.com.co.kr','.',-2);

set @v='cafe.naver.com.co.kr';
set @v2= substring_index(@v,'.',4);
select@v2;-- cafe.naver.com.co
-- 요구 사항 com
-- 1단계 com.co 만들기
set @v3=substring_index(@v2,'.',-2);
select @v4;set @v3=substring_index(@v3,'.',1);
select @v4;

set@v10='a,b,c,d,e';
-- b 를 출력하기
set @v11=substring_index(@v10,'.',2);
select @v11;
set @v12=substring_index(@v11,'.',1);
select @v12;
-- 숫자 함수
select ceiling(4.7),floor(4.7),round(4.7);
select pow(2,10);

-- 기억 공간 단위
-- bit <8bit =1byte< 1024 byte=1kb <1024kb= 1 megaByte<1024mb=1gb
-- 1024 gb=1tb(treabye)<1024tb=1hb(hera byte)
select rand(),floor(1+(rand()*(7-1)));
-- 1,235,456,577 천원이하 절삭
select truncate(1235456577,-3);

-- 날짜 시간 함수
select adddate(mdate,interval 31 day)
from usertbl;
select date(now()),time(now()),now();
select sysdate();

select*from usertbl;
-- -------------------- 261 대용량 파일 처리하기- 파일 올리고 (업로드) 내리기(다운로드)
-- 1단계 데이터 베이스를 만든다
create database moviedb;
-- 2단계 데이터 베이스를 사용한다 (활성화 열기)
use moviedb;
-- 3단계 테이블 만들기
create table movietbl
(
movie_id int,
movie_title varchar(30),
movie_director varchar(20),
movie_star varchar(20),
movie_script longtext,
movie_film longblob
);
-- 4단계 자료를 삽입한다
insert into movietbl
values
(1,'쉰들러리스트','스필버그','리암니슨',
load_file( 'D:/ai/study/temp/movies/Schindler.txt'),
load_file( 'D:/ai/study/temp/movies/Schindler.mp4')
);
-- 5단계 select문으로 검색을 한다
select*from movietbl;

-- long text long blob가 null이 나오는 이유
-- 1이유 용량이 모자라서

show variables like'max_allowed_packet';-- 패킷의 크기를 보기
-- 2이유 경로 틀려서
show variables like'secure_file_priv';-- mySQL이 지정한 업로드 경로보기

-- 환경을 설정하기
-- 내려받기 데이터 베이스 --> 개인 컴퓨터로 다운
-- 1단계 내릴 것을 확인하기
select movie_script from movietbl where movie_id =1;
-- 2단계 내리기
select movie_script from movietbl where movie_id =1
into outfile'D:/ai/study/temp/movies/ movie_script_copy.txt'
lines terminated by'\\n';

-- 동영상 파일 내리기
-- 1단계 내릴 것을 확인하기
select movie_film from movietbl where movie_id=1;
-- 2단계 내리기
select movie_film from movietbl where movie_id=1
into outfile'D:/ai/study/temp/movies/ movie_file_copy.mp4';

