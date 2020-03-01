SELECT VERSION();

CREATE TABLE test.product_json_table (
   id INT AUTO_INCREMENT NOT NULL,
   product VARCHAR(20) NOT NULL,
   description LONGTEXT ASCII,
  PRIMARY KEY (id),
	CHECK (JSON_VALID(description))
) ENGINE = InnoDB ROW_FORMAT = DEFAULT;


SELECT id, Name 
FROM test.person;





SELECT id, product, description 
FROM test.product_json_table;

INSERT INTO test.product_json_table(product, description) 
VALUES( 'bike', '{"wheels": 2, "seats": 2, "fuel": "petrol", "mileage": 60}');

INSERT INTO test.product_json_table(product, description) 
VALUES( 'car', '{"wheels": 4, "seats": 5, "fuel": "petrol", "mileage": 15}');

INSERT INTO test.product_json_table(product, description) 
VALUES( 'truck', '{"wheels": 4, "seats": 3, "fuel": "diesel", "mileage": 8}');

INSERT INTO test.product_json_table(product, description) 
VALUES( 'TV', '{"screen": 55, "type": "LED", "smart": true, "OS": "Android"}');

INSERT INTO test.product_json_table(product, description) 
VALUES( 'car', 'test');

DELETE FROM test.product_json_table WHERE id=2;

SELECT id, product, description 
FROM test.product_json_table
WHERE id = 5;


SELECT id, product, description 
FROM test.product_json_table
WHERE JSON_EXTRACT(description, '$.wheels') > 2;

SELECT JSON_EXTRACT(description, '$.wheels') AS wheels 
FROM test.product_json_table

SELECT * FROM test.product_json_table
WHERE JSON_CONTAINS(description, '"petrol"', '$.fuel');

SELECT JSON_EXTRACT(description, '$.fuel') AS fuel 
FROM test.product_json_table

--SELECT description ->> "$.wheels" AS wheels 
--FROM test.product_json_table

INSERT INTO test.product_json_table(product, description) 
VALUES( 'trim_TV', '{"screen": 55, "type": " LED Here ", "smart": true, "OS": "  Android"}');

INSERT INTO test.product_json_table(product, description) 
VALUES( 'truck_space', '{" wheels  ": 4, "seats": 3, "	fuel   ": "diesel", "  \r\n mileage		": 8}');


SELECT TRIM(JSON_UNQUOTE(JSON_EXTRACT(description, '$.type'))) AS type 
FROM test.product_json_table

SELECT 1

SELECT 2+3

SELECT 2=3

SELECT 2=2

SELECT 'abc' = 'def'
SELECT 'abc' = 'abc'

SELECT 'abc' = 2

SELECT trimw('abc')

SELECT TRIM('   	abc  			\r\n') as col1

SELECT trim('   	abc  			\n') as col1

SELECT UCASE('   	abc  			') as col1

SELECT COUNT(*) AS COUNT 
FROM test.product_json_table


SELECT 1 AS DUMMY 
FROM test.product_json_table

SELECT 1=1 AS DUMMY 
FROM test.product_json_table

SELECT 1=0 AS DUMMY 
FROM test.product_json_table

SELECT 1=1 AS DUMMY 
FROM test.product_json_table
WHERE 1=2

SELECT 1 AS DUMMY 
FROM test.product_json_table
WHERE 1=1

SELECT NULL AS DUMMY


SELECT 1 AS DUMMY 
FROM test.product_json_table
WHERE EXISTS (SELECT 1 AS DUMMY 
FROM test.product_json_table
WHERE id=10)

SELECT * FROM test.product_json_table



SELECT JSON_EXTRACT(event_context, '$[0].hccClaimNumberFromResponse') AS hccClaimNumberFromResponse 
FROM integration.staging_inboundclaimsinstitutional
where created_date like '2019-06-06 %'
and JSON_EXTRACT(event_context, '$[0].hccClaimNumberFromResponse') like '%20190604000001%'











