#!/bin/bash

# Функция для выполнения git команд
git_operations() {
    branch=$1
    git checkout $branch
    git pull origin $branch
    git add .
    git commit -m "Automated commit"
    git push origin $branch
}

# Проверка переданных параметров
if [ "$1" == "notebook" ]; then
    git_operations "notebook"
elif [ "$1" == "desktop" ]; then
    git_operations "desktop"
elif [ "$1" == "both" ]; then
    git_operations "notebook"
    git_operations "desktop"
else
    echo "Usage: $0 {notebook|desktop|both}"
    exit 1
fi

