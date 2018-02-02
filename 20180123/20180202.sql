select *,row_number from(
SELECT 
*,
@num:=IF(CONCAT(@ip, @mounted_on)=CONCAT(ip, mounted_on) ,@num+1,1) AS row_number,
  @ip := ip AS dummy1,
  @mounted_on := mounted_on AS dummy2
FROM `monitor_disk`
ORDER BY 
ip,mounted_on ,add_time DESC ) where row_number <=3;

select a.* from(
SELECT `ip`,`fileSystem`,`Type`,`Size`,`Used`,`Avail`,
`Use_per`,`Mounted_on`,`add_time`,
@num:=IF(CONCAT(@ip, @mounted_on)=CONCAT(ip, mounted_on) ,@num+1,1) AS row_number,
  @ip := ip AS dummy,
  @mounted_on := mounted_on AS dummy2
FROM `monitor_disk`
ORDER BY 
ip,mounted_on ,add_time DESC ) a where a.row_number<=3;