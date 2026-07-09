# OneOffice - System Zarządzania Przestrzenią Biurową

Aplikacja typu SaaS do rezerwacji biurek i sal konferencyjnych.

## 🚀 Architektura Systemu
System oparty jest na architekturze mikroserwisów z wykorzystaniem:
- **Backend:** Java 21, Spring Boot 3.4.4
- **Frontend:** React.js
- **Baza danych:** PostgreSQL (zarządzany przez Flyway)
- **Orkiestracja:** Docker & Docker Compose
- **Komunikacja:** API Gateway (punkt wejścia)

## 🏁 Szybki start (Docker)

1. **Budowanie aplikacji**
- Komenda w głównym katalogu:
   ```bash
   docker-compose up --build
   ```
2. **Po zbudowaniu**
- Można skorzystać z gotowego użytkownika dla admina:
```
login: admin@oneoffice.pl
hasło: H@slo12345
```
- Lub zwykłego użytkownika:
```
login: lukasz.drozdowski@oneoffice.pl
hasło: H@slo12345
```
   # Swagger UI:
```
http://localhost:8080/swagger-ui.html
```
# OpenAPI docs in JSON:
```
http://localhost:8080/v3/api-docs
```
# PgAdmin:
```
http://localhost:8090/login?next=/browser/
```
```
user: admin@admin
password: admin
```

# Frontend:
- Panel Admina
```
http://localhost:3000
```

- Panel Użytkownika
```
http://localhost:3001
```

# Gateway:
```
http://localhost:8080
```

# Identity-service:
```
http://localhost:8081
```

# Resource-service:
```
http://localhost:8082
```

# Booking-service:
```
http://localhost:8083
```

# Database:
```
http://postgres:5432/postgres
```

```
user: postgres
password: postgres
```
