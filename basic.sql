show databases();
show tables();
describe table_name;


select version();
select current_date();


create database db_name;

	create table pet 
		(
		 name varchar(20),
		 owner varchar(20),
		 species varchar(20),
		 sex char(1),
		 birth date,
		 death date
		);

-- 从文本中批量导入数据,
load data local infile 'data.txt' into table pet;



