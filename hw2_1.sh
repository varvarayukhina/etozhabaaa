#!/bin/bash

supported_formats=("txt" "pdf" "doc")

# Функция для проверки поддержки форматов
function is_supported() {
    local ext=$1
    for format in "${supported_formats[@]}"; do
        if [[ "$ext" == "$format" ]]; then
            return 0
        fi
    done
    return 1
}

# Проверяем количество аргументов
if [ "$#" -ne 3 ]; then
    echo "Использование: $0 <путь до файла> <текущее расширение> <новое 
расширение>"
    exit 1
fi

file_path=$1
current_ext=$2
new_ext=$3

# Проверяем, поддерживаются ли введенные расширения
if ! is_supported "$current_ext"; then
    echo "Ошибка: текущее расширение '$current_ext' не поддерживается."
    echo "Поддерживаемые форматы: ${supported_formats[*]}"
    exit 1
fi

if ! is_supported "$new_ext"; then
    echo "Ошибка: новое расширение '$new_ext' не поддерживается."
    echo "Поддерживаемые форматы: ${supported_formats[*]}"
    exit 1
fi

# Проверяем, существует ли файл
if [ ! -f "$file_path" ]; then
    echo "Ошибка: файл '$file_path' не найден."
    exit 1
fi

# Меняем расширение файла
new_file_path="${file_path%.*}.$new_ext"
mv "$file_path" "$new_file_path"

echo "Расширение файла изменено на '$new_ext'. Новый путь: 
'$new_file_path'."

chmod +x hw2_1.sh
./hw2_1.sh "/path/to/file.txt" "txt" "pdf"
