select*from emp;
select*from student;
select*from dept;
select dname from dept;

select empno,sal,job      from emp;

/* ������ �ּ�*/
-- �����ּ�
--stu_id, stu_name_,sex�÷��� �˻��ϱ� ,��ҹ��� ���о���
select stu_id,stu_name,sex    from student;

--��������� ���� �÷� �ڷḸ  �Ҽ��ִ�

select empno,ename,sal,sal*12, job from emp;--�̸��� ���ϱ��?
select empno,ename,sal,sal*12,sal*12*0.33, job from emp;
select empno as �����ȣ,ename as �����,sal as �޿�,sal*12as ����,sal*12*0.33as ������, job as ���� from emp;
select empno  �����ȣ,ename  �����,sal  �޿�,sal*12as ����,sal*12*0.33as ������, job as ���� from emp;
--as�� ��������

select*from salgrade;
--��� ���� hisal +1000 Losal+1500 ���ϱ� �ؼ� ���
select grade,losal,losal+1500,hisal,hisal+1000 from salgrade;
--��Ī �ٿ��ֱ�
--��� �����ݾ� �λ������ݾ� �λ�?�� �ݾ�
select grade as ���,losal �����ݾ�,losal+1500 �λ������ݾ�,hisal �ִ�ݾ�,hisal+1000 �λ��ִ�ݾ� from salgrade;
--null�̶� 0�ƴ� ����� �ƴϴ� ��Ȯ�� �˼����� �ǹ� ����� �����𸥴� ������ �Ҽ� ����

select*from emp;
--comm ���ʽ� +100�������ϱ�
select comm,comm+100 from emp;--null �÷��� +100�� �ȵǰ� null,�γ�Ÿ����.
select comm,nvl(comm,0)+100 "�� �ʽ�"  from emp;--nvl(comm,0) null �̸� 0���� �ƴ�comm ������
--���ڿ� ����||
select email ||'�� ������'||job||'�Դϴ�' ���� from emp;
select*from student;
--�������� ���̴� 24���Դϴ�
select stu_name ||'�� ���̴�'||age||'�Դϴ�' ���� from student;
--��ü �ڽ��� �����ΰ���? �ߺ� �����ϱ� DISTINCT
SELECT DISTINCT cou_id from student;
SELECT * from emp;
--�μ����� ������ ?(�ߺ� �����ϱ�)
select DISTINCT deptno from emp;
--�μ����� 20�� ����� ����
select * from emp where deptno=20;
--job�� ����� �͸� ����
select * from emp where job='���';
--job�� ����̰ų� ������ �͸� ����
select * from emp where job='���'or job='����';
--sal 400�̻��� ����� �����ȣ,�̸�,�޿� ����
select empno �����ȣ, ename �̸�, sal �޿� from emp where sal>=400;
--sal 400�̻��̰� job�� ������ ����� �����ȣ,�̸�,����,�޿� ����
select empno �����ȣ, ename �̸�,job ���� ,sal �޿� from emp where sal>=400 and job='����';
--Hiredate�Ի���
--�Ի��� 2005/01/01 ������ �Ի��� ���
select* from emp where hiredate <'05/01/01';
--�Ի��� 2005/01/01 ���Ŀ� �Ի��� ���
select* from emp where hiredate >'05/01/01';
--�Ի��� 2006/01/01~2007/12/31 ���̿� �Ի��� ���
select* from emp where '06/01/01'<=hiredate and hiredate <='07/12/31';
--�达 �������� �����
select* from emp where ename like'��%';-- like �����ϴ�
--�̾� �� �Ǵ� ���� �������� �����
select* from emp where ename like'��%'or ename like'��%';

--�̾� ���� �ƴѻ��
select* from emp where not ename like'��%';
select* from emp where  ename not like'��%';
--�̸� �߰� �۾��� ���� ���
select*from emp where ename like'%��%';-- %�� ������ ����
--in~�ȿ�
--job ����̰ų� �����̰ų� ������ ��� ����ϱ�
select*from emp where job='���'or job='����'or job='����';
select*from emp where job in('���','����','����');

select*from emp where sal between 300 and 600;
--�Ի��� 2006 1 1~20071231 ���� �Ի��� ���
select*from emp where '06/01/01'<=hiredate and hiredate<='07/12/31';
select*from emp where hiredate between '06/01/01' and'07/12/31';
--MGR(���� ���)�� 1010~ 1020 ����
select*from emp where mgr BETWEEN 1010 and 1020;
--commdl null �� ��� ����ϱ�
--select*from emp where comm=null; �ȵ�
select*from emp where comm is null;
--�̸� ������������ ����ϱ�
select*from emp order by ename asc;--asc ascending���� ���� ������ �� �ִ�
select*from emp order by ename ;
--�޿� ������������ ����ϱ�
select*from emp order by sal desc;--descending ��������
--�μ���ȣ ������������ ����ϱ�
select*from emp order by deptno ;
--job ������������ ����ϱ�
select*from emp order by job desc ;
--�μ� ��ȣ �������� ���� �����ϸ�  sal ���� ���� ������� ����ϱ�
select*from emp order by deptno,sal desc ;
--mgr �� �����̰ų� �����λ���� job������������ ����ϱ�
select*from emp where job in('����','����') order by job asc;
--select*from emp order by job asc where job in('����','����') ; ����
--deptno�� 10 �̰ų� 30�� ����� mgr �������� deptno ��������
select*from emp where deptno in(10,30) order by mgr,deptno;
--������ �ߺ��� �� �ѹ��� ���
select*from group_star
union
select*from single_star;

--������ �ߺ��Ȱ� ��� ���
select*from group_star
union all
select*from single_star;
--������
select*from group_star
intersect
select*from single_star;
--������ �׷�Ȱ���� �ϰ� �ִ� ��Ÿ
select*from group_star
minus
select*from single_star;
--������ �̱� Ȱ���� �ϰ� �ִ� ��Ÿ
select*from single_star
minus
select*from group_star;

--�޿��� 300 ������ ����� �����ȣ,����̸�,�޿��� ����ϱ�
SELECT*from emp;
select empno, ename, sal  from emp where sal<=300;
--�̸���'����ȣ'�� ����� �ſ���ȣ,�����,�޿��� ����ϱ�
select  empno, ename, sal from emp where ename= '����ȣ';
--�޿��� 250�̰ų� 300�̰ų�500�λ������ �����ȣ�� ������ �޿��� ����ϱ�
select  empno, ename, sal from emp where sal in (250,300,500);
--�޿��� 250�� 300��500�� �ƴ� ����� ����ϱ�
select  empno, ename, sal from emp where sal not in (250,300,500);
--�̸��� '��'���� �����ϴ� ����� �̸� �߿� '��'�� �����ϴ� ����� �����ȣ�� ����̸� ����ϱ�
select  empno, ename from emp where ename like '��%'or ename like '%��%';--%0�̰ų� ������ ���
-- �����(mgr)�� ���� ����� ����ϱ�
select*from emp where mgr is null;
--�μ���ȣ�� ���� ������� ����ϵ� ���� �μ� ���� ����� ����� ��� �Ի��� �� ���� ������ ������� ����ϱ�
select*from emp order by deptno asc,hiredate asc;
select*from emp order by deptno ,hiredate ;
