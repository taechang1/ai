create table card( 
  cardNumber number(10) not null primary key,
  accountNumber number(12) not null,
  cardKind varchar2(8),
  orderDate date,
  limtitAmount number(15),
  paymentDate date
);

insert into card values(
    1001,556677,'����',sysdate,5000,'2024/01/27'
);
insert into card values(
1002,556677,'����',sysdate,5000,'2024/01/27'
);
 insert into card values(
1003,556679,'master',sysdate,10000,'2024/01/20'
);
insert into card values(
1004,556680,'check',sysdate,null,null
);
insert into card values(
1005,556681,'check',sysdate,null,null
);
SELECT*from card;

create table userTbl(
      userName varchar2(10) not null primary key,
      birthyear date not null,
      addr varchar2(20)not null,
      mobile VARCHAR2(15)
      );
drop table userTbl;--���̺� �����ϱ�
drop table buyTbl;
create table buytbl(
  userName varchar2(10) not null primary key,
  proudName varchar2(20)not null,
  price number(10)not null,
  amount number(5)not null,
  constraint userName_fk foreign key(userName) references userTbl(userName)
);
insert into userTbl values('�̽±�','87/12/10','����','011-111-1111'); 
insert into userTbl values('���ȣ','71/12/10','����','011-111-1111'); 

insert into buyTbl values('�̽±�','�ȭ',1000,1);
insert into buyTbl values('���ȣ','��Ʈ��',10000,2);
insert into buyTbl values('ȫ�浿','��Ʈ��',10000,2);--�ȉ´�
--���� �θ� master,��
create table bank(
 bankName varchar2(20) not null primary key,
 jijum varchar2(20)not null);
 insert into bank values('����','����');
insert into bank values('����','����');
insert into bank values('�츮','����');
insert into bank values('�ϳ�','����');
--���ݰ��� ���̺� �ڽ�,sub,��
create table deAcc(
    bankName varchar2(20)not null primary key,
    accKind varchar2(20),
    constraint bankName_fk foreign key(bankName) references bank(bankName)
    --���� constraint �ܷ�Ű�� foreign key(�ܷ�Ű��� �÷���) referencs �θ����̺��(�ܷ�Ű��� �÷���)
);
drop table deAcc;
insert into deAcc values( '�츮', '�Ϲݰ���' );
insert into deAcc values( '����', '�������' ); 
insert into deAcc values( '����', '���ǰ���' );
insert into deAcc values('�ϳ�','���ǰ���' );
-- insert into deAcc values( 'ī��', '�Ϲݰ���' ); �����߻� ��? �θ� ���̺�ȿ� 'ī��'�� ��� �ȵȴ�

select * from bank;
select * from deAcc;

--�� ���̺� �θ� ��master
create table custom(
    cardNumber number(10) not null primary key,
    cName varchar2(20)
);
drop table custom;
--ī�����̺� �ڽ� ���� ��
create table cardTbl(
     cardNumber number(10) not null primary key,
     limitPrice number(10),
     CONSTRAINT cardN_fk foreign key(cardNumber) references custom(cardNumber)
);

insert into custom vaules(1234,'ȫ�浿');
insert into custom vaules(1235,'�̼���');
insert into custom vaules(1236,'�����');
