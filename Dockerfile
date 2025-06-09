# Используем официальный образ Ubuntu с установленным CMake
FROM ubuntu:22.04

# Установка необходимых пакетов
RUN apt update && \
    apt install -y cmake build-essential git && \
    apt clean && \
    rm -rf /var/lib/apt/lists/*

# Рабочая директория внутри контейнера
WORKDIR /app

# Копируем CMakeLists.txt и исходные файлы (или будем передавать при сборке)
COPY . .

# Директория для логов
RUN mkdir -p /logs

# Команда по умолчанию: сборка проекта и запись лога
CMD ["sh", "-c", "cmake -S . -B build > /logs/build.log 2>&1 && cmake --build build >> /logs/build.log 2>&1"]
