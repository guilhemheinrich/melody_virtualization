CREATE USER phis;

ALTER ROLE phis WITH CREATEDB;

ALTER ROLE phis WITH SUPERUSER;

ALTER USER phis WITH ENCRYPTED PASSWORD 'fieldc1.61!';

CREATE DATABASE diaphen OWNER phis;