@echo off
call mvn clean package
call docker build -t ma.emsi/TPBanque .
call docker rm -f TPBanque
call docker run -d -p 9080:9080 -p 9443:9443 --name TPBanque ma.emsi/TPBanque