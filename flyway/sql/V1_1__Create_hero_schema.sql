CREATE SCHEMA hero_data AUTHORIZATION postgres;

-- configure 'admin' role access
GRANT ALL PRIVILEGES ON SCHEMA hero_data TO admin;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA hero_data TO admin;
ALTER DEFAULT PRIVILEGES IN SCHEMA hero_data GRANT ALL PRIVILEGES ON TABLES TO admin;

-- configure 'readonly' role access
GRANT USAGE ON SCHEMA hero_data TO readonly;
GRANT SELECT ON ALL TABLES IN SCHEMA hero_data TO readonly;
ALTER DEFAULT PRIVILEGES IN SCHEMA hero_data GRANT SELECT ON TABLES TO readonly;

-- configure 'readwrite' role access
GRANT USAGE, CREATE ON SCHEMA hero_data TO readwrite;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA hero_data TO readwrite;
ALTER DEFAULT PRIVILEGES IN SCHEMA hero_data GRANT SELECT, INSERT, UPDATE, DELETE ON TABLES TO readwrite;
GRANT USAGE ON ALL SEQUENCES IN SCHEMA hero_data TO readwrite;
ALTER DEFAULT PRIVILEGES IN SCHEMA hero_data GRANT USAGE ON SEQUENCES TO readwrite;
