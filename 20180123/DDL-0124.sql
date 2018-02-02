alter table `monitor_ip` drop column description;
alter table `monitor_ip` drop column id;
alter table `monitor_ip` add column status int(1) default 0;
ALTER TABLE monitor_ip
CHANGE COLUMN ip ip varchar(45) NOT NULL primary key;

CREATE TABLE IF NOT EXISTS `monitor_data` (
  `ip` varchar(45) NOT NULL,
  `cpu_user` double NOT NULL,
  `cpu_sys` double NOT NULL,
  `cpu_free` double NOT NULL,
  `memory_total` double NOT NULL,
  `memory_use` double NOT NULL,
  `memory_free` double NOT NULL,
  `memory_buffer` double NOT NULL,
  `swap_total` double NOT NULL,
  `swap_use` double NOT NULL,
  `swap_free` double NOT NULL,
  `swap_cache` double NOT NULL,
  `io_write` varchar(10) not null,
  `io_read` varchar(10) not null,
  `load_01` double not null,
  `load_05` double not null,
  `load_15` double not null,
  `add_time` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

insert  into `monitor_data`(`ip`,`cpu_user`,`cpu_sys`,`cpu_free`,`memory_total`,
`memory_use`,`memory_free`,`memory_buffer`,`swap_total`,`swap_use`,`swap_free`,`swap_cache`
,`io_write`,`io_read`,`load_01`,`load_05`,`load_15`,`add_time`)values 
('10.62.242.137',23.0,24.0,53.0,51424520,1246254,2565222,32445
,51424520,1246254,2565222,32445,'245M/s','54465KB/s',24.4,52.4,48.4,'2018-01-23 2:00:54');
insert  into `monitor_data`(`ip`,`cpu_user`,`cpu_sys`,`cpu_free`,`memory_total`,
`memory_use`,`memory_free`,`memory_buffer`,`swap_total`,`swap_use`,`swap_free`,`swap_cache`
,`io_write`,`io_read`,`load_01`,`load_05`,`load_15`,`add_time`)values 
('10.62.242.137',23.0,24.0,53.0,51424520,1246254,2565222,32445
,51424520,1246254,2565222,32445,'245M/s','54465KB/s',24.4,52.4,48.4,'2018-01-23 2:05:54');
insert  into `monitor_data`(`ip`,`cpu_user`,`cpu_sys`,`cpu_free`,`memory_total`,
`memory_use`,`memory_free`,`memory_buffer`,`swap_total`,`swap_use`,`swap_free`,`swap_cache`
,`io_write`,`io_read`,`load_01`,`load_05`,`load_15`,`add_time`)values 
('10.62.242.137',23.0,24.0,53.0,51424520,1246254,2565222,32445
,51424520,1246254,2565222,32445,'245M/s','54465KB/s',24.4,52.4,48.4,'2018-01-23 2:10:54');
insert  into `monitor_data`(`ip`,`cpu_user`,`cpu_sys`,`cpu_free`,`memory_total`,
`memory_use`,`memory_free`,`memory_buffer`,`swap_total`,`swap_use`,`swap_free`,`swap_cache`
,`io_write`,`io_read`,`load_01`,`load_05`,`load_15`,`add_time`)values 
('10.62.242.137',23.0,24.0,53.0,51424520,1246254,2565222,32445
,51424520,1246254,2565222,32445,'245M/s','54465KB/s',24.4,52.4,48.4,'2018-01-23 2:15:54');
insert  into `monitor_data`(`ip`,`cpu_user`,`cpu_sys`,`cpu_free`,`memory_total`,
`memory_use`,`memory_free`,`memory_buffer`,`swap_total`,`swap_use`,`swap_free`,`swap_cache`
,`io_write`,`io_read`,`load_01`,`load_05`,`load_15`,`add_time`)values 
('10.62.242.137',23.0,24.0,53.0,51424520,1246254,2565222,32445
,51424520,1246254,2565222,32445,'245M/s','54465KB/s',24.4,52.4,48.4,'2018-01-23 2:20:54');
insert  into `monitor_data`(`ip`,`cpu_user`,`cpu_sys`,`cpu_free`,`memory_total`,
`memory_use`,`memory_free`,`memory_buffer`,`swap_total`,`swap_use`,`swap_free`,`swap_cache`
,`io_write`,`io_read`,`load_01`,`load_05`,`load_15`,`add_time`)values 
('10.62.242.137',23.0,24.0,53.0,51424520,1246254,2565222,32445
,51424520,1246254,2565222,32445,'245M/s','54465KB/s',24.4,52.4,48.4,'2018-01-23 2:25:54');
insert  into `monitor_data`(`ip`,`cpu_user`,`cpu_sys`,`cpu_free`,`memory_total`,
`memory_use`,`memory_free`,`memory_buffer`,`swap_total`,`swap_use`,`swap_free`,`swap_cache`
,`io_write`,`io_read`,`load_01`,`load_05`,`load_15`,`add_time`)values 
('10.62.242.137',23.0,24.0,53.0,51424520,1246254,2565222,32445
,51424520,1246254,2565222,32445,'245M/s','54465KB/s',24.4,52.4,48.4,'2018-01-23 2:30:54');

insert  into `monitor_data`(`ip`,`cpu_user`,`cpu_sys`,`cpu_free`,`memory_total`,
`memory_use`,`memory_free`,`memory_buffer`,`swap_total`,`swap_use`,`swap_free`,`swap_cache`
,`io_write`,`io_read`,`load_01`,`load_05`,`load_15`,`add_time`)values 
('10.62.242.137',23.0,24.0,53.0,51424520,1246254,2565222,32445
,51424520,1246254,2565222,32445,'245M/s','54465KB/s',24.4,52.4,48.4,'2018-01-23 2:35:54');
insert  into `monitor_data`(`ip`,`cpu_user`,`cpu_sys`,`cpu_free`,`memory_total`,
`memory_use`,`memory_free`,`memory_buffer`,`swap_total`,`swap_use`,`swap_free`,`swap_cache`
,`io_write`,`io_read`,`load_01`,`load_05`,`load_15`,`add_time`)values 
('10.62.242.137',23.0,24.0,53.0,51424520,1246254,2565222,32445
,51424520,1246254,2565222,32445,'245M/s','54465KB/s',24.4,52.4,48.4,'2018-01-23 2:40:54');
insert  into `monitor_data`(`ip`,`cpu_user`,`cpu_sys`,`cpu_free`,`memory_total`,
`memory_use`,`memory_free`,`memory_buffer`,`swap_total`,`swap_use`,`swap_free`,`swap_cache`
,`io_write`,`io_read`,`load_01`,`load_05`,`load_15`,`add_time`)values 
('10.62.242.137',23.0,24.0,53.0,51424520,1246254,2565222,32445
,51424520,1246254,2565222,32445,'245M/s','54465KB/s',24.4,52.4,48.4,'2018-01-23 2:45:54');
insert  into `monitor_data`(`ip`,`cpu_user`,`cpu_sys`,`cpu_free`,`memory_total`,
`memory_use`,`memory_free`,`memory_buffer`,`swap_total`,`swap_use`,`swap_free`,`swap_cache`
,`io_write`,`io_read`,`load_01`,`load_05`,`load_15`,`add_time`)values 
('10.62.242.137',23.0,24.0,53.0,51424520,1246254,2565222,32445
,51424520,1246254,2565222,32445,'245M/s','54465KB/s',24.4,52.4,48.4,'2018-01-23 2:50:54');
insert  into `monitor_data`(`ip`,`cpu_user`,`cpu_sys`,`cpu_free`,`memory_total`,
`memory_use`,`memory_free`,`memory_buffer`,`swap_total`,`swap_use`,`swap_free`,`swap_cache`
,`io_write`,`io_read`,`load_01`,`load_05`,`load_15`,`add_time`)values 
('10.62.242.137',23.0,24.0,53.0,51424520,1246254,2565222,32445
,51424520,1246254,2565222,32445,'245M/s','54465KB/s',24.4,52.4,48.4,'2018-01-23 2:55:54');
insert  into `monitor_data`(`ip`,`cpu_user`,`cpu_sys`,`cpu_free`,`memory_total`,
`memory_use`,`memory_free`,`memory_buffer`,`swap_total`,`swap_use`,`swap_free`,`swap_cache`
,`io_write`,`io_read`,`load_01`,`load_05`,`load_15`,`add_time`)values 
('10.62.242.137',23.0,27.0,50.0,51424520,1246254,2565222,32445
,51424520,1246254,2565222,32445,'245M/s','54465KB/s',24.4,52.4,48.4,'2018-01-23 3:00:54');

insert  into `monitor_data`(`ip`,`cpu_user`,`cpu_sys`,`cpu_free`,`memory_total`,
`memory_use`,`memory_free`,`memory_buffer`,`swap_total`,`swap_use`,`swap_free`,`swap_cache`
,`io_write`,`io_read`,`load_01`,`load_05`,`load_15`,`add_time`)values 
('10.62.242.137',23.0,24.0,53.0,51424520,1246254,2565222,32445
,51424520,1246254,2565222,32445,'245M/s','54465KB/s',24.4,52.4,48.4,'2018-01-23 2:25:54');
insert  into `monitor_data`(`ip`,`cpu_user`,`cpu_sys`,`cpu_free`,`memory_total`,
`memory_use`,`memory_free`,`memory_buffer`,`swap_total`,`swap_use`,`swap_free`,`swap_cache`
,`io_write`,`io_read`,`load_01`,`load_05`,`load_15`,`add_time`)values 
('10.62.242.137',23.0,24.0,53.0,51424520,1246254,2565222,32445
,51424520,1246254,2565222,32445,'245M/s','54465KB/s',24.4,52.4,48.4,'2018-01-23 2:30:54');

insert  into `monitor_data`(`ip`,`cpu_user`,`cpu_sys`,`cpu_free`,`memory_total`,
`memory_use`,`memory_free`,`memory_buffer`,`swap_total`,`swap_use`,`swap_free`,`swap_cache`
,`io_write`,`io_read`,`load_01`,`load_05`,`load_15`,`add_time`)values 
('10.62.242.136',23.0,24.0,53.0,51424520,1246254,2565222,32445
,51424520,1246254,2565222,32445,'245M/s','54465KB/s',24.4,52.4,48.4,'2018-01-23 2:35:54');
insert  into `monitor_data`(`ip`,`cpu_user`,`cpu_sys`,`cpu_free`,`memory_total`,
`memory_use`,`memory_free`,`memory_buffer`,`swap_total`,`swap_use`,`swap_free`,`swap_cache`
,`io_write`,`io_read`,`load_01`,`load_05`,`load_15`,`add_time`)values 
('10.62.242.136',23.0,24.0,53.0,51424520,1246254,2565222,32445
,51424520,1246254,2565222,32445,'245M/s','54465KB/s',24.4,52.4,48.4,'2018-01-23 2:40:54');
insert  into `monitor_data`(`ip`,`cpu_user`,`cpu_sys`,`cpu_free`,`memory_total`,
`memory_use`,`memory_free`,`memory_buffer`,`swap_total`,`swap_use`,`swap_free`,`swap_cache`
,`io_write`,`io_read`,`load_01`,`load_05`,`load_15`,`add_time`)values 
('10.62.242.136',23.0,24.0,53.0,51424520,1246254,2565222,32445
,51424520,1246254,2565222,32445,'245M/s','54465KB/s',24.4,52.4,48.4,'2018-01-23 2:45:54');
insert  into `monitor_data`(`ip`,`cpu_user`,`cpu_sys`,`cpu_free`,`memory_total`,
`memory_use`,`memory_free`,`memory_buffer`,`swap_total`,`swap_use`,`swap_free`,`swap_cache`
,`io_write`,`io_read`,`load_01`,`load_05`,`load_15`,`add_time`)values 
('10.62.242.136',23.0,24.0,53.0,51424520,1246254,2565222,32445
,51424520,1246254,2565222,32445,'245M/s','54465KB/s',24.4,52.4,48.4,'2018-01-23 2:50:54');
insert  into `monitor_data`(`ip`,`cpu_user`,`cpu_sys`,`cpu_free`,`memory_total`,
`memory_use`,`memory_free`,`memory_buffer`,`swap_total`,`swap_use`,`swap_free`,`swap_cache`
,`io_write`,`io_read`,`load_01`,`load_05`,`load_15`,`add_time`)values 
('10.62.242.136',23.0,24.0,53.0,51424520,1246254,2565222,32445
,51424520,1246254,2565222,32445,'245M/s','54465KB/s',24.4,52.4,48.4,'2018-01-23 2:55:54');
insert  into `monitor_data`(`ip`,`cpu_user`,`cpu_sys`,`cpu_free`,`memory_total`,
`memory_use`,`memory_free`,`memory_buffer`,`swap_total`,`swap_use`,`swap_free`,`swap_cache`
,`io_write`,`io_read`,`load_01`,`load_05`,`load_15`,`add_time`)values 
('10.62.242.136',23.0,24.0,53.0,51424520,1246254,2565222,32445
,51424520,1246254,2565222,32445,'245M/s','54465KB/s',24.4,52.4,48.4,'2018-01-23 3:00:：54');
insert  into `monitor_data`(`ip`,`cpu_user`,`cpu_sys`,`cpu_free`,`memory_total`,
`memory_use`,`memory_free`,`memory_buffer`,`swap_total`,`swap_use`,`swap_free`,`swap_cache`
,`io_write`,`io_read`,`load_01`,`load_05`,`load_15`,`add_time`)values 
('10.62.242.136',23.0,24.0,53.0,51424520,1246254,2565222,32445
,51424520,1246254,2565222,32445,'245M/s','54465KB/s',24.4,52.4,48.4,'2018-01-23 2:30:54');
insert  into `monitor_data`(`ip`,`cpu_user`,`cpu_sys`,`cpu_free`,`memory_total`,
`memory_use`,`memory_free`,`memory_buffer`,`swap_total`,`swap_use`,`swap_free`,`swap_cache`
,`io_write`,`io_read`,`load_01`,`load_05`,`load_15`,`add_time`)values 
('10.62.242.136',23.0,24.0,53.0,256000,200000,2565222,32445
,256000,200000,2565222,32445,'245M/s','54465KB/s',24.4,52.4,48.4,'2018-01-23 2:40:54');
insert  into `monitor_data`(`ip`,`cpu_user`,`cpu_sys`,`cpu_free`,`memory_total`,
`memory_use`,`memory_free`,`memory_buffer`,`swap_total`,`swap_use`,`swap_free`,`swap_cache`
,`io_write`,`io_read`,`load_01`,`load_05`,`load_15`,`add_time`)values 
('10.62.242.136',70.0,20.0,10.0,256000,200000,2565222,32445
,256000,200000,2565222,32445,'245M/s','54465KB/s',24.4,52.4,48.4,'2018-01-23 2:45:54');
insert  into `monitor_data`(`ip`,`cpu_user`,`cpu_sys`,`cpu_free`,`memory_total`,
`memory_use`,`memory_free`,`memory_buffer`,`swap_total`,`swap_use`,`swap_free`,`swap_cache`
,`io_write`,`io_read`,`load_01`,`load_05`,`load_15`,`add_time`)values 
('10.62.242.137',20.0,70.0,10.0,256000,200000,2565222,32445
,256000,200000,2565222,32445,'245M/s','54465KB/s',24.4,52.4,48.4,'2018-01-23 2:45:54');


insert  into `monitor_data`(`ip`,`cpu_user`,`cpu_sys`,`cpu_free`,`memory_total`,
`memory_use`,`memory_free`,`memory_buffer`,`swap_total`,`swap_use`,`swap_free`,`swap_cache`
,`io_write`,`io_read`,`load_01`,`load_05`,`load_15`,`add_time`)values 
('10.62.242.125',23.0,24.0,53.0,51424520,1246254,2565222,32445
,51424520,1246254,2565222,32445,'245M/s','54465KB/s',24.4,52.4,48.4,'2018-01-23 2:00:54');
insert  into `monitor_data`(`ip`,`cpu_user`,`cpu_sys`,`cpu_free`,`memory_total`,
`memory_use`,`memory_free`,`memory_buffer`,`swap_total`,`swap_use`,`swap_free`,`swap_cache`
,`io_write`,`io_read`,`load_01`,`load_05`,`load_15`,`add_time`)values 
('10.62.242.125',23.0,24.0,53.0,51424520,1246254,2565222,32445
,51424520,1246254,2565222,32445,'245M/s','54465KB/s',24.4,52.4,48.4,'2018-01-23 2:05:54');
insert  into `monitor_data`(`ip`,`cpu_user`,`cpu_sys`,`cpu_free`,`memory_total`,
`memory_use`,`memory_free`,`memory_buffer`,`swap_total`,`swap_use`,`swap_free`,`swap_cache`
,`io_write`,`io_read`,`load_01`,`load_05`,`load_15`,`add_time`)values 
('10.62.242.125',23.0,24.0,53.0,51424520,1246254,2565222,32445
,51424520,1246254,2565222,32445,'245M/s','54465KB/s',24.4,52.4,48.4,'2018-01-23 2:10:54');
insert  into `monitor_data`(`ip`,`cpu_user`,`cpu_sys`,`cpu_free`,`memory_total`,
`memory_use`,`memory_free`,`memory_buffer`,`swap_total`,`swap_use`,`swap_free`,`swap_cache`
,`io_write`,`io_read`,`load_01`,`load_05`,`load_15`,`add_time`)values 
('10.62.242.124',23.0,24.0,53.0,51424520,1246254,2565222,32445
,51424520,1246254,2565222,32445,'245M/s','54465KB/s',24.4,52.4,48.4,'2018-01-23 2:15:54');
insert  into `monitor_data`(`ip`,`cpu_user`,`cpu_sys`,`cpu_free`,`memory_total`,
`memory_use`,`memory_free`,`memory_buffer`,`swap_total`,`swap_use`,`swap_free`,`swap_cache`
,`io_write`,`io_read`,`load_01`,`load_05`,`load_15`,`add_time`)values 
('10.62.242.124',23.0,24.0,53.0,51424520,1246254,2565222,32445
,51424520,1246254,2565222,32445,'245M/s','54465KB/s',24.4,52.4,48.4,'2018-01-23 2:20:54');
insert  into `monitor_data`(`ip`,`cpu_user`,`cpu_sys`,`cpu_free`,`memory_total`,
`memory_use`,`memory_free`,`memory_buffer`,`swap_total`,`swap_use`,`swap_free`,`swap_cache`
,`io_write`,`io_read`,`load_01`,`load_05`,`load_15`,`add_time`)values 
('10.62.242.124',23.0,24.0,53.0,51424520,1246254,2565222,32445
,51424520,1246254,2565222,32445,'245M/s','54465KB/s',24.4,52.4,48.4,'2018-01-23 2:25:54');
insert  into `monitor_data`(`ip`,`cpu_user`,`cpu_sys`,`cpu_free`,`memory_total`,
`memory_use`,`memory_free`,`memory_buffer`,`swap_total`,`swap_use`,`swap_free`,`swap_cache`
,`io_write`,`io_read`,`load_01`,`load_05`,`load_15`,`add_time`)values 
('10.62.242.123',23.0,24.0,53.0,51424520,1246254,2565222,32445
,51424520,1246254,2565222,32445,'245M/s','54465KB/s',24.4,52.4,48.4,'2018-01-23 2:30:54');
insert  into `monitor_data`(`ip`,`cpu_user`,`cpu_sys`,`cpu_free`,`memory_total`,
`memory_use`,`memory_free`,`memory_buffer`,`swap_total`,`swap_use`,`swap_free`,`swap_cache`
,`io_write`,`io_read`,`load_01`,`load_05`,`load_15`,`add_time`)values 
('10.62.242.123',23.0,24.0,53.0,256000,200000,2565222,32445
,256000,200000,2565222,32445,'245M/s','54465KB/s',24.4,52.4,48.4,'2018-01-23 2:40:54');
insert  into `monitor_data`(`ip`,`cpu_user`,`cpu_sys`,`cpu_free`,`memory_total`,
`memory_use`,`memory_free`,`memory_buffer`,`swap_total`,`swap_use`,`swap_free`,`swap_cache`
,`io_write`,`io_read`,`load_01`,`load_05`,`load_15`,`add_time`)values 
('10.62.242.123',70.0,20.0,10.0,256000,200000,2565222,32445
,256000,200000,2565222,32445,'245M/s','54465KB/s',24.4,52.4,48.4,'2018-01-23 2:45:54');
insert  into `monitor_data`(`ip`,`cpu_user`,`cpu_sys`,`cpu_free`,`memory_total`,
`memory_use`,`memory_free`,`memory_buffer`,`swap_total`,`swap_use`,`swap_free`,`swap_cache`
,`io_write`,`io_read`,`load_01`,`load_05`,`load_15`,`add_time`)values 
('10.62.242.123',20.0,70.0,10.0,256000,200000,2565222,32445
,256000,200000,2565222,32445,'245M/s','54465KB/s',24.4,52.4,48.4,'2018-01-23 2:46:54');

 select * from monitor_data t where 
            (select count(1) from monitor_data where ip=t.ip and add_time> t.add_time) <1
        order by t.load_01 desc;

CREATE TABLE IF NOT EXISTS `monitor_host` (
  `ip` varchar(45) NOT NULL,
  `mac` varchar(20) not null,
  `cpu` INT(10) NOT NULL,
  `memory` double not null,
  `storage` double not null,
  `swap` double not null,
  `add_time` date not null
) ENGINE=InnoDB DEFAULT CHARSET=utf8; 
select *from monitor_host;

insert into `monitor_host` (`ip`,`mac`,`cpu`,`memory`,`storage`,`swap`,`add_time`)
	values('10.62.242.137','4a:00:02:a0:7b:70',32,256000,48,256000,'2018-01-23');
insert into `monitor_host` (`ip`,`mac`,`cpu`,`memory`,`storage`,`swap`,`add_time`)
	values('10.62.242.137','4a:00:02:a0:7b:70',32,256000,48,256000,'2018-01-24');
insert into `monitor_host` (`ip`,`mac`,`cpu`,`memory`,`storage`,`swap`,`add_time`)
	values('10.62.242.137','4a:00:02:a0:7b:70',32,256000,48,256000,'2018-01-25');
insert into `monitor_host` (`ip`,`mac`,`cpu`,`memory`,`storage`,`swap`,`add_time`)
	values('10.62.242.137','4a:00:02:a0:7b:70',32,256000,48,256000,'2018-01-26');

insert into `monitor_host` (`ip`,`mac`,`cpu`,`memory`,`storage`,`swap`,`add_time`)
	values('10.62.242.136','4a:00:02:a0:7b:70',32,256000,48,256000,'2018-01-23');
insert into `monitor_host` (`ip`,`mac`,`cpu`,`memory`,`storage`,`swap`,`add_time`)
	values('10.62.242.136','4a:00:02:a0:7b:70',32,256000,48,256000,'2018-01-24');
insert into `monitor_host` (`ip`,`mac`,`cpu`,`memory`,`storage`,`swap`,`add_time`)
	values('10.62.242.136','4a:00:02:a0:7b:70',32,256000,48,256000,'2018-01-25');
insert into `monitor_host` (`ip`,`mac`,`cpu`,`memory`,`storage`,`swap`,`add_time`)
	values('10.62.242.136','4a:00:02:a0:7b:70',32,256000,48,256000,'2018-01-26');

alter table `monitor_host` rename to `monitor_machine`;