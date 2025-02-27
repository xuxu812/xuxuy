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
values('20170001','01','17电子商务'),
('20170002','01','17多媒体'),
('20170003','01','17数据库'),
('20170004','02','17建筑管理'),
('20170005','02','17建筑电气'),
('20170006','03','17旅游管理'),
('20180001','01','18电子商务'),
('20180002','01','18多媒体'),
('20180003','01','18数据库'),
('20180004','02','18建筑管理'),
('20180005','02','18建筑电气'),
('20180006','03','18旅游管理'),
('20190001','01','19电子商务'),
('20190002','01','19多媒体'),
('20190003','01','19数据库'),
('20190004','02','19建筑管理'),
('20190005','02','19建筑电气'),
('20190006','03','19旅游管理')
select * from Class

insert into Course
values('001','SQL Server实用技术','信息技术','3.0','徐人凤','01','周二5-6','20','43','0'),
('002','JAVA技术的开发应用...','信息技术','2.0','程伟斌','01','周二5-6','40','34','0'),
('003','网络信息检索原理与技术','信息技术','2.0','李涛','01','周二晚','10','30','0'),
('004','Linux操作系统','信息技术','2.0','郑星','01','周二5-6节','10','33','0'),
('005','Premiere6.0影视制作','信息技术','2.0','李韵婷','01','周二5-6节','20','27','0'),
('006','Director动画电影设计与制作','信息技术','2.0','陈子仪','01','周二5-6节','10','27','0'),
('007','Delphi初级程序员','信息技术','2.0','李兰','01','周二5-6节','10','27','0'),
('008','ASP.NET应用','信息技术','2.5','曾建华','01','周二5-6节','10','45','0'),
('009','水资源利用管理与保护','工程技术','2.0','叶艳茵','02','周二晚','10','31','0'),
('010','中级电工','工程技术','3.0','范敬丽','02','周二5-6节','5','24','0'),
('011','中外建筑欣赏','人文','2.0','林泉','02','周二5-6节','20','27','0'),
('012','智能建筑','工程技术','2.0','王娜','02','周二5-6节','20','35','0'),
('013','房地产漫谈','人文','2.0','黄强','02','周二5-6节','36','14','0'),
('014','科技与探索','人文','1.5','顾宛玲','02','周二5-6节','24','15','0'),
('015','民俗风情旅游','管理','2.0','杨国润','03','周二5-6节','20','33','0'),
('016','旅行社经营管理','管理','2.0','黄文昌','03','周二5-6节','36','17','0'),
('017','世界旅游','人文','2.0','盛德文','03','周二5-6节','27','18','0'),
('018','中餐菜邀制作','人文','2.0','卢萍','03','周二5-6节','5','66','0'),
('019','电子出版概论','工程技术','2.0','李力','03','周二5-6节','10','0','0')
select * from Course
insert into Department
values('1','计算机应用程系'),
('2','建筑工程系'),
('3','旅游系')
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