USE Superhero;
CREATE LOGIN JeanPaulJohnLogin WITH PASSWORD = '12341234';
GO
CREATE USER JeanPaulJohn FOR LOGIN JeanPaulJohnLogin;

CREATE ROLE MarvelSuperheroManager;

-- Create a view to look at all the features/characteristics of Marvel superheroes
CREATE OR ALTER VIEW vw_MarvelSuperheroes AS
SELECT 
    s.id AS Superhero_id,    
    s.superhero_name,
	s.full_name,    
	g.gender AS SuperHero_Gender,
	c1.colour AS Eye_colour,
	c2.colour AS Hair_colour,
	c3.colour AS Skin_colour,
	r.race AS SuperHero_Race,
	p.publisher_name,
	a.alignment AS SuperHero_alignment,
	s.height_cm,
	s.weight_kg
FROM 
    superhero s
JOIN 
    publisher p ON s.publisher_id = p.id
LEFT JOIN 
	gender g ON s.gender_id = g.id
LEFT JOIN 
	colour c1 ON s.eye_colour_id  = c1.id
LEFT JOIN 
	colour c2 ON s.hair_colour_id  = c2.id
LEFT JOIN 
	colour c3 ON s.skin_colour_id  = c3.id
LEFT JOIN 
	race r ON s.race_id = r.id
LEFT JOIN 
	alignment a ON s.alignment_id = a.id
WHERE 
    p.publisher_name LIKE '%Marvel%';

-- Grant SELECT permission on the Marvel superheroes view to the role
GRANT SELECT ON vw_MarvelSuperheroes TO MarvelSuperheroManager;

SELECT * FROM vw_MarvelSuperheroes;

-- Grant permission to add superheroes in the superhero table
GRANT INSERT ON superhero TO MarvelSuperheroManager;

-- Insert a new Marvel superhero
INSERT INTO superhero (
	id,
    superhero_name, 
    full_name, 
    publisher_id, 
    height_cm, 
    weight_kg
)
VALUES (
	5000,
    'Spidere-Man',         -- superhero_name
    'Peterr Parker',       -- full_name
    13,                    -- publisher_id 
    178.0,                -- height_cm
    74.8                  -- weight_kg
);

DELETE FROM superhero
WHERE id = 5000;


-- Grant DELETE permission on the Marvel superheroes view to the role
GRANT DELETE ON vw_DCSuperheroes TO MarvelSuperheroManager;
revoke DELETE ON vw_DCSuperheroes TO MarvelSuperheroManager;

GRANT DELETE ON superhero TO MarvelSuperheroManager;

DELETE s
FROM superhero s
JOIN publisher p ON s.publisher_id = p.id
WHERE s.id = 5000 AND p.publisher_name LIKE '%DC%';

-- Delete a DC superhero
DELETE FROM vw_DCSuperheroes
WHERE superhero_id =5000


-- Grant the role the ability to delegate read privileges
GRANT SELECT ON vw_MarvelSuperheroes TO MarvelSuperheroManager WITH GRANT OPTION;

-- Add the user JeanPaulJohn to the MarvelSuperheroManager role
ALTER ROLE MarvelSuperheroManager ADD MEMBER JeanPaulJohn;

-----------------------------------------------------------------------------
CREATE LOGIN RajnikanthPyarelalLogin WITH PASSWORD = '12341234';
GO
CREATE USER RajnikanthPyarelal FOR LOGIN RajnikanthPyarelalLogin;
GO
CREATE ROLE DCComicsManager;

-- Create a view to look at all the features/characteristics of Marvel superheroes
GRANT SELECT ON vw_MarvelSuperheroes TO DCComicsManager;

-- Grant INSERT permission on the superhero table to the role
GRANT INSERT ON superhero TO DCComicsManager;

-- Use the existing view for DC superheroes 
GRANT DELETE ON superhero TO DCComicsManager;

-- Add RajnikanthPyarelal to the DCComicsManager role
ALTER ROLE DCComicsManager ADD MEMBER RajnikanthPyarelal;

-------------------------------------------------------------------------------------
CREATE LOGIN AlphonsoLogin WITH PASSWORD = '12341234';
GO
CREATE USER Alphonso FOR LOGIN AlphonsoLogin;
GO
CREATE ROLE SuperheroAttributeManager;

CREATE OR ALTER VIEW vw_Superheroes AS
SELECT 
    s.id AS Superhero_id,    
    s.superhero_name,
	s.full_name,    
	g.gender AS SuperHero_Gender,
	c1.colour AS Eye_colour,
	c2.colour AS Hair_colour,
	c3.colour AS Skin_colour,
	r.race AS SuperHero_Race,
	p.publisher_name,
	a.alignment AS SuperHero_alignment,
	s.height_cm,
	s.weight_kg
FROM 
    superhero s
JOIN 
    publisher p ON s.publisher_id = p.id
LEFT JOIN 
	gender g ON s.gender_id = g.id
LEFT JOIN 
	colour c1 ON s.eye_colour_id  = c1.id
LEFT JOIN 
	colour c2 ON s.hair_colour_id  = c2.id
LEFT JOIN 
	colour c3 ON s.skin_colour_id  = c3.id
LEFT JOIN 
	race r ON s.race_id = r.id
LEFT JOIN 
	alignment a ON s.alignment_id = a.id;


-- Grant see all the superheros 
GRANT SELECT ON vw_Superheroes TO SuperheroAttributeManager;

-- Grant UPDATE permission for specific columns in the superhero table
GRANT UPDATE (hair_colour_id, skin_colour_id, eye_colour_id) ON superhero TO SuperheroAttributeManager;
GO
-- Add Alphonso to the SuperheroAttributeManager role
ALTER ROLE SuperheroAttributeManager ADD MEMBER Alphonso;


