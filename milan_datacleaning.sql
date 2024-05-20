-- 1) Creation of a staging table named "milan" to preserve the original data
CREATE TABLE milan
LIKE milan_raw;

INSERT milan
SELECT *
FROM milan_raw;

-- 2) Now we check and change the datatype that are not in the right format. We know from the data source that the maximum lenght of `id` is 8 character
ALTER TABLE milan MODIFY COLUMN id BIGINT
UPDATE milan SET id = SUBSTRING(id, 1, 8);

-- 3) `date` is in text format, but since there's some null value, some adjusment need to be made before converting datatype
ALTER TABLE milan MODIFY COLUMN last_review VARCHAR(10);
UPDATE milan 
SET last_review = STR_TO_DATE(last_review, '%d/%m/%Y')
WHERE last_review IS NOT NULL AND last_review != '';

UPDATE milan 
SET last_review = NULL
WHERE last_review = '';

ALTER TABLE milan MODIFY COLUMN last_review DATE NULL;

-- 4) Now we can check and remove duplicates with the ROW_NUMBER function
SELECT *,
ROW_NUMBER() OVER(PARTITION BY id, "name" , host_id, host_name) as row_num
FROM milan

-- We double-check to see if they're effectively are duplicates
SELECT id, "name", host_id, host_name
FROM (
    SELECT id, "name", host_id, host_name,
	ROW_NUMBER() OVER(PARTITION BY id, "name", host_id, host_name ORDER BY id) as row_num
    FROM milan
) AS ranked_duplicates
WHERE row_num > 1;

-- Then we delete
DELETE FROM milan
WHERE (id, "name", host_id, host_name) IN (
    SELECT id, "name", host_id, host_name
    FROM (
        SELECT id, "name", host_id, host_name,
		ROW_NUMBER() OVER(PARTITION BY id, "name" , host_id, host_name) as row_num
        FROM milan
    ) AS ranked_duplicates
    WHERE row_num > 1
)

-- 5) Data standardization 
UPDATE milan
SET neighbourhood = LOWER(neighbourhood);
UPDATE milan
SET neighbourhood = CONCAT(UCASE(LEFT(neighbourhood, 1)), LOWER(SUBSTRING(neighbourhood, 2)));




