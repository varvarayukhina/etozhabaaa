#!/bin/bash

# Создаем первый этаж и его комнаты
mkdir -p homepractice/1_floor/kitchen homepractice/1_floor/hall 
homepractice/1_floor/living_room

# В кухне создаем мебель 
mkdir -p homepractice/1_floor/kitchen/closet
touch homepractice/1_floor/kitchen/closet/shelves 
homepractice/1_floor/kitchen/closet/hangers

# Мебель в комнате "hall" 
mkdir -p homepractice/1_floor/hall
touch homepractice/1_floor/hall/bed homepractice/1_floor/hall/tumbochka 
homepractice/1_floor/hall/chair

# Мебель в комнате "living_room" 
mkdir -p homepractice/1_floor/living_room
touch homepractice/1_floor/living_room/big_closet 
homepractice/1_floor/living_room/couch 
homepractice/1_floor/living_room/carpet

# Второй этаж и комнаты
mkdir -p homepractice/2_floor/mama homepractice/2_floor/papa 
homepractice/2_floor/son homepractice/2_floor/daughter 
homepractice/2_floor/babooshka

# Установка прав доступа для директорий

# Для мамы и бабушки
chmod 770 homepractice/2_floor/mama homepractice/2_floor/babooshka

# Для детей 
chmod 444 homepractice/2_floor/son homepractice/2_floor/daughter

# Для папы 
chmod 555 homepractice/2_floor/papa


