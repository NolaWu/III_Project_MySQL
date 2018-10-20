#create database 
CREATE DATABASE customer;

#create member 
create table `customer`.`member`(
	 `member_id` int not null AUTO_INCREMENT,
     `member_name` varchar(20) Not Null,
     `brithdate` datetime,
     `e_mail` varchar(50),
	 `photo` blob Not null,
     `gender` varchar(2),
     `line_account` varchar(30) not null,
	  primary key(member_id)
);

#create member 
create table `customer`.`order`(
	order_id int not null AUTO_INCREMENT,
    member_id int not null,
    order_date datetime,
    primary key(order_id),
    foreign key(member_id) references `customer`.`member`(member_id)
);
#create category
create table `customer`.`produce_category`(
	category_id decimal(4) primary key,
    category_name varchar(10)
);
#create produce
create table `customer`.`produce`(
	produce_id decimal(4),
    category_id decimal(4),
    produce_name varchar(50),
    price decimal(5),
    primary key(produce_id),
    foreign key(category_id) references `customer`.`produce_category`(category_id)
);
#create member 
create table `customer`.`order_detail`(
	order_detail_id int not null AUTO_INCREMENT,
    order_id int not null,
    produce_id decimal(4) not null,
    quantity decimal(10),
    discount double ,
    primary key(order_detail_id),
    foreign key(order_id) references `customer`.`order`(order_id),
    foreign key(produce_id) references  `customer`.`produce`(produce_id)
);