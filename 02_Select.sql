SELECT 24*60 as 계산 from dual;
select*from dual;-- dual 오라클에 제공하는 테이블 용도 계산용
select sign(10)from dual;
select round(3.456,2)from dual;
select trunc(5354.4567,-2)from dual;-- 어떤 소수점자리에서 앞으로 2칸가서 뒷부분 자르기
select trunc(5354.4567,2)from dual;
select mod(25,4)from dual;--25%4나머지

select*from student;

select upper(stu_email) from student;
select lower(stu_email),initcap(stu_email),upper(stu_email) from student;

select length('oracle'),length('오라클')from dual;
select lengthb('oracle'),length('오라클')from dual;

--substr(대상,시작위치,추출할 갯수)
select substr('Welecome to Oracle',4,3)from dual;--첫위치는 1번부터
--문종헌의 이메일이 앞부분을 추출하기 결과 moon
select substr(stu_email,1,4)from student where stu_name='문종헌';
--stu_id가 101~110까지의 사람들의 이메일이 맨뒷부분 즉 com을 추출하기
select substr(stu_email,-3,3) from student where stu_id between 101 and 110;--3 은 뒤에서 부터 3번째
--instr(대상,찾는문자) 대상에서 찾는 문자의 위치를 숫자로 반환함
select instr('Welcome to Oracle','e')from dual;--제일앞에부터 e를 찾아 준다 2번째에 있다
--instr(대상,찾는문자,시작위치) 대상에서 찾는 문자의 위치를 숫자로 반환함
select instr('Welcome to Oracle','e',3)from dual;
--instr(대상,찾는문자,시작위치,몇번째발견) 대상에서 찾는 문자의 위치를 숫자로 반환함
select instr('Welcome to Oracle','e',3,2)from dual;--시작위치부터 e를 찾는데 2번째 발견한것 17번째 있다

select*from student;
--모든학생의 이메일의 @ 위치알기
select instr(stu_email,'@')from student;
--모든 학생의id를 구하기 결과 moon five again cook
select substr(stu_email,1,instr(stu_email,'@')-1)id from student;
--LPAD left padding
--RPAD right padding
select lpad('oracle',20,'#')from dual;
select rpad('oracle',20,'#')from dual;

select lpad('oracle',20,'#')from dual;
select rpad('oracle',20,'#')from dual;
select*from emp;
select lpad(job,10,'')from emp;
--3번째 형번환 함수
-- to_char() to_date() to_numver()
--현재 시간을 구해준다
select sysdate from dual;
select sysdate,to_char(sysdate,'YYYY-MM-DD Day am hh:mi:ss')from dual;
select*from emp;
select hiredate,to_char(hiredate,'yyyy-mm-dd dy')from emp;
select to_char(12345678,'000,000,000')from dual;
select to_char(12345678,'000,000')from dual;--#으로 채운다 에러
select to_char(12345678,'999,999,999')from dual;--공백 12345678
select to_char(12345678,'999,999')from dual;--#으로 채운다 에러
select to_char(12345678,'L999,999,999')from dual;--통화기호 12,345,678
--to_date()날짜형으로 바꾸기****
--오라클에서 기본날짜형은 mm/dd/yy
--to_date('문자' ,'형식')문자가 형식을 바뀌어서 날짜형이 된다
select*from emp;
--select*from emp where hiredate=20070402;에러발생
select*from emp where hiredate=to_date(20070402,'yyyymmdd');
select*from emp where hiredate=to_date('20070402','yyyymmdd');
--오늘 날짜 특정일 구하기
--select sysdate-'2023/04/14'from dual'에러발생
select trunc(sysdate- to_date(20230414,'yyyymmdd'),0)from dual;
select*from emp;
--안성기 입사일-김사랑 입사일 빼기
select to_date('20070321','yyyymmdd')-to_date('20070310','yyyymmdd') from dual;
--to_number
select to_number('20,000','99,999')-to_number('10,000','99,999');
select'20000'-'10000'from dual;
--날짜함수
--어제 오늘내일
select sysdate-1 어제,sysdate 오늘,sysdate +1 내일 from dual;
select to_char(sysdate-1,'yyyy-mm-dd dy') 어제,sysdate 오늘,sysdate +1 내일 from dual;
--months_between
select months_between(sysdate,'2023/12/04')from dual;
select add_months('2023/10/01',10)from dual;
select round(to_date('20/01/01','yy/mm/dd'),'year')from dual;

select hiredate,trunc(hiredate,'month')from emp;--입사일의 일을 모두 1일로 고치기
select*from emp;
--근무년수 근무달수
--오늘 날짜 입사일 년수달수
select ename,sysdate,hiredate from emp;
select ename 사원명,sysdate 현재일,hiredate 입사일,trunc(months_between(sysdate,hiredate),0)근무년수 from emp;

--select ename 사원명,sysdate 현재일,hiredate 입사일

select ename 사원명,sysdate 현재일,hiredate 입사일,trunc(months_between(sysdate,hiredate)/12,0)근무년수 from emp;
--출력형식 입사일 현재날짜 근속년 근속월 근속일
select hiredate 입사일, sysdate 현재날짜,trunc(months_between(sysdate,hiredate)/12,0)근무년수,
       trunc(months_between(sysdate,hiredate),0)근무월수,
       trunc(months_between(sysdate,hiredate),0)*30근무일수
from emp;

