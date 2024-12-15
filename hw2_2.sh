#!/bin/bash

# Проверяем количество аргументов
if [ "$#" -ne 3 ]; then
    echo "Ошибка: необходимо ввести ровно 3 аргумента."
    exit 1
else
    echo "Начинаем обработку с аргументами: $1, $2, $3"
fi


chmod +x hw2_1.sh
./hw2_1.sh "аргумент1" "аргумент2" "аргумент3"
./hw2_1.sh "аргумент1" "аргумент2"  # Для проверки ошибки