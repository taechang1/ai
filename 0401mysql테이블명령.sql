-- dept 데이터 넣기
insert into dept(deptno,dename,loc)values(10,'경리부','서울');
insert into dept(deptno,dename,loc)values(20,'영업부','경기');
select*from dept;
-- 수정하기
-- 40 서울
update dept set loc='서울'where deptno=40;
-- 방금한것을 원래로 하기
rollback;

-- 30 총무부 해외부
-- 40 삭제하기
delete from dept where deptno=40;
