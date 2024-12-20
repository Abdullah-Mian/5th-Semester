-- Add a new superhero
INSERT INTO superhero
    (id, superhero_name, full_name, publisher_id, height_cm, weight_kg)
VALUES
    (6001, 'Iron Man', 'Tony Stark', 13, 180, 75);


SET IMPLICIT_TRANSACTIONS ON;
-- Enable implicit transactions
UPDATE superhero
SET publisher_id = 12 
WHERE id = 6001;
COMMIT;
UPDATE superhero
SET publisher_id = 14 
WHERE id = 2;
COMMIT;

select *
from superhero
where id = 6002;


SELECT @@TRANCOUNT AS OpenTransactions
BEGIN TRANSACTION;
-- Insert and delete superheroes in a single transaction
INSERT INTO superhero
    (id, superhero_name, full_name, publisher_id, height_cm, weight_kg)
VALUES
    (6002, 'Black Widow', 'Natasha Romanoff', 13, 170, 60);

DELETE FROM superhero WHERE id = 6001;

-- Commit or rollback changes
COMMIT;
-- Save changes
--ROLLBACK; -- Uncomment to undo changes



BEGIN TRANSACTION;

INSERT INTO superhero
    (id, superhero_name, full_name, publisher_id, height_cm, weight_kg)
VALUES
    (6007, 'Hulk', 'Bruce Banner', 13, 210, 120);

--SAVE TRANSACTION SavePoint1; -- Create a savepoint

INSERT INTO superhero
    (id, superhero_name, full_name, publisher_id, height_cm, weight_kg)
VALUES
    (6001, 'Iron Man', 'Tony Stark', 13, 180, 75);


--ROLLBACK TRANSACTION SavePoint1; -- Undo changes after savepoint
COMMIT;


BEGIN TRANSACTION;

DELETE FROM superhero WHERE id = 6007;
DELETE FROM superhero WHERE id = 6002
commit;


GO

CREATE PROCEDURE InsertSuperhero
    @p_id INT
AS
BEGIN
    BEGIN TRANSACTION;

    -- First Insert with the passed ID
    INSERT INTO superhero
        (id, superhero_name, full_name, publisher_id, height_cm, weight_kg)
    VALUES
        (@p_id, 'Hulk', 'Bruce Banner', 13, 210, 120);

    -- Second Insert with hardcoded values for Iron Man
    INSERT INTO superhero
        (id, superhero_name, full_name, publisher_id, height_cm, weight_kg)
    VALUES
        (@p_id+1, 'Iron Man', 'Tony Stark', 13, 180, 75);

    COMMIT;
END;

EXEC InsertSuperhero @p_id = 6009;

select *
from superhero
where id = 6010

GO

CREATE PROCEDURE DeleteSuperhero
    @p_id INT
AS
BEGIN
    BEGIN TRANSACTION;

    DELETE FROM superhero WHERE id = @p_id
    ;
    DELETE FROM superhero WHERE id = @p_id + 1;
    COMMIT;
END;

EXEC InsertSuperhero @p_id = 6009;

EXEC DeleteSuperhero 6009;

GRANT EXEC ON DeleteSuperhero TO JeanPaulJohn

create table STT
(
    id int ,
    tsql varchar(max),
    ExceStatus int
);
INSERT INTO STT
    (id,tsql,ExceStatus)
VALUES
    (1, 'BEGIN TRANSACTION;
    DELETE FROM superhero WHERE id = @p_id ;
    DELETE FROM superhero WHERE id = @p_id + 1;
    COMMIT;', 0);