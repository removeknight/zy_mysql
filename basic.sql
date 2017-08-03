show databases();
show tables();
describe table_name;
--  batch-file contains sql command like use db1; select * from tb_1;
shell> mysql < batch-file > mysql.out

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

--  从文本中批量导入数据,
--  使用load data local file 'file_path/file_name' into table table_name;
-- 	的时候提示：
-- 	The used command is not allowed with this MySQL version
-- 	更改启动client方式  mysql -uroot -> mysql -uroot --local-infiel。
-- 	问题解决
load data local infile 'data.txt' into table pet;

-- 存储变量
select @min_price:=min(price), @max_price:=max(price) from shop;
select * from shop where price = @min_price or price  = @max_price;

or 或者 and 可以使用在语句中。
或者使用union
select * from shop where price = @min_price union select * from shop where price = @max_price;



