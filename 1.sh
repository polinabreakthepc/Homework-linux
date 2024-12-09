#!/bin/bash
mkdir sweet_home
cd sweet_home
mkdir -p sweet_home/1_floor/living_room,kitchen,bathroom
mkdir -p sweet_home/1_floor/kitchen/stove,fridge
mkdir -p sweet_home/1_floor/bathroom/bath
mkdir -p sweet_home/1_floor/living_room/sofa,TV
mkdir -p sweet_home/2_floor/grandmother,mother,father,daughter,son
chmod 777 grandmother
chmod 770 mother
chmod 770 mother
chmod 700 daughter
chmod 700 son
sudo groupadd old_people
sudo groupadd young_people
sudo snap install tree
tree
echo 'sweet_home is ready'
