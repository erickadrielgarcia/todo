CREATE TABLE task (
    id BIGSERIAL PRIMARY KEY,
    title VARCHAR(50) NOT NULL CHECK (LENGTH(title) >= 3 AND LENGTH(title) <= 50),
    description VARCHAR(100) NOT NULL CHECK (LENGTH(description) >= 3 AND LENGTH(description) <= 100),
    completed BOOLEAN NOT NULL,
    priority VARCHAR(10) NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    overdue TIMESTAMP WITH TIME ZONE DEFAULT NULL
);