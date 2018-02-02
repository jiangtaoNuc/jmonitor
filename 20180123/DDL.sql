show databases;
use jmonitor;

#monitor_ip
CREATE TABLE IF NOT EXISTS `monitor_ip` (
  `id` INT(100) NOT NULL AUTO_INCREMENT,
  `ip` VARCHAR(45) NOT NULL,
  `add_time` DATE NOT NULL,
  `modify_time` DATE NOT NULL,
  `tags` VARCHAR(10) NOT NULL,
  `description` VARCHAR(200) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8; 
#add DATA
insert  into `monitor_ip`(`id`,`ip`,`add_time`,`modify_time`,`tags`,`description`)
	values (1,'10.62.242.123','2018-01-23','2018-01-23','1','采集平台');
insert  into `monitor_ip`(`id`,`ip`,`add_time`,`modify_time`,`tags`,`description`)
	values (2,'10.62.242.124','2018-01-23','2018-01-23','1','采集平台');
insert  into `monitor_ip`(`id`,`ip`,`add_time`,`modify_time`,`tags`,`description`)
	values (3,'10.62.242.125','2018-01-23','2018-01-23','1','采集平台');
insert  into `monitor_ip`(`id`,`ip`,`add_time`,`modify_time`,`tags`,`description`)
	values (4,'10.62.242.126','2018-01-23','2018-01-23','1','采集平台');
insert  into `monitor_ip`(`id`,`ip`,`add_time`,`modify_time`,`tags`,`description`)
	values (5,'10.62.242.137','2018-01-23','2018-01-23','1','采集平台'); 
insert  into `monitor_ip`(`id`,`ip`,`add_time`,`modify_time`,`tags`,`description`)
	values (5,'10.62.242.137','2018-01-23','2018-01-23','2','采集平台'); 

select *from `monitor_ip`;

CREATE TABLE IF NOT EXISTS `tags` (
  `id` INT(100) NOT NULL AUTO_INCREMENT,
  `tags_id` INT(10) NOT NULL,
  `tags_name` VARCHAR(100) NOT NULL,
  `add_time` DATE NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8; 
insert into `tags`(`id`,`tags_id`,`tags_name`,`add_time`)
	values(1,1,'采集平台','2018-01-23');
insert into `tags`(`id`,`tags_id`,`tags_name`,`add_time`)
	values(2,2,'接口机','2018-01-23');
insert into `tags`(`id`,`tags_id`,`tags_name`,`add_time`)
	values(3,3,'应用服务器','2018-01-23');
select *from tags;

#monitor_dim
CREATE TABLE IF NOT EXISTS `monitor_dim` (
  `id` INT(100) NOT NULL AUTO_INCREMENT,
  `monitor_name` INT(10) NOT NULL,
  `monitor_frequency` int(10) default 5,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8; 
insert into `monitor_dim` (`id`,`monitor_name`,`monitor_frequency`)
	values(1,'内存',5);
insert into `monitor_dim` (`id`,`monitor_name`,`monitor_frequency`)
	values(2,'io',5);
insert into `monitor_dim` (`id`,`monitor_name`,`monitor_frequency`)
	values(3,'load',5);
insert into `monitor_dim` (`id`,`monitor_name`,`monitor_frequency`)
	values(4,'磁盘',5);
insert into `monitor_dim` (`id`,`monitor_name`,`monitor_frequency`)
	values(5,'进程',5);

#load memory ps阈值
CREATE TABLE IF NOT EXISTS `threshold` (
  `id` INT(100) NOT NULL AUTO_INCREMENT,
  `ip` varchar(45) NOT NULL,
  `load_01` int(3) not null,
  `load_05` int(3) not null,
  `load_15` int(3) not null,
  `memory` int(3) not null,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;