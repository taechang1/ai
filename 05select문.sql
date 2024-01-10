use sqldb;
select*from usertbl;
select*from usertbl where userid in('BBK','JKW');
-- 김씨 성을 가진 사람 검색
select*from usertbl where name like'김%';
-- 김경호씨의 키보다 큰 사람은
-- 김경호 키는? 177
select height from usertbl where name='김경호';
-- 2단계 조건 찾기
select*from usertbl where  height>=177;
-- 1단계 2단계 동시에 작성하기
select*from usertbl where 
 height>=(select height from usertbl where name='김경호');
-- 은지원 나이가 어린 사람은?
select birthyear from usertbl where name='은지원';
select*from usertbl 
where birthyear>(select birthyear from usertbl where name='은지원');

select*from buytbl;
-- prodName 노트북의 groupName 종류와 동일한 userid와 prodName,groupName 검색하기
-- 결과는 kbs 노트북 전자/ jyp 모니터 전자/bbk 모니터 전자/bbk 메모리 전자
-- 1단계 전자 검색
select groupName from buytbl where prodName='노트북';
-- 2단게
select userid, proudName, groupName from buytbl
where groupName = ( select groupName from buytbl where prodName='노트북');

-- 김범수 산 물건 무엇인가
-- 김범수의 user id를 구한다
select proudName, userid from buytbl
  where userId=(select userId from usertbl where name='김범수');
  
select*from usertbl;
-- 주소가 서울사람 검색하기
select*from usertbl where addr="서울";
-- 서울에 사는 사람 키보다작은 키를 가진사람 any또는 
select*from usertbl
where height<=any(select height from usertbl where addr='서울');

select*from usertbl-- all and
where height<=all(select height from usertbl where addr='서울');

select*from usertbl
where height<=some(select height from usertbl where addr='서울');
select*from buytbl;

-- 운동화를 산 사람의 이름은?
select userId from buytbl where prodName='운동화';
select name from usertbl
where userid=any(select userid from buytbl where prodName='운동화');
-- 키가 제일큰 사람 3명
select*from usertbl order by height desc limit 3; 
-- 나이가 제일 많은 사람 5명 검색
select*from usertbl order by birthYear asc limit 5;
-- 테이블 만들기 usertbl  동일한 테이블 만들고 싶다
create table usertabl2(select*from usertbl);
select*from usertabl2;
-- 테이블 만들기 서울에 있느 사람
create table usertblSeoul(select*from usertbl where addr='서울');
select*from usertblSeoul;
-- 키가 175~180 사이인 사람만 userid,name,height 열만 테이블 만들기
create table heightTbl
(select userid,name,height from usertbl where height between 175 and 180);

select*from heightTbl;
-- 단 제약 조건(pk,fk)은 만들어지지 않는다.
-- group by절
select userid, sum(amount),avg(amount),max(amount),count(amount),std(amount),var_samp(amount) from buytbl group by userid;
-- 총구매액이 1000원 이상인 사람의 사용자명과 전화번호 ,총구매액 구하기
select userid,sum(price) from buytbl group by userid having sum(price)>=300;
-- 경품 대상인 사람을 테이블 만들어기 userid mobile1 mobile2 addr
create table eventTbl
 (select userid,mobile1,mobile2,addr from usertbl
   where userid=any(select userid from buytbl group by userid having sum(price)>=300)
   );
  select*from eventTbl;
  select*from buytbl;
  -- groupName 그룹화하기
select groupName,sum(amount),sum(price) from buytbl group by groupName;
-- 테이블 가장높은 groupName prodName amount price만들기
-- 1단계 전자
select groupName
 from buytbl group by groupName
 having max(price)>=(select max(price)from buytbl);
 -- 2단계
 create table maxGroupTbl
 (select groupName,prodName,amount,price from buytbl
  where groupName =(select groupName
                        from buytbl group by groupName
                             having max(price)>=(select max(price)from buytbl)
							)
		);
create table if not exists maxGroupTbl 

   ( select groupName, prodName, amount, price from buytbl 
    where groupName = ( select  groupName 
                     from buytbl group by groupName
                             having max(price) >= ( select max(price) from buytbl)
                       )
    );
