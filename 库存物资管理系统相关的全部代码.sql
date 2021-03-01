create table SP
(Spname char(50) not null,
spNo float,
st char(50),
product char(50)
);

create table Sh
(ShNo int,
Shname char(50)
);

create table Ck
(ChNo int,
SpNo char(10),
Cday int,
Quality int,
Cname char(50),
Sname char(50)
);

create table Rk
(RkNo int,
SpNo char(10),
Rday int,
Quality int,
Rname char(50),
Sname char(50)
);

insert 
into Rk
values ('100','bb','222','212','ee','ff')
-------------
delete 
from Ck
where CkNo='1909'
-------------
update Sp
set st='401克'
where SpNo='Sp8'
-----------------
select spname,Cday,Rday
from Sp
left outer join Ck
on Sp.spNo=Ck.SpNo
left outer join Rk
on Sp.spNo=Rk.spno
-----------------
create table Ck1
(ChNo int,
SpNo char(10),
Cyear int,
Cmouth int,
Cdate int,
Quality int,
Cname char(50),
Sname char(50)
);

create table Rk1
(RkNo int,
SpNo char(10),
Ryear int,
Rmouth int,
Rdate int,
Quality int,
Rname char(50),
Sname char(50)
);

select Cyear ,sum(Ck1.Quality) as Cquality
from Ck1
group by Cyear

select Ryear,sum(Rk1.quality)as Rquality
from Rk1
group by Ryear
--------------
select Cmouth ,sum(Ck1.Quality) as Cquality
from Ck1
group by Cmouth

select Rmouth,sum(Rk1.quality)as Rquality
from Rk1
group by Rmouth
--------------
select Cdate ,sum(Ck1.Quality) as Cquality
from Ck1
group by Cdate

select Rdate,sum(Rk1.quality)as Rquality
from Rk1
group by Rdate
--------------

create view Sp_view
As 
select CkNo,Spname,Cday,Quality
from Ck,Sp
where Ck.SpNo=Sp.SpNo
查询视图:
select *
from Sp_view

------------------
create view Ck_view
As
select CkNo,SpNo,Cday,quality,Cname,Sname
from Ck
查询视图:
select *
from Ck_view
---------------------
create view Rk_view
As
select RkNo,SpNo,Rday,quality,Rname,Sname
from Rk
查询视图:
select *
from Rk_view
---------------------
create view Sh_view
As
select ShNo,Shname
from Sh
查询信息:
select *
from Sh_view

