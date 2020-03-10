@echo OFF
::httpd.exe -k install -n "Apache2.4"
::shutdown -r /t 3
::shutdown -t 0 -r -f
::echo heloworld
C:\xampp\mysql\bin\mysqldump -h localhost -u root -pworkshop2014 --databases krukhmerdata > "C:\xampp\htdocs\kk_database_backup.sql"
C:\xampp\mysql\bin\mysql repair table oms_sale


