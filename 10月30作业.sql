create table Department
(
DepartNo char(10) not null primary key,
DepartName varchar(50) not null,
)
create table Course 
(
CouNo char(3) not null primary key,
CouName char(30) not null,
Kind char(8) not null,
Credit numeric(2,1)  not null,
Teacher char(20) not null,
DepartNo char(2) not null,
SchoolTime char(20) not null,
LimitNUm int not null,
WillNum int null,
ChooseNum int null
)
create table Class
(
ClassNo char(10) not null primary key,
ClassName varchar(50) not null,
DepartNo char(10)not null,
)
create table Student
(
StuNo char(8) not null primary key,
StuName char(10) not null,
Pwd char(8) not null,
ClassNo char(8) not null
)
create table StuCou(
StuNo char(8) not null,
CouNo char(3) not null,
WillOrder int not null,
State char(2) not null,
RandomNum char(50) null,
constraint StuNo primary key(CouNo)
)


insert into Class
values('20170001','01','17��������'),
('20170002','01','17��ý��'),
('20170003','01','17���ݿ�'),
('20170004','02','17��������'),
('20170005','02','17��������'),
('20170006','03','17���ι���'),
('20180001','01','18��������'),
('20180002','01','18��ý��'),
('20180003','01','18���ݿ�'),
('20180004','02','18��������'),
('20180005','02','18��������'),
('20180006','03','18���ι���'),
('20190001','01','19��������'),
('20190002','01','19��ý��'),
('20190003','01','19���ݿ�'),
('20190004','02','19��������'),
('20190005','02','19��������'),
('20190006','03','19���ι���')
select * from Class

insert into Course
values('001','SQL Serverʵ�ü���','��Ϣ����','3.0','���˷�','01','�ܶ�5-6','20','43','0'),
('002','JAVA�����Ŀ���Ӧ��...','��Ϣ����','2.0','��ΰ��','01','�ܶ�5-6','40','34','0'),
('003','������Ϣ����ԭ���뼼��','��Ϣ����','2.0','����','01','�ܶ���','10','30','0'),
('004','Linux����ϵͳ','��Ϣ����','2.0','֣��','01','�ܶ�5-6��','10','33','0'),
('005','Premiere6.0Ӱ������','��Ϣ����','2.0','������','01','�ܶ�5-6��','20','27','0'),
('006','Director������Ӱ���������','��Ϣ����','2.0','������','01','�ܶ�5-6��','10','27','0'),
('007','Delphi��������Ա','��Ϣ����','2.0','����','01','�ܶ�5-6��','10','27','0'),
('008','ASP.NETӦ��','��Ϣ����','2.5','������','01','�ܶ�5-6��','10','45','0'),
('009','ˮ��Դ���ù����뱣��','���̼���','2.0','Ҷ����','02','�ܶ���','10','31','0'),
('010','�м��繤','���̼���','3.0','������','02','�ܶ�5-6��','5','24','0'),
('011','���⽨������','����','2.0','��Ȫ','02','�ܶ�5-6��','20','27','0'),
('012','���ܽ���','���̼���','2.0','����','02','�ܶ�5-6��','20','35','0'),
('013','���ز���̸','����','2.0','��ǿ','02','�ܶ�5-6��','36','14','0'),
('014','�Ƽ���̽��','����','1.5','������','02','�ܶ�5-6��','24','15','0'),
('015','���׷�������','����','2.0','�����','03','�ܶ�5-6��','20','33','0'),
('016','�����羭Ӫ����','����','2.0','���Ĳ�','03','�ܶ�5-6��','36','17','0'),
('017','��������','����','2.0','ʢ����','03','�ܶ�5-6��','27','18','0'),
('018','�вͲ�������','����','2.0','¬Ƽ','03','�ܶ�5-6��','5','66','0'),
('019','���ӳ������','���̼���','2.0','����','03','�ܶ�5-6��','10','0','0')
select * from Course
insert into Department
values('1','�����Ӧ�ó�ϵ'),
('2','��������ϵ'),
('3','����ϵ')
select * from Department

select a.b_id,a.b_name,b.s_id,b.s_in,a.b_isbn
from bookinfo as a inner join bookstrore as b
on a.b_id=b.b_id

select *
from bookstrore as a left outer join borrowreturn as b
on a.s_id=b.s_id

select *
from bookstrore as a right outer join borrowreturn as b
on a.s_id=b.s_id