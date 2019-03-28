#!/bin/sh

/bin/date
CUR=`date '+%Y%m%d-%H%M'`

echo start rsync
# # если возникнет ошибка, прервать выполнение
set -e

homeassistant_db="/home/homeassistant/.homeassistant/home-assistant_v2.db"
#zll_db="/home/pi/.local/share/dresden-elektronik/deCONZ/zll.db"
#sqlite_db="/opt/iobrocker/iobrocker-data/sqlite/sqlite.db"

# отмонтируем разделы подключенной флешки отовсюду, игнорируем ошибки (если
# флешка уже отмонтирована)
umount /dev/sda1 2> /dev/null || /bin/true;
umount /dev/sda2 2> /dev/null || /bin/true;

# создадим точки монтирования, если их еще нет
mkdir -p /mnt/backup_boot
mkdir -p /mnt/backup_root

# подмонтируем boot и корневые разделы флешки в соответствующие каталоги
mount /dev/sda1 /mnt/backup_boot;
mount /dev/sda2 /mnt/backup_root;

# выполним синхронизацию корневых разделов
rsync -aHv --delete --delete-after --exclude-from=/backup_excludes / /mnt/backup_root/;

# выполним бэкап базы Homeassistant
#echo $CUR db backup start 
# if [ -f "$homeassistant_db" ]
# then
# sqlite3 $homeassistant_db ".backup /mnt/backup_root$homeassistant_db";
# fi
#echo $CUR db backup finish 

# выполним бэкап базы iObrocker
#if [ -f "$sqlite_db" ]
#then
#  sqlite3 $sqlite_db ".backup /mnt/backup_root$sqlite_db";
#fi

# выполним синхронизацию boot раздела, исключив cmdline.txt файл
rsync -rltD --delete --exclude 'cmdline.txt' /boot/ /mnt/backup_boot/;
echo all finished 
/bin/date 

