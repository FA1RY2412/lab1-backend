# Flask Lab1 — Healthcheck API

## Мета
Розробити базовий REST API на Flask з ендпоінтом `/healthcheck`, налаштувати Docker та задеплоїти на Render.

---

## Структура
```
app/
  __init__.py
  views.py
Dockerfile
docker-compose.yml
requirements.txt
```

---

## Локальний запуск (без Docker)
```bash
python3 -m venv env
source env/bin/activate
pip install -r requirements.txt
flask --app app run -h 0.0.0.0 -p 8080
# Відкрити: http://localhost:8080/healthcheck
```

### Відповідь приклад
```json
{"status":"OK","date":"2025-10-07 00:00:00 UTC"}
```

---

## Docker
```bash
docker-compose build
docker-compose up
# Відкрити: http://localhost:8080/healthcheck
```

---

## Деплой на Render
1. Створи GitHub репозиторій і завантаж цей код.
2. На https://render.com — New > Web Service > підключи репозиторій.
3. Environment: Docker. Інші налаштування — за замовчуванням.
4. Після деплою ендпоінт буде доступний за URL сервісу `/healthcheck`.

---

## Критерії (checklist)
- [x] `/healthcheck` повертає `200` і JSON зі статусом та датою
- [x] Dockerfile налаштований
- [x] docker-compose.yml працює
- [x] README з інструкціями
- [x] Готово до деплою на Render
