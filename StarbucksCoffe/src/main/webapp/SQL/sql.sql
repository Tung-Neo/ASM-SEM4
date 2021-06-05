GRANT ALL PRIVILEGES ON *.* TO javauser@localhost
    IDENTIFIED BY 'javadude' WITH GRANT OPTION;
create database asm;
use asm;


create table product(
                        id int not null auto_increment primary key,
                        category varchar(200) not null,
                        productName varchar(200) not null,
                        information varchar(1000) not null,
                        ice varchar(10) not null,
                        topping varchar(10) not null,
                        qty int not null
);