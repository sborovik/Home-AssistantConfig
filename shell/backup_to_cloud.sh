list=$(cat /home/pi/.rclone/backup.list)
for i in $list
do
        echo Пробуем "$i"
        rclone sync -P --filter-from /home/pi/.rclone/excludes "$i" dropb:HOMEASSISTANT"$i"
done
