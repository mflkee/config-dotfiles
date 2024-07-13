#!/bin/bash
cd ~/dotfiles/scripts/

# Функция для выполнения git команд
git_operations() {
    branch=$1
    git checkout $branch

    # Сохраняем локальные изменения
    git stash

    # Синхронизируем изменения с удаленным репозиторием
    git pull --rebase origin $branch

    # Восстанавливаем локальные изменения
    git stash pop

    # Проверяем наличие изменений
    if [ -n "$(git status --porcelain)" ]; then
        git add .
        git commit -m "Automated commit"
    else
        echo "Нет изменений для коммита в ветке $branch"
    fi

    # Синхронизируем локальные изменения с удаленным репозиторием
    git pull --rebase origin $branch
    git push origin $branch
}

# Сохраняем текущую ветку
current_branch=$(git branch --show-current)

# Проверка переданных параметров
if [ "$1" == "notebook" ]; then
    git_operations "notebook"
elif [ "$1" == "desktop" ]; then
    git_operations "desktop"
elif [ "$1" == "both" ]; then
    git_operations "desktop"
    git_operations "notebook"
else
    echo "Usage: $0 {notebook|desktop|both}"
    exit 1
fi

# Возвращаемся к первоначальной ветке
git checkout $current_branch

read -p "Нажмите любую клавишу, чтобы закрыть терминал..."
