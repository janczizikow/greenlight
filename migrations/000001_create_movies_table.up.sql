CREATE TABLE IF NOT EXISTS movies (
  id bigserial PRIMARY KEY,
  created_at timestamp(0) with time zone NOT NULL DEFAULT NOW(),
  title text NOT NULL,
  year integer NOT NULL CHECK (year BETWEEN 1888 AND date_part('year', now())),
  runtime integer NOT NULL CHECK (runtime >= 0),
  genres text[] NOT NULL CHECK (array_length(genres, 1) BETWEEN 1 AND 5),
  version integer NOT NULL DEFAULT 1
);
