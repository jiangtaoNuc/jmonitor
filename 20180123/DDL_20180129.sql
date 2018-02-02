use jmonitor;
select ip,cpu_user,cpu_sys,cpu_free,add_time from monitor_data t where
        (select count(1) from monitor_data where ip=t.ip and add_time> t.add_time) <2
        order by ip;
      select ip,cpu_user,cpu_sys,cpu_free,add_time from monitor_data t where
        (select count(1) from monitor_data where ip=t.ip and add_time> t.add_time) <12
        order by ip,add_time;

show tables;
#ip Filesystem Type Size Used Avail Use% Mounted on
CREATE TABLE IF NOT EXISTS `monitor_disk` (
  `ip` varchar(45) NOT NULL,
  `fileSystem` varchar(100) NOT NULL,
  `Type` varchar(20) NOT NULL,
  `Size` varchar(20) NOT NULL,
  `Used` varchar(20) NOT NULL,
  `Avail` varchar(20) NOT NULL,
  `Use_per` varchar(20) NOT NULL,
  `Mounted_on` varchar(20) NOT NULL,
  `add_time` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
drop table monitor_disk;
#/dev/mapper/vg_bdi6-lv_root ext4   126G   47G   74G  39% /
#tmpfs                       tmpfs  127G   80K  127G   1% /dev/shm
#/dev/sda1                   ext4  1008M   63M  895M   7% /boot
#/dev/mapper/vg_bdi6-lv_home ext4   268G   38G  217G  15% /home
#/dev/md0                    xfs     41T   31T   10T  76% /data

insert  into `monitor_disk`(`ip`,`fileSystem`,`Type`,`Size`,`Used`,`Avail`,
`Use_per`,`Mounted_on`,`add_time`)values 
('10.62.242.125','/dev/mapper/vg_bdi6-lv_root','ext4','126G','47G','74G','39%','/','2018-01-23 3:00:54');
insert  into `monitor_disk`(`ip`,`fileSystem`,`Type`,`Size`,`Used`,`Avail`,
`Use_per`,`Mounted_on`,`add_time`)values 
('10.62.242.125','tmpfs','tmpfs','127G','80K','127G','1%','/dev/shm','2018-01-23 3:00:54');
insert  into `monitor_disk`(`ip`,`fileSystem`,`Type`,`Size`,`Used`,`Avail`,
`Use_per`,`Mounted_on`,`add_time`)values 
('10.62.242.125','/dev/sda1','ext4','1008M','63M','895M','7%','/boot','2018-01-23 3:00:54');
insert  into `monitor_disk`(`ip`,`fileSystem`,`Type`,`Size`,`Used`,`Avail`,
`Use_per`,`Mounted_on`,`add_time`)values 
('10.62.242.125','/dev/mapper/vg_bdi6-lv_home','ext4','268G','38G','217G','15%','/home','2018-01-23 3:00:54');
insert  into `monitor_disk`(`ip`,`fileSystem`,`Type`,`Size`,`Used`,`Avail`,
`Use_per`,`Mounted_on`,`add_time`)values 
('10.62.242.125','/dev/md0','xfs','41T','31T','10T','76%','/data','2018-01-23 3:00:54');

insert  into `monitor_disk`(`ip`,`fileSystem`,`Type`,`Size`,`Used`,`Avail`,
`Use_per`,`Mounted_on`,`add_time`)values 
('10.62.242.126','/dev/mapper/vg_bdi6-lv_root','ext4','126G','47G','74G','39%','/','2018-01-23 3:00:54');
insert  into `monitor_disk`(`ip`,`fileSystem`,`Type`,`Size`,`Used`,`Avail`,
`Use_per`,`Mounted_on`,`add_time`)values 
('10.62.242.126','tmpfs','tmpfs','127G','80K','127G','1%','/dev/shm','2018-01-23 3:00:54');
insert  into `monitor_disk`(`ip`,`fileSystem`,`Type`,`Size`,`Used`,`Avail`,
`Use_per`,`Mounted_on`,`add_time`)values 
('10.62.242.126','/dev/sda1','ext4','1008M','63M','895M','7%','/boot','2018-01-23 3:00:54');
insert  into `monitor_disk`(`ip`,`fileSystem`,`Type`,`Size`,`Used`,`Avail`,
`Use_per`,`Mounted_on`,`add_time`)values 
('10.62.242.126','/dev/mapper/vg_bdi6-lv_home','ext4','268G','38G','217G','15%','/home','2018-01-23 3:00:54');
insert  into `monitor_disk`(`ip`,`fileSystem`,`Type`,`Size`,`Used`,`Avail`,
`Use_per`,`Mounted_on`,`add_time`)values 
('10.62.242.126','/dev/md0','xfs','41T','31T','10T','76%','/data','2018-01-23 3:00:54');

select * from monitor_disk;

 select * from monitor_disk t where
            (select count(1) from monitor_disk where ip=t.ip and add_time> t.add_time) &lt;3
        order by t.ip desc ,t.mounted_on;