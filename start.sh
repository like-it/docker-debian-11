echo "composer install -n" >> ~/.bashrc
echo "mkdir -p /Application/Bin" >> ~/.bashrc
echo "mkdir -p /Application/Data/Cache" >> ~/.bashrc
echo "mkdir -p /Application/Host" >> ~/.bashrc
echo "chmod 755 /Application/Bin" >> ~/.bashrc
echo "chmod 777 /Application/Data" >> ~/.bashrc
echo "chmod 777 /Application/Host" >> ~/.bashrc
echo "cp /Application/vendor/r3m/framework/Bin/r3m.php /Application/Bin/R3m.php" >> ~/.bashrc
echo "php /Application/Bin/R3m.php bin r3m.io" >> ~/.bashrc
echo "r3m.io configure environment development" >> ~/.bashrc
echo "chown www-data:www-data /Application/Data -R" >> ~/.bashrc
echo "chown www-data:www-data /Application/Host -R" >> ~/.bashrc
echo "chmod 666 /Application/Data/Config.json" >> ~/.bashrc
echo "r3m.io info all" >> ~/.bashrc