--���̺� �����
--���� create table ���̺� �� (�÷��� �ڷ��� ���� ����);
create table dept_mission(
 dno number(2),
 dname varchar2(14),--���������������� ���� �ڸ�����ŭ ����Ʈ�� ��´�
 loc varchar2(13));
 
 create table emp_mission(
    eno number(4),--������4�ڸ�
    ename varchar2(10),
    loc varchar2(2));

create table emp01(
     empno number(4),
     ename varchar2(14),
     sal number(7,3)); -- ���� 7�ڸ� �Ҽ���3�ڸ�
     
--���̺� ���������ϱ�
--������ �ٲٸ� ���̺� �ڷᰡ �����ȴ�
alter table emp01
    add(birth date);

--���̺��� ���� ����
--������ �ٲٸ� ���̺� �ڷᰡ ���� �ȴ�
alter table emp01
   add(birth date);
   
alter table  emp_misson
 add (deptno number(4),addr varchar2(20));
 
alter table emp01
 modify( ename varchar2(14));
 
 alter table emp_mission
  modify( ename varchar2(25));
alter table emp01
 drop column birth;--drop column�÷���
 alter table emp_misson
  drop column deptno;
  alter table ;
--���̺� ��������
desc emp01;
desc emp_mission;
desc emp_mi;
--���̺� �̸� �����ϱ�
rename emp_mission to emp_mi;
--���̺� �����ϱ�
--drop table ���̺��
drop table emp_mi;
select*from emp;
--emp�� �˻� ��� (select)�� ���� ���� ���̺�� �����
create table emp_copy
as
select*from emp;
desc emp;
desc emp_copy;
--emp_copy ���̺��� comm �÷� �����ϱ�
drop table emp_copy
 rename column hiredate to hire;
--emp_copy ���̺��� hiredate �÷��� �̸��� hire�� �ٲٱ�
select*from emp_copy;
--��� �����͸� �����ϱ�
delete from emp_copy;
truncate table emp_copy;
-- emp_copy ���̺� comm �÷� �����ϱ� 
alter table emp_copy
drop  column comm;
--���̺���  hiredate�÷��� �̸��� hire�� �ٲٱ�
alter table emp_copy
 rename column hiredate to hire;
 select*from emp_copy;
--��� �����͸� �����ϱ�
delet from emp_copy;
truncate table emp_copy;
--��ųʸ�:������ ���̽� �������� ������ �ִ� ���̺�
select*from user_tables;
select*from user_views;
select*from all_tables;
select*from all_tables where table_name='EMP';
select*from dba_tables;--������ ���̽� �����ڴ� ����Ŭ���� �̸��� �����Ǿ� ���� sys(��ġ������-�ϵ����,������ġ-����Ʈ����)
                       --system���� ��ġ-����Ʈ����
                       --�ʿ信 ���� ����ڸ� ����� ���� �ִ�

--dml�� insert,update,delete�� ���ڵ� ���� ���� �����ϱ�
select*from emp01;
creat table emp01(
  empno number(4),
  ename varchar2(14),
  sal number(7,3));--���� 7�ڸ� �ҽ��� 3�ڸ�
  --���ڵ� �����ϱ�
  --���� insert into���̺�� {(�÷���1 �÷���2)}valuse();
  --��ü�࿡ �� �ִ´�
  insert into emp01 values(1000,'ȫ�浿',123.5);--�÷����� �����ϸ� ���� ������� values���� �ִ´�
  
  insert into emp01(ename,empno,sal) values('�̼���',1001,256.7);
  --�࿡ Ư�� ���� �ִ´�
  --��ȣ �̸��� �ֱ�
insert into emp01(empno,ename) values(1002,'�����');
insert into emp01(sal) values(100);
select*from emp01;
--�̸��� �������� �ֱ�
insert into emp01(empno,ename,sal) values(1004,'',50);
desc emp01;
alter table emp01
 add hire date;
 --'�ڼ���' 1010 80, 23/01/09
 insert into emp01(ename,empno,sal,hire) values('�ڼ���',1001,256.7,'23/01/09');
 -- 1011,'�ְ��', 0, 24/01/08
 insert into emp01(ename,empno,sal,hire) values('�ְ��',1011,0,sysdate);
 --�����ϱ�
 --update ���̺�� set �÷��� =���ο� �� where ������
 --ȫ�浿 �޿��� 200 �ٲٱ�
 update emp01 set sal=200 where ename='ȫ�浿';
 --��ȣ�� 1004 �� �̸��� '������'�� �ٲٱ�
 update emp01 set ename='������'where empno=1004;
 --��ȣ�� 1010 ����� �޿��� �����޿����� 100 ���ϱ� �Ի����� 22�� 10�� 25�Ϸ� �ٲٱ�
 update emp01 set sal=sal+100, hire='22/10/25' where empno=1010;
 --������� �޿��� 200������ �λ�
update emp01 set sal=sal+200;--null ���� ����� �ȵ�
update emp01 set sal=nvl(sal+200,200);--nvl(null�ƴѰ��,null�� ���)
 select*from emp01;
 
 --
 --delet from ���̺�� where ������
 --�޿��� 500 ���� ����� ����
 delete from emp01 where sal>=500;
 --Ʈ�����
 delete from emp01;
rollback;
select*from emp01;
commit;
update emp01 set sal=nvl(sal+200,200);

--��� ����� �Ի��� ���� ��¥ �����ϱ�
update emp01 set hire=sysdate;

rollback;--������� �� ������Ʈ ��Ҵ�
commit;--Ʈ����ǿ� ������� dml(inset,update,delete)�� Ȯ����
--���� ����
select*from dept;
--insert into dept values(10,'test','test');10�� primary key�� ������ ���� �����Ͽ��� �ϹǷ� ������ ��
--insert into dept values(null,'test','test'); null�� primary key�� ������ ���� null�� �ƴϾ�� �ϹǷ� ������ ��

create table pTab(
    code number(4)primary key,
    name varchar2(14)
    );

select*from user_constraints wehre table_name='PTAB';-- p Tab�� ���������� ����
--name �÷� ���������� not null ��ġ��(�߰�����
alter table pTab(
 modify name varchar2(14) not null;
--������ �����ϱ�
insert into ptab(code,name)values(1010,'a');
--insert into ptab(code,name)values(1010,'b');1010������ ����
--insert into ptab(code,name)values(1011,null);--������ ����
--id Į�� �߰��ϱ� 
alter table ptab
add id varchar2(10);
desc ptab:
--id �÷��� ���������� unique �����
alter table ptab
 modify id varchar2(10) unique;
select*from user_constraints where table_name='PTAB';
insert into ptab(code,name,id) values(1012,'c','a100');