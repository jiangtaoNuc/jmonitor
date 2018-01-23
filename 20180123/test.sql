use test;
create table `user`(
`id` int(11) NOT NULL AUTO_INCREMENT,  
`user_name` varchar(40) NOT NULL,  
`password` varchar(255) NOT NULL,  
`age` int(4) NOT NULL,  
 PRIMARY KEY (`id`)  
)ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8; 

insert  into `user`(`id`,`user_name`,`password`,`age`) values (1,'测试','sfasgfaf',24);  
select *from user;