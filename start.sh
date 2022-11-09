echo "composer install -n" >> ~/.bashrc
echo "mkdir -p /Application/Bin" >> ~/.bashrc
echo "mkdir -p /Application/Data" >> ~/.bashrc
echo "mkdir -p /Application/Host" >> ~/.bashrc
echo "chmod 755 /Application/Bin" >> ~/.bashrc
echo "chmod 755 /Application/Data" >> ~/.bashrc
echo "chmod 755 /Application/Host" >> ~/.bashrc
echo "chown www-data:www-data /Application/Data" >> ~/.bashrc
echo "chown www-data:www-data /Application/Host" >> ~/.bashrc
echo "cp /Application/vendor/r3m/framework/Bin/r3m.php /Application/Bin/R3m.php" >> ~/.bashrc
echo "php /Application/Bin/R3m.php bin r3m.io" >> ~/.bashrc
echo "r3m.io configure environment development" >> ~/.bashrc
echo "r3m.io info all" >> ~/.bashrc