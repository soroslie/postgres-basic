CREATE TABLE users (
  id BIGSERIAL PRIMARY KEY,
  username VARCHAR,
  password TEXT,
  name VARCHAR,
  created_at TIMESTAMP NOT NULL,
  updated_at TIMESTAMP NOT NULL,
  deleted_at TIMESTAMP
);

CREATE TABLE post(
  id BIGSERIAL PRIMARY KEY,
  user_id BIGINT REFERENCES users(id),
  name VARCHAR,
  caption TEXT,
  created_at TIMESTAMP NOT NULL,
  updated_at TIMESTAMP NOT NULL,
  deleted_at TIMESTAMP
);

CREATE TABLE liker(
  id BIGSERIAL PRIMARY KEY,
  user_id BIGINT,
  post_id BIGINT REFERENCES post(id)
);