insert into StuCou
values
('20170001','001','1','报名',Null),
('20170001','002','4','报名',Null),
('20170001','003','3','报名',Null),
('20170001','017','5','报名',Null),
('20170001','018','2','报名',Null),
('20170002','001','1','报名',Null),
('20170002','004','4','报名',Null),
('20170002','008','3','报名',Null),
('20170002','018','2','报名',Null),
('20170003','002','2','报名',Null),
('20170003','003','3','报名',Null),
('20170003','009','1','报名',Null),
('20170004','005','2','报名',Null),
('20170004','013','3','报名',Null),
('20170004','018','1','报名',Null),
('20170005','004','2','报名',Null),
('20170005','017','3','报名',Null),
('20170005','018','1','报名',Null),
('20170006','001','1','报名',Null),
('20170006','006','2','报名',Null),
('20170006','012','4','报名',Null),
('20170006','016','3','报名',Null),
('20170007','002','2','报名',Null),
('20170007','003','1','报名',Null),
('20170007','004','3','报名',Null),
('20170008','005','2','报名',Null),
('20170008','018','1','报名',Null),
('20170009','003','1','报名',Null),
('20170009','006','2','报名',Null),
('20170009','018','1','报名',Null),
('20170010','004','2','报名',Null)
select * from StuCou

create view bookinfo_view
as
select p_id,count(*)as 数目数量,avg(b_price)as 平均价格 from bookinfo
where bk_id='17'
group by p_id
having avg(b_price)>30 and avg(b_price)<50



create view bok_view
as
select b_name,b_isbn,s_id,s_in from bookinfo as a inner join bookstrore as b
on a.b_id= b.b_id


update bookinfo
set b_name='ccccc'
where b_name='C#程序设计'



create index Bookinfo
on bookinfo(b_isbn)