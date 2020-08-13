CREATE USER phone IDENTIFIED BY phone;
GRANT CONNECT TO phone;
GRANT CONNECT, RESOURCE, DBA TO phone;
grant all privileges to phone identified by phone;
GRANT UNLIMITED TABLESPACE TO phone;