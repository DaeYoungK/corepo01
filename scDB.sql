create table member(
    userid varchar2(15) primary key,    -- ȸ�� ���̵�
    pwd varchar2(20),                   -- ȸ�� ��й�ȣ
    name varchar2(10),                  -- ȸ�� �̸�
    sex number(1) default 0,            -- ����
    tel varchar2(13),                   -- ����ȭ(�ʼ����� �ƴ�)
    phone varchar2(13),                 -- �޴���ȭ��ȣ(�ʼ�)
    email varchar2(20),                 -- �̸����ּ�
    address varchar2(100)               -- ���ּ�
);
select * from member;
insert into member values('admin','1234','���',1,'02-123-4567','010-1004-1004','scuba@scuba.com','���� ��Ǽ�����');
commit; 

create table board1(
    num number(5) primary key, --�Խ��� ������ȣ, �⺻Ű�� ����
    name varchar2(30),         --�ۼ��� �̸�(ȸ�� �������� ������)
    pass varchar2(30),         --�Խñ� ��й�ȣ(ȸ�� ��й�ȣ�� �����ؾ���)
    title varchar2(50),        --�Խñ� ����
    content varchar2(1000),    --�Խñ� ����
    readcount number(4) default 0, --��ȸ��
    writedate date default sysdate --�ۼ�����
);
select * from board1;

create sequence board1_seq start with 1 increment by 1;

insert into board1(num,name,pass,title,content)
values(board1_seq.nextval,'���','1234','�׽�Ʈ','�����׽�Ʈ');
commit;
rollback;
create table reply(
    renum number not null primary key, --����� ������ȣ, null���� �� �� ���� �⺻Ű�� ����    
    pass varchar2(4)
    





    