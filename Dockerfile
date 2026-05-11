FROM python:3.11-slim

WORKDIR /app

# Копируем все файлы проекта
COPY . .

# Устанавливаем зависимости (без requirements.txt)
RUN pip install aiogram==3.4.1 aiohttp==3.9.3 asyncpg==0.29.0 python-dotenv==1.0.0

CMD ["python", "main.py"]
