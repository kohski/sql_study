-- create table Chars (
--   chr char(3) not null,
--   primary key(chr)
-- )

begin transaction;
insert into Chars values ('1');
insert into Chars values ('2');
insert into Chars values ('3');
insert into Chars values ('10');
insert into Chars values ('222');
commit;