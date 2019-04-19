-- create table if not exists SampleMath(
--   m numeric (10,3),
--   n integer,
--   p integer
-- );

-- BEGIN TRANSACTION;

-- INSERT INTO SampleMath(m, n, p) VALUES (500,  0,    NULL);
-- INSERT INTO SampleMath(m, n, p) VALUES (-180, 0,    NULL);
-- INSERT INTO SampleMath(m, n, p) VALUES (NULL, NULL, NULL);
-- INSERT INTO SampleMath(m, n, p) VALUES (NULL, 7,    3);
-- INSERT INTO SampleMath(m, n, p) VALUES (NULL, 5,    2);
-- INSERT INTO SampleMath(m, n, p) VALUES (NULL, 4,    NULL);
-- INSERT INTO SampleMath(m, n, p) VALUES (8,    NULL, 3);
-- INSERT INTO SampleMath(m, n, p) VALUES (2.27, 1,    NULL);
-- INSERT INTO SampleMath(m, n, p) VALUES (5.555,2,    NULL);
-- INSERT INTO SampleMath(m, n, p) VALUES (NULL, 1,    NULL);
-- INSERT INTO SampleMath(m, n, p) VALUES (8.76, NULL, NULL);

-- COMMIT;

-- 絶対値の計算
-- select m, abs(m) from samplemath;

-- 剰余
-- select n, p, mod(n,p) as mod_col from samplemath;

-- select m,n,round(m,n) as round_col from samplemath;

-- create table if not exists SampleStr (
--   str1 varchar(40),
--   str2 varchar(40),
--   str3 varchar(40)
-- )

-- BEGIN TRANSACTION;
-- INSERT INTO SampleStr (str1, str2, str3) VALUES ('あいう',	'えお'	,	NULL);
-- INSERT INTO SampleStr (str1, str2, str3) VALUES ('abc'	,	'def'	,	NULL);
-- INSERT INTO SampleStr (str1, str2, str3) VALUES ('山田'	,	'太郎'  ,	'です');
-- INSERT INTO SampleStr (str1, str2, str3) VALUES ('aaa'	,	NULL    ,	NULL);
-- INSERT INTO SampleStr (str1, str2, str3) VALUES (NULL	,	'あああ',	NULL);
-- INSERT INTO SampleStr (str1, str2, str3) VALUES ('@!#$%',	NULL	,	NULL);
-- INSERT INTO SampleStr (str1, str2, str3) VALUES ('ABC'	,	NULL	,	NULL);
-- INSERT INTO SampleStr (str1, str2, str3) VALUES ('aBC'	,	NULL	,	NULL);
-- INSERT INTO SampleStr (str1, str2, str3) VALUES ('abc太郎',	'abc'	,	'ABC');
-- INSERT INTO SampleStr (str1, str2, str3) VALUES ('abcdefabc','abc'	,	'ABC');
-- INSERT INTO SampleStr (str1, str2, str3) VALUES ('ミックマック',	'ッ', 'つ');
-- COMMIT;

-- select str1, str2, str3, str1 || str2 || str3 as str_concat from SampleStr;
-- select str1, length(str1) from SampleStr;

-- select str1, lower(str1) as low_str 
-- from SampleStr 
-- where str1 in ('ABC','aBC','abc','山田');

-- str1に含まれるstr2をstr3に置き換え
-- select str1, str2, str3, replace(str1, str2, str3) as rep_str from SampleStr;

-- 3文字目から2文字分って意味
-- select str1, substring(str1 from 3 for 2) as sub_str from SampleStr;

-- select str1, upper(str1) as upper_str from SampleStr;

-- 日付系
-- select current_date;
-- select current_time;
-- select current_timestamp;
-- 日付データから欲しい値を数値で補足
-- select current_timestamp,
--   extract(year from current_timestamp) as year,
--   extract(month from current_timestamp) as month,
--   extract(day from current_timestamp) as day,
--   extract(hour from current_timestamp) as hour,
--   extract(minute from current_timestamp) as minute,
--   extract(second from current_timestamp) as second; 


--dataの型変換
-- select cast('0001' as integer) as int_col;
-- select cast('2019-12-14' as date) as date_col;

--coalesce関数
-- select coalesce(null,1) as col_1, coalesce(null,'test',null) as col_2, coalesce(null,null,'2009-1101') as col_3;





