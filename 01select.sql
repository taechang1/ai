select*from emp;
select*from student;
select*from dept;
select dname from dept;

select empno,sal,job      from emp;

/* 여러줄 주석*/
-- 한줄주석
--stu_id, stu_name_,sex컬럼만 검색하기 ,대소문자 구분없음
select stu_id,stu_name,sex    from student;

--산술연산자 숫자 컬럼 자료만  할수있다

select empno,ename,sal,sal*12, job from emp;--이름은 곱하기안?
select empno,ename,sal,sal*12,sal*12*0.33, job from emp;
select empno as 사원번호,ename as 사원명,sal as 급여,sal*12as 연봉,sal*12*0.33as 연세금, job as 직급 from emp;
select empno  사원번호,ename  사원명,sal  급여,sal*12as 연봉,sal*12*0.33as 연세금, job as 직급 from emp;
--as는 생략가능

select*from salgrade;
--산술 연산 hisal +1000 Losal+1500 더하기 해서 출력
select grade,losal,losal+1500,hisal,hisal+1000 from salgrade;
--별칭 붙여주기
--등급 최저금액 인상최저금액 인상?대 금액
select grade as 등급,losal 최저금액,losal+1500 인상최저금액,hisal 최대금액,hisal+1000 인상최대금액 from salgrade;
--null이란 0아님 빈공간 아니다 미확정 알수없는 의미 어떤값이 아직모른다 연산을 할수 없다

select*from emp;
--comm 보너스 +100씩지급하기
select comm,comm+100 from emp;--null 컬럼은 +100이 안되고 null,로나타난다.
select comm,nvl(comm,0)+100 "보 너스"  from emp;--nvl(comm,0) null 이면 0으로 아님comm 값으로
--문자열 연결||
select email ||'의 직급은'||job||'입니다' 직급 from emp;
select*from student;
--문종헌의 나이는 24살입니다
select stu_name ||'의 나이는'||age||'입니다' 나이 from student;
--전체 코스는 무엇인가요? 중복 제거하기 DISTINCT
SELECT DISTINCT cou_id from student;
SELECT * from emp;
--부서명의 종류는 ?(중복 제거하기)
select DISTINCT deptno from emp;
--부서명이 20인 사원들 보기
select * from emp where deptno=20;
--job이 사원인 것만 보기
select * from emp where job='사원';
--job이 사원이거나 과장인 것만 보기
select * from emp where job='사원'or job='과장';
--sal 400이상인 사람의 사원번호,이름,급여 보기
select empno 사원번호, ename 이름, sal 급여 from emp where sal>=400;
--sal 400이상이고 job이 부장인 사람의 사원번호,이름,직급,급여 보기
select empno 사원번호, ename 이름,job 직급 ,sal 급여 from emp where sal>=400 and job='부장';
--Hiredate입사일
--입사일 2005/01/01 이전에 입사한 사람
select* from emp where hiredate <'05/01/01';
--입사일 2005/01/01 이후에 입사한 사람
select* from emp where hiredate >'05/01/01';
--입사일 2006/01/01~2007/12/31 사이에 입사한 사람
select* from emp where '06/01/01'<=hiredate and hiredate <='07/12/31';
--김씨 성을가진 사람만
select* from emp where ename like'이%';-- like 유사하다
--이씨 성 또는 오씨 성을가진 사람만
select* from emp where ename like'이%'or ename like'오%';

--이씨 성이 아닌사람
select* from emp where not ename like'이%';
select* from emp where  ename not like'이%';
--이름 중간 글씨가 동인 사람
select*from emp where ename like'%동%';-- %는 임의의 글자
--in~안에
--job 사원이거나 과장이거나 부장인 사람 출력하기
select*from emp where job='사원'or job='과장'or job='부장';
select*from emp where job in('사원','과장','부장');

select*from emp where sal between 300 and 600;
--입사일 2006 1 1~20071231 사이 입사한 사람
select*from emp where '06/01/01'<=hiredate and hiredate<='07/12/31';
select*from emp where hiredate between '06/01/01' and'07/12/31';
--MGR(멘토 사번)이 1010~ 1020 사이
select*from emp where mgr BETWEEN 1010 and 1020;
--commdl null 인 사람 출력하기
--select*from emp where comm=null; 안됨
select*from emp where comm is null;
--이름 오름차순으로 출력하기
select*from emp order by ename asc;--asc ascending오름 차순 생략할 수 있다
select*from emp order by ename ;
--급여 내림차순으로 출력하기
select*from emp order by sal desc;--descending 내림차순
--부서번호 오름차순으로 출력하기
select*from emp order by deptno ;
--job 내림차순으로 출력하기
select*from emp order by job desc ;
--부서 번호 오름차순 만약 동일하면  sal 내림 차순 순서대로 출력하기
select*from emp order by deptno,sal desc ;
--mgr 이 과장이거나 부장인사람의 job오름차순으로 출력하기
select*from emp where job in('과장','부장') order by job asc;
--select*from emp order by job asc where job in('과장','부장') ; 오류
--deptno가 10 이거나 30인 사람의 mgr 오름차순 deptno 오름차순
select*from emp where deptno in(10,30) order by mgr,deptno;
--합집합 중복된 것 한번만 출력
select*from group_star
union
select*from single_star;

--합집합 중복된것 모두 출력
select*from group_star
union all
select*from single_star;
--교집합
select*from group_star
intersect
select*from single_star;
--차집합 그룹활동만 하고 있는 스타
select*from group_star
minus
select*from single_star;
--차집합 싱글 활동만 하고 있는 스타
select*from single_star
minus
select*from group_star;

--급여가 300 이하인 사원의 사원번호,사원이름,급여를 출력하기
SELECT*from emp;
select empno, ename, sal  from emp where sal<=300;
--이름이'오지호'인 사원의 신원번호,사원명,급여을 출력하기
select  empno, ename, sal from emp where ename= '오지호';
--급여가 250이거나 300이거나500인사원들의 사원번호와 사원명과 급여를 출력하기
select  empno, ename, sal from emp where sal in (250,300,500);
--급여가 250도 300도500도 아닌 사원들 출력하기
select  empno, ename, sal from emp where sal not in (250,300,500);
--이름이 '김'으로 시작하는 사람과 이름 중에 '기'를 포함하는 사원의 사원번호와 사원이름 출력하기
select  empno, ename from emp where ename like '김%'or ename like '%기%';--%0이거나 여러개 대신
-- 상급자(mgr)가 없는 사원을 출력하기
select*from emp where mgr is null;
--부서번호가 빠른 사원부터 출력하되 같은 부서 내의 사원을 출력할 경우 입사한 지 가장 오래된 사원부터 출력하기
select*from emp order by deptno asc,hiredate asc;
select*from emp order by deptno ,hiredate ;
