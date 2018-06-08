echo ""
echo "###############################"
echo " BASE EVALUATION M2 DEV "
echo "###############################"
echo ""
read -p "Press any key to continue... " -n1 -s
echo ""
echo "###########"
echo " version 1 "
echo "###########"
echo ""
read -p "Press any key to continue... " -n1 -s

docker rm -f nginx
docker volume rm eval_web eval_log

cd eval
git checkout v1
cd nginx-php-fpm
docker build -t nginx-php-fpm:1.0 .
cd ../
docker-compose up -d



docker rm -f nginx mariadb
docker volume rm eval_database eval_web eval_log
