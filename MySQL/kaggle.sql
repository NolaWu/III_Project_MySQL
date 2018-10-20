#create database 
CREATE DATABASE kaggle;

# aisles
CREATE TABLE `kaggle`.`aisles` (
	`aisle_id`	decimal(4)		NOT NULL ,
	`aisle`		varchar(50)	,
     PRIMARY KEY (`aisle_id`)
);

# departmens
CREATE TABLE `kaggle`.`departments` (
	`department_id`	decimal(4)		PRIMARY KEY,
	`department`	varchar(50)	
);

# products
CREATE TABLE `kaggle`.`products` (
  `product_id` decimal(4) NOT NULL,
  `product_name` VARCHAR(100) ,
  `aisle_id` decimal(4) NULL,
  `department_id` decimal(4) NULL,
    PRIMARY KEY (`product_id`),
    FOREIGN KEY (`aisle_id`) REFERENCES `kaggle`.`aisles` (`aisle_id`),
    FOREIGN KEY (`department_id`) REFERENCES `kaggle`.`departments` (`department_id`)
);


# orders
CREATE TABLE `kaggle`.`orders` (
  `order_id` decimal(20) NOT NULL,
  `user_id`  decimal(1) ,
  `eval_set` VARCHAR(20) ,
  `order_number` decimal(4) ,
  `order_dow` decimal(4) ,
  `order_hour_of_day` decimal(4) ,
  `days_since_prior_order` decimal(4) ,
    PRIMARY KEY (`order_id`)
);

# order_products__prior
CREATE TABLE `kaggle`.`order_products__prior` (
  `order_id` decimal(4) NOT NULL,
  `product_id` VARCHAR(45) NULL,
  `add_to_cart_order` decimal(4) NULL,
  `reordered` decimal(4) NULL,
  PRIMARY KEY (`order_id`)
);

