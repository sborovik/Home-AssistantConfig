/bin/date
CUR=`date '+%Y%m%d'`
ssh pi "sudo /bin/dd if=/dev/mmcblk0p1 | gzip -1 -" | dd of=/home/serg/hass/$CUR-mmcblk0p1.gz
ssh pi "sudo /bin/dd if=/dev/mmcblk0p2 | gzip -1 -" | dd of=/home/serg/hass/$CUR-mmcblk0p2.gz

