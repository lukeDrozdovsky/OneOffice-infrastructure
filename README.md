# 🏢 OneOffice - Office Space Management System

A SaaS application for booking desks and conference rooms.

> **Note for Reviewers:**  
> I am fully aware that a microservices architecture for an application of this scale is a bit of overengineering.
> I chose this approach on purpose to increase the friction in my learning process, challenge myself,
> and gain valuable, practical experience with distributed systems.

## 🚀 System Architecture
The system is based on a microservices architecture using:
- **Backend:** Java 21, Spring Boot 3.4.4
- **Frontend:** React.js
- **Database:** PostgreSQL (managed by Flyway)
- **Orchestration:** Docker & Docker Compose
- **Communication:** API Gateway (entry point)
- **Email Testing:** MailHog  as a tool for catching outgoing emails

## 🏁 Quick start (Docker)

1. **Building the application**
- Command in the root directory:
```bash
docker-compose up --build
```
2. **After building**
- You can use the pre-configured admin user:
```
login: admin@oneoffice.pl
hasło: H@slo12345
```
- Or a regular user:
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
- Admin Panel
```
http://localhost:3000
```

- Uesr Panel
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
# MailHog (Local SMTP testing):
```
- Web UI: http://localhost:8025
- SMTP Server Port: 1025
```