--오늘 날짜를 기준으로 최조로 도래하는 수요일의 날짜는?
select to_char(next_day(sysdate,'수'),'yyyy/mm/dd')from dual;
select last_day('24/01/01')from dual;
select*from emp;
select empno 사원번호,last_day(sysdate)급여일 from emp;
select*from emp;
select*from emp where hiredate is null;
--입사일이 null이면 오늘 날짜 넣어주기
select hiredate,nvl(hiredate,sysdate)from emp where hiredate is null;
select hiredate,nvl(hiredate,sysdate)from emp;
commit;
--이름이 null이면 무명 job이 null이면 사원 넣어주기
select nvl(eame,'무명'),nvl(job,'사원') from emp;
--nvl2(식1,식2,식3)만약에 식1이 null이 아니면 식2를반환 하고 null이면 식3을반한한다
--예)연봉계산하기 comm이 null이 아닌 경우 sal*12+comm,comm이 null인 경우 sal*12
select*from emp;
select ename,sal,nvl2(comm,sal*12+comm,sal*12)연봉 from emp;
--coalesce(식1,식2,....식n)
--식1이 null이 아니면 식1값 출력 식2가 null이 아니 식2출력하고 모두다 null이면 식n출력하기
--예) 사원테이블에서 커미션이 널이 아니면 커미션을 출력하고 커미션이 널이고 급여가 널이 아니면 급여를 출력한고
--만약 커미션과 급여가 모두 널이면 0을 출력한다

--급여가 널 자료 삽입하기
insert into emp values(1019,null,'대리',1003,sysdate,null,null,20);
insert into emp values(1020,null,'대리',1003,sysdate,null,100,20);
select comm,sal,coalesce(comm,sal,0)from emp;
--선택을 위한 decode 함수(switch~case문과 비슷함)
/*,decode(표현식,조건1,결과1,
               ,조건2,결과2,
               ,조건3,결과3,
               기본결과n
*/
--예) deptno가 10이면 경리부 20이면 인사부 30이면 영업부 40이면 전산부 출력하기
select*from emp;
select deptno, decode(deptno,10,'경리부',
                             20,'인사부',
                             '전산부')
from
emp;
select*from student;
--sex가 'M'남자'F'여자
select sex, decode(sex,'M','남자',
                       'F','여자')
from student;
--그룹 함수
select count(ename) from emp;--20,행 입력 1행출력 그룹함수
select ename from emp;--20,행 입력 20행출력 단일행 함수
--select ename, count(ename) from emp;출력행의 갯수가 달라서 같이 쓸수 없다
select sum(sal)from emp;
select sum(sal),coumt(ename),avg(sal),max(sal),min(sal)from emp;
--그룹함수에서 sum,count에서는 null연산에서 제외
--보너스를 받는 사원수는?
select count(comm) from emp;
--직위 종류의 수는?
select count(distinct job) from emp;
select*from emp;
SELECT*from emp order by deptno;
--각 부서별로 제일 높은 급여 출력하기
select deptno, max(sal) from emp group by deptno order by deptno;
--job 별로 급여가 제일낮은 급여 출력하기
select job,min(sal) from emp group by job;
select*from emp order by job;
--job 별로 급여평균 출력하기
--사원이거나 대리이거나 급여 합계를 구하세요
--1단계 사원 대리 과장 출력하기
select*from emp where job in('사원','대리','과장');
--2단계 그룹으로 지정하기
select job,round(avg(sal)) from emp where job in ('사원','대리','과장') group by job;
--최대 급여가 700을 초과하는 부서에 대해서 최대급여와 최소급여를 구하기
--결과 20 1000 300
--1단계 부서별 최대값
select deptno, max(sal) from emp group by deptno;
--2단계 최대 급여가 700이 넘는것은? 그룹 함수의 조건
select deptno, max(sal) from emp group by deptno having max(sal)>700;
--직급별로 급여의 평균이 600이상인 직급 급여평균 부서명을 출력하기
--1단계 직급별 그룹하기
select job,avg(sal) from emp group by job;
--2단계 급여의 평균이 500 이상인 출력하기
select job,avg(sal) from emp group by job having avg(sal)>=500;
--평균급여 오름차순으로 출력하기
select job,avg(sal) from emp group by job having avg(sal)>=500 order by avg(sal) asc;
select*from student;
--최대나이?
select max(age) from student;
--최소나이
select min(age) from student;
--평균나이
select avg(age) from student;
--남자 최대나이 여자 최대나이
select sex,max(age) from student group by sex;
--cou_id 별로 평균 나이 구하기
select cou_id ,avg(age) from student group by cou_id;
--cou_id 별로 평균 나이가 25세 이상인 코스와 평균 나이 구하기
select cou_id ,avg(age) from student group by cou_id having avg(age)>=25;
--남자인 경우에 cou_id 별로 평균 나이가 25세 이상인 코스와 평균 나이 구하기
-- where group by having order by
--1단계 남자만 출력
select*from student where sex='M';
--2단계 남자인 경우에 cou_id 별로
select avg(age),cou_id from student where sex='M'group by cou_id;
--3단계 남자인 경우에 cou_id 별로  평균 나이가 25세 이상인 코스와 평균나이
select avg(age),cou_id from student where sex='M'group by cou_id having avg (age)>=25;
--4단계 남자인 경우에 cou_id 별로  평균 나이가 25세 이상인 코스와 평균나이 오름차순으로 구하기
select avg(age),cou_id from student where sex='M'group by cou_id having avg (age)>=25 order by avg (age);
