"# sqltest" 


COPY car FROM 'car_data.csv' WITH (FORMAT csv);


psql -h hostname -p 5432 -U postgres -W

\d
\?
\d tablename
\l
\conninfo
