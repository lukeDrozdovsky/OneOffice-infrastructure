CREATE DATABASE one_office_identity_service_db;
CREATE DATABASE one_office_resource_service_db;

\c one_office_identity_service_db;

CREATE TABLE IF NOT EXISTS users (
    id BIGSERIAL PRIMARY KEY,
    uuid UUID NOT NULL DEFAULT gen_random_uuid() UNIQUE,
    firstname VARCHAR(255) NOT NULL,
    lastname VARCHAR(255) NOT NULL,
    gender VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    role VARCHAR(255) NOT NULL,
    active BOOLEAN NOT NULL,
    phone_number VARCHAR(255),
    created_at TIMESTAMP NOT NULL,
    email_verified boolean NOT NULL DEFAULT FALSE
);

CREATE TABLE IF NOT EXISTS email_confirmation_tokens (
    id BIGSERIAL PRIMARY KEY,
    token_hash VARCHAR(64) NOT NULL UNIQUE,
    user_id BIGINT NOT NULL,
    created_at TIMESTAMP NOT NULL,
    expires_at TIMESTAMP NOT NULL,
    confirmed_at TIMESTAMP,
    CONSTRAINT fk_email_confirmation_tokens_user FOREIGN KEY (user_id) REFERENCES users (id) ON DELETE CASCADE
);

\c one_office_resource_service_db;

CREATE TABLE IF NOT EXISTS rooms (
    id BIGSERIAL PRIMARY KEY,
    uuid UUID NOT NULL UNIQUE DEFAULT gen_random_uuid(),
    name VARCHAR(255) NOT NULL,
    room_type VARCHAR(255) NOT NULL,
    width INT NOT NULL,
    length INT NOT NULL,
    height INT NOT NULL,
    capacity INT NOT NULL
);

CREATE TABLE IF NOT EXISTS furniture (
    id BIGSERIAL PRIMARY KEY,
    uuid UUID NOT NULL UNIQUE DEFAULT gen_random_uuid(),
    room_id BIGINT,
    name VARCHAR(255) NOT NULL,
    furniture_type VARCHAR(255) NOT NULL,
    width INT NOT NULL,
    length INT NOT NULL,
    height INT NOT NULL,
    number_of_seats INT NOT NULL,
    CONSTRAINT fk_furniture_room FOREIGN KEY (room_id) REFERENCES rooms(id) ON DELETE CASCADE
);