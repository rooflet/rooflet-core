-- Seed data for user_zip_code_preferences
-- Add zip code preferences for testuser (Test User) for all valid zip codes
-- Valid zip codes are those that have both expected rent data AND market listings

-- testuser@test.com (ID: 11111111-1111-1111-1111-111111111111)
-- Adding 7 zip codes (under the default limit of 10)

-- ZIP Code 02072 (Stoughton, MA)
INSERT INTO user_zip_code_preferences (user_id, zip_code, created_at) VALUES
('11111111-1111-1111-1111-111111111111', '02072', NOW());

-- ZIP Code 02108 (Boston - Beacon Hill, MA)
INSERT INTO user_zip_code_preferences (user_id, zip_code, created_at) VALUES
('11111111-1111-1111-1111-111111111111', '02108', NOW());

-- ZIP Code 02139 (Cambridge, MA)
INSERT INTO user_zip_code_preferences (user_id, zip_code, created_at) VALUES
('11111111-1111-1111-1111-111111111111', '02139', NOW());

-- ZIP Code 02171 (Quincy - North Quincy, MA)
INSERT INTO user_zip_code_preferences (user_id, zip_code, created_at) VALUES
('11111111-1111-1111-1111-111111111111', '02171', NOW());

-- ZIP Code 02324 (Bridgewater, MA)
INSERT INTO user_zip_code_preferences (user_id, zip_code, created_at) VALUES
('11111111-1111-1111-1111-111111111111', '02324', NOW());

-- ZIP Code 02445 (Brookline, MA)
INSERT INTO user_zip_code_preferences (user_id, zip_code, created_at) VALUES
('11111111-1111-1111-1111-111111111111', '02445', NOW());

-- ZIP Code 02458 (Newton, MA)
INSERT INTO user_zip_code_preferences (user_id, zip_code, created_at) VALUES
('11111111-1111-1111-1111-111111111111', '02458', NOW());

