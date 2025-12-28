-- Seed data for rooflet property management system
-- Compatible with both H2 and MySQL
-- Contains sample data for testing and development

-- Note: UUIDs are represented as UUID type in the database
-- For H2: Use string format '11111111-1111-1111-1111-111111111111'
-- For MySQL: Use string format and configure to handle UUIDs

-- Insert sample users
-- User 1: testuser@test.com
INSERT INTO users (id, full_name, email, password, created_at, updated_at) VALUES
('11111111-1111-1111-1111-111111111111', 'Test User', 'testuser@test.com', '$2a$12$OSploWe43Vi.qVlTVA/One96iuaIpoLq1/Msqk/dY8NmPrNGHpxxO', NOW(), NOW());
-- Password is 'password123' hashed with BCrypt cost factor 12

-- User 2: testuser1@test.com
INSERT INTO users (id, full_name, email, password, created_at, updated_at) VALUES
('22222222-2222-2222-2222-222222222222', 'Test User 1', 'testuser1@test.com', '$2a$12$OSploWe43Vi.qVlTVA/One96iuaIpoLq1/Msqk/dY8NmPrNGHpxxO', NOW(), NOW());
-- Password is 'password123' hashed with BCrypt cost factor 12

-- Create default portfolios for users
INSERT INTO portfolios (id, name, description, archived, created_at, updated_at) VALUES
('33333333-3333-3333-3333-333333333333', 'Test User Portfolio', 'Default portfolio created during migration', FALSE, NOW(), NOW()),
('44444444-4444-4444-4444-444444444444', 'Test User1 Portfolio', 'Default portfolio created during migration', FALSE, NOW(), NOW());

-- Add users as OWNER of their default portfolios
INSERT INTO portfolio_members (id, portfolio_id, user_id, role, created_at) VALUES
('55555555-5555-5555-5555-555555555555', '33333333-3333-3333-3333-333333333333', '11111111-1111-1111-1111-111111111111', 'OWNER', NOW()),
('66666666-6666-6666-6666-666666666666', '44444444-4444-4444-4444-444444444444', '22222222-2222-2222-2222-222222222222', 'OWNER', NOW());

-- Insert sample properties for User 1
-- Property 1: 123 Main Street Unit 101
INSERT INTO properties (
    id, user_id, portfolio_id, address1, address2, city, state, zip_code,
    property_type, bedrooms, bathrooms, square_feet,
    market_value, purchase_price, debt, interest_rate,
    monthly_hoa, monthly_property_tax, monthly_insurance,
    notes, archived, purchase_date, created_at, updated_at
) VALUES (
    'aaaaaaaa-1111-1111-1111-111111111111', '11111111-1111-1111-1111-111111111111', '33333333-3333-3333-3333-333333333333',
    '123 Main Street', 'Unit 101', 'Springfield', 'MA', '01101',
    'CONDO', 2, 1.0, 850,
    275000.00, 250000.00, 0.00, 0.00,
    519.00, 233.00, 32.00,
    'Recently renovated kitchen', FALSE, '2020-06-15', NOW(), NOW()
);

-- Property 2: 456 Oak Avenue Apt 2B
INSERT INTO properties (
    id, user_id, portfolio_id, address1, address2, city, state, zip_code,
    property_type, bedrooms, bathrooms, square_feet,
    market_value, purchase_price, debt, interest_rate,
    monthly_hoa, monthly_property_tax, monthly_insurance,
    notes, archived, purchase_date, created_at, updated_at
) VALUES (
    'aaaaaaaa-2222-2222-2222-222222222222', '11111111-1111-1111-1111-111111111111', '33333333-3333-3333-3333-333333333333',
    '456 Oak Avenue', 'Apt 2B', 'Boston', 'MA', '02108',
    'CONDO', 2, 1.0, 800,
    260000.00, 240000.00, 0.00, 0.00,
    498.00, 233.00, 32.00,
    'Well-maintained unit with modern amenities', FALSE, '2019-03-20', NOW(), NOW()
);

-- Property 3: 789 Elm Street Unit 305
INSERT INTO properties (
    id, user_id, portfolio_id, address1, address2, city, state, zip_code,
    property_type, bedrooms, bathrooms, square_feet,
    market_value, purchase_price, debt, interest_rate,
    monthly_hoa, monthly_property_tax, monthly_insurance,
    notes, archived, purchase_date, created_at, updated_at
) VALUES (
    'aaaaaaaa-3333-3333-3333-333333333333', '11111111-1111-1111-1111-111111111111', '33333333-3333-3333-3333-333333333333',
    '789 Elm Street', 'Unit 305', 'Cambridge', 'MA', '02139',
    'CONDO', 2, 1.5, 900,
    275000.00, 250000.00, 0.00, 0.00,
    519.00, 233.00, 32.00,
    'Premium unit with extra half bath', FALSE, '2020-11-10', NOW(), NOW()
);

-- Property 4: 321 Pine Road Unit 12
INSERT INTO properties (
    id, user_id, portfolio_id, address1, address2, city, state, zip_code,
    property_type, bedrooms, bathrooms, square_feet,
    market_value, purchase_price, debt, interest_rate,
    monthly_hoa, monthly_property_tax, monthly_insurance,
    notes, archived, purchase_date, created_at, updated_at
) VALUES (
    'aaaaaaaa-4444-4444-4444-444444444444', '11111111-1111-1111-1111-111111111111', '33333333-3333-3333-3333-333333333333',
    '321 Pine Road', 'Unit 12', 'Worcester', 'MA', '01608',
    'CONDO', 2, 1.0, 850,
    275000.00, 250000.00, 151458.00, 4.25,
    519.00, 233.00, 32.00,
    'Financed property with remaining mortgage', FALSE, '2021-08-05', NOW(), NOW()
);

-- Property 5: 555 Maple Drive
INSERT INTO properties (
    id, user_id, portfolio_id, address1, address2, city, state, zip_code,
    property_type, bedrooms, bathrooms, square_feet,
    market_value, purchase_price, debt, interest_rate,
    monthly_hoa, monthly_property_tax, monthly_insurance,
    notes, archived, purchase_date, created_at, updated_at
) VALUES (
    'aaaaaaaa-5555-5555-5555-555555555555', '11111111-1111-1111-1111-111111111111', '33333333-3333-3333-3333-333333333333',
    '555 Maple Drive', NULL, 'Newton', 'MA', '02458',
    'SINGLE_FAMILY', 3, 2.0, 1800,
    700000.00, 650000.00, 186000.00, 3.75,
    0.00, 0.00, 0.00,
    'Single family home, currently between tenants', FALSE, '2022-02-14', NOW(), NOW()
);

-- Property 6: 777 Cedar Lane - Property for User 2
INSERT INTO properties (
    id, user_id, portfolio_id, address1, address2, city, state, zip_code,
    property_type, bedrooms, bathrooms, square_feet,
    market_value, purchase_price, debt, interest_rate,
    monthly_hoa, monthly_property_tax, monthly_insurance,
    notes, archived, purchase_date, created_at, updated_at
) VALUES (
    'aaaaaaaa-6666-6666-6666-666666666666', '22222222-2222-2222-2222-222222222222', '44444444-4444-4444-4444-444444444444',
    '777 Cedar Lane', 'Unit 5A', 'Brookline', 'MA', '02445',
    'CONDO', 2, 1.0, 900,
    300000.00, 280000.00, 0.00, 0.00,
    450.00, 200.00, 30.00,
    'Property with rent increase history throughout 2025', FALSE, '2024-12-01', NOW(), NOW()
);

-- Insert sample tenants
-- Tenant 1: Kia Johnson - 123 Main Street Unit 101
INSERT INTO tenants (
    id, name, email, phone_number, property_id,
    lease_start_date, lease_end_date, monthly_rent, archived, created_at, updated_at
) VALUES (
    'bbbbbbbb-1111-1111-1111-111111111111', 'Kia Johnson', 'kia.j@email.com', '5551234567',
    'aaaaaaaa-1111-1111-1111-111111111111',
    '2024-01-01', '2025-12-31', 2000.00, FALSE, NOW(), NOW()
);

-- Tenant 2: Hel Martinez - 456 Oak Avenue Apt 2B
INSERT INTO tenants (
    id, name, email, phone_number, property_id,
    lease_start_date, lease_end_date, monthly_rent, archived, created_at, updated_at
) VALUES (
    'bbbbbbbb-2222-2222-2222-222222222222', 'Hel Martinez', 'hel.m@email.com', '5552345678',
    'aaaaaaaa-2222-2222-2222-222222222222',
    '2023-06-01', '2025-05-31', 2200.00, FALSE, NOW(), NOW()
);

-- Tenant 3: Rac Williams - 789 Elm Street Unit 305
INSERT INTO tenants (
    id, name, email, phone_number, property_id,
    lease_start_date, lease_end_date, monthly_rent, archived, created_at, updated_at
) VALUES (
    'bbbbbbbb-3333-3333-3333-333333333333', 'Rac Williams', 'rac.w@email.com', '5553456789',
    'aaaaaaaa-3333-3333-3333-333333333333',
    '2024-03-01', '2026-02-28', 2350.00, FALSE, NOW(), NOW()
);

-- Tenant 4: Syn Davis - 321 Pine Road Unit 12
INSERT INTO tenants (
    id, name, email, phone_number, property_id,
    lease_start_date, lease_end_date, monthly_rent, archived, created_at, updated_at
) VALUES (
    'bbbbbbbb-4444-4444-4444-444444444444', 'Syn Davis', 'syn.d@email.com', '5554567890',
    'aaaaaaaa-4444-4444-4444-444444444444',
    '2023-09-01', '2025-08-31', 2200.00, FALSE, NOW(), NOW()
);

-- Tenant 5: Alex Thompson - 777 Cedar Lane Unit 5A (User 2's property)
INSERT INTO tenants (
    id, name, email, phone_number, property_id,
    lease_start_date, lease_end_date, monthly_rent, archived, created_at, updated_at
) VALUES (
    'bbbbbbbb-5555-5555-5555-555555555555', 'Alex Thompson', 'alex.t@email.com', '5555678901',
    'aaaaaaaa-6666-6666-6666-666666666666',
    '2025-01-01', '2026-01-01', 2500.00, FALSE, NOW(), NOW()
);

-- Insert rent collections for Property 1 (123 Main Street) - Tenant: Kia Johnson
-- Nov 2024: Paid in two chunks
INSERT INTO rent_collections (
    id, property_id, tenant_id, expected_amount, paid_amount, payment_date, notes, created_at, updated_at
) VALUES
('cccccccc-1111-1111-1111-111111111111', 'aaaaaaaa-1111-1111-1111-111111111111', 'bbbbbbbb-1111-1111-1111-111111111111', 2000.00, 1200.00, '2024-11-03', 'Partial payment', NOW(), NOW()),
('cccccccc-1111-1111-1111-111111111112', 'aaaaaaaa-1111-1111-1111-111111111111', 'bbbbbbbb-1111-1111-1111-111111111111', 2000.00, 800.00, '2024-11-10', 'Final payment for November rent', NOW(), NOW());

-- Dec 2024: Paid in full, on time
INSERT INTO rent_collections (
    id, property_id, tenant_id, expected_amount, paid_amount, payment_date, notes, created_at, updated_at
) VALUES
('cccccccc-1111-1111-1111-111111111113', 'aaaaaaaa-1111-1111-1111-111111111111', 'bbbbbbbb-1111-1111-1111-111111111111', 2000.00, 2000.00, '2024-12-01', 'Paid in full, on time', NOW(), NOW());

-- Jan 2025: Paid late, with late fee
INSERT INTO rent_collections (
    id, property_id, tenant_id, expected_amount, paid_amount, payment_date, notes, created_at, updated_at
) VALUES
('cccccccc-1111-1111-1111-111111111114', 'aaaaaaaa-1111-1111-1111-111111111111', 'bbbbbbbb-1111-1111-1111-111111111111', 2000.00, 2050.00, '2025-01-12', 'Paid late, $50 late fee included', NOW(), NOW());

-- Feb 2025: Paid in two chunks
INSERT INTO rent_collections (
    id, property_id, tenant_id, expected_amount, paid_amount, payment_date, notes, created_at, updated_at
) VALUES
('cccccccc-1111-1111-1111-111111111115', 'aaaaaaaa-1111-1111-1111-111111111111', 'bbbbbbbb-1111-1111-1111-111111111111', 500.00, 1000.00, '2025-02-01', 'First half paid', NOW(), NOW()),
('cccccccc-1111-1111-1111-111111111116', 'aaaaaaaa-1111-1111-1111-111111111111', 'bbbbbbbb-1111-1111-1111-111111111111', 500.00, 1000.00, '2025-02-14', 'Second half paid, rent complete', NOW(), NOW());

-- Mar 2025: Paid early
INSERT INTO rent_collections (
    id, property_id, tenant_id, expected_amount, paid_amount, payment_date, notes, created_at, updated_at
) VALUES
('cccccccc-1111-1111-1111-111111111117', 'aaaaaaaa-1111-1111-1111-111111111111', 'bbbbbbbb-1111-1111-1111-111111111111', 2000.00, 2000.00, '2025-02-27', 'Paid early before vacation', NOW(), NOW());

-- Apr 2025: Paid in full, on time
INSERT INTO rent_collections (
    id, property_id, tenant_id, expected_amount, paid_amount, payment_date, notes, created_at, updated_at
) VALUES
('cccccccc-1111-1111-1111-111111111118', 'aaaaaaaa-1111-1111-1111-111111111111', 'bbbbbbbb-1111-1111-1111-111111111111', 2000.00, 2000.00, '2025-04-02', 'Regular payment', NOW(), NOW());

-- May 2025: Paid in two chunks, one late
INSERT INTO rent_collections (
    id, property_id, tenant_id, expected_amount, paid_amount, payment_date, notes, created_at, updated_at
) VALUES
('cccccccc-1111-1111-1111-111111111119', 'aaaaaaaa-1111-1111-1111-111111111111', 'bbbbbbbb-1111-1111-1111-111111111111', 2000.00, 1500.00, '2025-05-01', 'Partial payment', NOW(), NOW()),
('cccccccc-1111-1111-1111-11111111111a', 'aaaaaaaa-1111-1111-1111-111111111111', 'bbbbbbbb-1111-1111-1111-111111111111', 2000.00, 500.00, '2025-05-18', 'Final payment for May rent', NOW(), NOW());

-- Jun 2025: Paid in full, on time
INSERT INTO rent_collections (
    id, property_id, tenant_id, expected_amount, paid_amount, payment_date, notes, created_at, updated_at
) VALUES
('cccccccc-1111-1111-1111-11111111111b', 'aaaaaaaa-1111-1111-1111-111111111111', 'bbbbbbbb-1111-1111-1111-111111111111', 2000.00, 2000.00, '2025-06-01', 'Paid in full, on time', NOW(), NOW());

-- Rent collections for Property 6 (777 Cedar Lane) - Tenant: Alex Thompson
-- Jan 2025 through Oct 2025 with rent increases
INSERT INTO rent_collections (
    id, property_id, tenant_id, expected_amount, paid_amount, payment_date, notes, created_at, updated_at
) VALUES
('cccccccc-6666-6666-6666-666666666661', 'aaaaaaaa-6666-6666-6666-666666666666', 'bbbbbbbb-5555-5555-5555-555555555555', 1000.00, 1000.00, '2025-01-01', 'First month rent at $1000', NOW(), NOW()),
('cccccccc-6666-6666-6666-666666666662', 'aaaaaaaa-6666-6666-6666-666666666666', 'bbbbbbbb-5555-5555-5555-555555555555', 1000.00, 1000.00, '2025-02-01', 'Paid on time', NOW(), NOW()),
('cccccccc-6666-6666-6666-666666666663', 'aaaaaaaa-6666-6666-6666-666666666666', 'bbbbbbbb-5555-5555-5555-555555555555', 1000.00, 1000.00, '2025-03-01', 'Paid on time', NOW(), NOW()),
('cccccccc-6666-6666-6666-666666666664', 'aaaaaaaa-6666-6666-6666-666666666666', 'bbbbbbbb-5555-5555-5555-555555555555', 1500.00, 1500.00, '2025-04-01', 'Rent increased to $1500', NOW(), NOW()),
('cccccccc-6666-6666-6666-666666666665', 'aaaaaaaa-6666-6666-6666-666666666666', 'bbbbbbbb-5555-5555-5555-555555555555', 1500.00, 1500.00, '2025-05-01', 'Paid on time', NOW(), NOW()),
('cccccccc-6666-6666-6666-666666666666', 'aaaaaaaa-6666-6666-6666-666666666666', 'bbbbbbbb-5555-5555-5555-555555555555', 1500.00, 1500.00, '2025-06-01', 'Paid on time', NOW(), NOW()),
('cccccccc-6666-6666-6666-666666666667', 'aaaaaaaa-6666-6666-6666-666666666666', 'bbbbbbbb-5555-5555-5555-555555555555', 1500.00, 1500.00, '2025-07-01', 'Paid on time', NOW(), NOW()),
('cccccccc-6666-6666-6666-666666666668', 'aaaaaaaa-6666-6666-6666-666666666666', 'bbbbbbbb-5555-5555-5555-555555555555', 2000.00, 2000.00, '2025-08-01', 'Rent increased to $2000', NOW(), NOW()),
('cccccccc-6666-6666-6666-666666666669', 'aaaaaaaa-6666-6666-6666-666666666666', 'bbbbbbbb-5555-5555-5555-555555555555', 2000.00, 2000.00, '2025-09-01', 'Paid on time', NOW(), NOW()),
('cccccccc-6666-6666-6666-66666666666a', 'aaaaaaaa-6666-6666-6666-666666666666', 'bbbbbbbb-5555-5555-5555-555555555555', 2000.00, 2000.00, '2025-10-01', 'Paid on time', NOW(), NOW());

-- Insert sample expenses for October 2025
INSERT INTO expenses (
    id, property_id, user_id, expense_date, category, amount, description, created_at, updated_at
) VALUES
('dddddddd-1111-1111-1111-111111111111', 'aaaaaaaa-1111-1111-1111-111111111111', '11111111-1111-1111-1111-111111111111', '2025-10-02', 'REPAIRS_MAINTENANCE', 175.00, 'Replaced broken window lock in bedroom', NOW(), NOW()),
('dddddddd-1111-1111-1111-111111111112', 'aaaaaaaa-2222-2222-2222-222222222222', '11111111-1111-1111-1111-111111111111', '2025-10-03', 'CLEANING', 90.00, 'Deep cleaning after tenant move-out', NOW(), NOW()),
('dddddddd-1111-1111-1111-111111111113', 'aaaaaaaa-3333-3333-3333-333333333333', '11111111-1111-1111-1111-111111111111', '2025-10-04', 'UTILITIES', 130.00, 'Monthly water and sewer bill', NOW(), NOW()),
('dddddddd-1111-1111-1111-111111111114', 'aaaaaaaa-4444-4444-4444-444444444444', '11111111-1111-1111-1111-111111111111', '2025-10-05', 'LANDSCAPING', 325.00, 'Fall leaf removal and lawn mowing', NOW(), NOW()),
('dddddddd-1111-1111-1111-111111111115', 'aaaaaaaa-1111-1111-1111-111111111111', '11111111-1111-1111-1111-111111111111', '2025-10-06', 'INSURANCE', 410.00, 'Quarterly property insurance premium', NOW(), NOW()),
('dddddddd-1111-1111-1111-111111111116', 'aaaaaaaa-2222-2222-2222-222222222222', '11111111-1111-1111-1111-111111111111', '2025-10-07', 'HOA_FEES', 519.00, 'Monthly HOA fee', NOW(), NOW()),
('dddddddd-1111-1111-1111-111111111117', 'aaaaaaaa-3333-3333-3333-333333333333', '11111111-1111-1111-1111-111111111111', '2025-10-08', 'LEGAL', 250.00, 'Lease renewal legal review', NOW(), NOW()),
('dddddddd-1111-1111-1111-111111111118', 'aaaaaaaa-4444-4444-4444-444444444444', '11111111-1111-1111-1111-111111111111', '2025-10-09', 'CAPITAL_IMPROVEMENTS', 1800.00, 'Installed new kitchen cabinets', NOW(), NOW()),
('dddddddd-1111-1111-1111-111111111119', 'aaaaaaaa-5555-5555-5555-555555555555', '11111111-1111-1111-1111-111111111111', '2025-10-10', 'OTHER', 120.00, 'Quarterly pest control service', NOW(), NOW()),
('dddddddd-1111-1111-1111-11111111111a', 'aaaaaaaa-1111-1111-1111-111111111111', '11111111-1111-1111-1111-111111111111', '2025-10-11', 'OTHER', 650.00, 'Replaced refrigerator', NOW(), NOW()),
('dddddddd-1111-1111-1111-11111111111b', 'aaaaaaaa-2222-2222-2222-222222222222', '11111111-1111-1111-1111-111111111111', '2025-10-12', 'OTHER', 275.00, 'Fixed leaking shower faucet', NOW(), NOW()),
('dddddddd-1111-1111-1111-11111111111c', 'aaaaaaaa-3333-3333-3333-333333333333', '11111111-1111-1111-1111-111111111111', '2025-10-13', 'OTHER', 320.00, 'Replaced faulty circuit breaker', NOW(), NOW()),
('dddddddd-1111-1111-1111-11111111111d', 'aaaaaaaa-4444-4444-4444-444444444444', '11111111-1111-1111-1111-111111111111', '2025-10-13', 'OTHER', 200.00, 'Installed new door locks', NOW(), NOW()),
('dddddddd-1111-1111-1111-11111111111e', 'aaaaaaaa-5555-5555-5555-555555555555', '11111111-1111-1111-1111-111111111111', '2025-10-13', 'MARKETING', 150.00, 'Online listing fees for tenant search', NOW(), NOW()),
('dddddddd-1111-1111-1111-11111111111f', 'aaaaaaaa-5555-5555-5555-555555555555', '11111111-1111-1111-1111-111111111111', '2025-10-13', 'PROFESSIONAL_SERVICES', 850.00, 'Property inspection and appraisal for refinancing', NOW(), NOW());

-- Insert sample feedback data
INSERT INTO feedback (id, feedback_type, message, current_page, user_id, created_at) VALUES
('eeeeeeee-1111-1111-1111-111111111111', 'BUG_REPORT', 'The login button is not working on the mobile app.', '/login', '11111111-1111-1111-1111-111111111111', NOW()),
('eeeeeeee-1111-1111-1111-111111111112', 'FEATURE_REQUEST', 'It would be great to have a dark mode for the dashboard.', '/dashboard', '11111111-1111-1111-1111-111111111111', NOW()),
('eeeeeeee-1111-1111-1111-111111111113', 'GENERAL_FEEDBACK', 'I love the new design of the property page!', '/properties/1', '22222222-2222-2222-2222-222222222222', NOW()),
('eeeeeeee-1111-1111-1111-111111111114', 'BUG_REPORT', 'I am getting a 404 error when trying to view my profile.', '/profile', '22222222-2222-2222-2222-222222222222', NOW());

-- Insert sample market listings
-- Listings from Redfin for Quincy, MA area
INSERT INTO market_listings (
    id, source, source_listing_id, source_url, source_mls_number,
    sale_type, listing_status, sold_date, list_date, days_on_market,
    address, address1, address2, city, state, zip_code,
    location, latitude, longitude,
    property_type, bedrooms, bathrooms, square_feet, lot_size, year_built,
    price, price_per_sqft, original_list_price, hoa_fee,
    next_open_house_start, next_open_house_end,
    is_favorite, is_interested, raw_data,
    created_at, updated_at, last_scraped_at
) VALUES
-- Listing 1: 23 Myrtle St - Multi-Family
('fe1bdb55-f73e-48f1-859d-25b60d169050', 'REDFIN', '73463500', 'https://www.redfin.com/MA/Quincy/23-Myrtle-St-02171/home/9026242', '73463500',
'MLS Listing', 'Active', NULL, '2025-12-27', 5,
'23 Myrtle St', '23 Myrtle St', NULL, 'Quincy', 'MA', '02171',
'North Quincy', 42.2796206, -71.0347665,
'Multi-Family (2-4 Unit)', 6, 2.0, 2016, 4785, 1890,
1060000.00, 526.00, NULL, NULL,
'2025-12-28 12:00:00', '2025-12-28 14:00:00',
FALSE, FALSE, '{"SALE TYPE": "MLS Listing", "SOLD DATE": null, "PROPERTY TYPE": "Multi-Family (2-4 Unit)", "ADDRESS": "23 Myrtle St", "CITY": "Quincy", "STATE OR PROVINCE": "MA", "ZIP OR POSTAL CODE": "02171", "PRICE": "1060000", "BEDS": "6", "BATHS": "2.0", "LOCATION": "North Quincy", "SQUARE FEET": "2016", "LOT SIZE": "4785", "YEAR BUILT": "1890", "DAYS ON MARKET": "5", "$/SQUARE FEET": "526", "HOA/MONTH": null, "STATUS": "Active", "NEXT OPEN HOUSE START TIME": "December-28-2025 12:00 PM", "NEXT OPEN HOUSE END TIME": "December-28-2025 02:00 PM", "URL (SEE https://www.redfin.com/buy-a-home/comparative-market-analysis FOR INFO ON PRICING)": "https://www.redfin.com/MA/Quincy/23-Myrtle-St-02171/home/9026242", "SOURCE": "MLS PIN", "MLS#": "73463500", "FAVORITE": "N", "INTERESTED": "Y", "LATITUDE": "42.2796206", "LONGITUDE": "-71.0347665"}',
'2025-12-28 13:44:00.814720', '2025-12-28 13:44:00.814721', '2025-12-28 13:44:00.814721'),

-- Listing 2: 133 Commander Shea Blvd #204 - Condo
('a1d26d2a-eb9a-4f3e-9659-c73997a7720b', 'REDFIN', '73459347', 'https://www.redfin.com/MA/Quincy/133-Commander-Shea-Blvd-02171/unit-204/home/9011972', '73459347',
'MLS Listing', 'Active', NULL, '2025-12-27', 24,
'133 Commander Shea Blvd #204', '133 Commander Shea Blvd', '#204', 'Quincy', 'MA', '02171',
'North Quincy', 42.2834026, -71.034222,
'Condo/Co-op', 0, 1.0, 505, NULL, 1985,
245000.00, 485.00, NULL, 493.00,
NULL, NULL,
FALSE, FALSE, '{"SALE TYPE": "MLS Listing", "SOLD DATE": null, "PROPERTY TYPE": "Condo/Co-op", "ADDRESS": "133 Commander Shea Blvd #204", "CITY": "Quincy", "STATE OR PROVINCE": "MA", "ZIP OR POSTAL CODE": "02171", "PRICE": "245000", "BEDS": "0", "BATHS": "1.0", "LOCATION": "North Quincy", "SQUARE FEET": "505", "LOT SIZE": null, "YEAR BUILT": "1985", "DAYS ON MARKET": "24", "$/SQUARE FEET": "485", "HOA/MONTH": "493", "STATUS": "Active", "NEXT OPEN HOUSE START TIME": null, "NEXT OPEN HOUSE END TIME": null, "URL (SEE https://www.redfin.com/buy-a-home/comparative-market-analysis FOR INFO ON PRICING)": "https://www.redfin.com/MA/Quincy/133-Commander-Shea-Blvd-02171/unit-204/home/9011972", "SOURCE": "MLS PIN", "MLS#": "73459347", "FAVORITE": "N", "INTERESTED": "Y", "LATITUDE": "42.2834026", "LONGITUDE": "-71.034222"}',
'2025-12-28 13:44:00.814757', '2025-12-28 13:44:00.814757', '2025-12-28 13:44:00.814757'),

-- Listing 3: 212-A Quincy Shore Dr - Single Family
('06643e6c-5608-4586-b302-21443a8e7e73', 'REDFIN', '73457698', 'https://www.redfin.com/MA/Quincy/212-Quincy-Shore-Dr-02171/home/9009303', '73457698',
'MLS Listing', 'Active', NULL, '2025-12-27', 32,
'212-A Quincy Shore Dr', '212-A Quincy Shore Dr', NULL, 'Quincy', 'MA', '02171',
'North Quincy', 42.2863071, -71.028348,
'Single Family Residential', 2, 1.0, 864, 1834, 1940,
499900.00, 579.00, NULL, NULL,
NULL, NULL,
FALSE, FALSE, '{"SALE TYPE": "MLS Listing", "SOLD DATE": null, "PROPERTY TYPE": "Single Family Residential", "ADDRESS": "212-A Quincy Shore Dr", "CITY": "Quincy", "STATE OR PROVINCE": "MA", "ZIP OR POSTAL CODE": "02171", "PRICE": "499900", "BEDS": "2", "BATHS": "1.0", "LOCATION": "North Quincy", "SQUARE FEET": "864", "LOT SIZE": "1834", "YEAR BUILT": "1940", "DAYS ON MARKET": "32", "$/SQUARE FEET": "579", "HOA/MONTH": null, "STATUS": "Active", "NEXT OPEN HOUSE START TIME": null, "NEXT OPEN HOUSE END TIME": null, "URL (SEE https://www.redfin.com/buy-a-home/comparative-market-analysis FOR INFO ON PRICING)": "https://www.redfin.com/MA/Quincy/212-Quincy-Shore-Dr-02171/home/9009303", "SOURCE": "MLS PIN", "MLS#": "73457698", "FAVORITE": "N", "INTERESTED": "Y", "LATITUDE": "42.2863071", "LONGITUDE": "-71.028348"}',
'2025-12-28 13:44:00.814781', '2025-12-28 13:44:00.814781', '2025-12-28 13:44:00.814781'),

-- Listing 4: 138 Quincy Shore Dr #170 - Townhouse
('a995fa97-9e34-4a86-91e6-e8dec79735f0', 'REDFIN', '73454539', 'https://www.redfin.com/MA/Quincy/138-Quincy-Shore-Dr-02171/unit-170/home/9010050', '73454539',
'MLS Listing', 'Active', NULL, '2025-12-27', 44,
'138 Quincy Shore Dr #170', '138 Quincy Shore Dr', '#170', 'Quincy', 'MA', '02171',
'North Quincy', 42.2851821, -71.0311585,
'Townhouse', 2, 2.5, 1460, NULL, 1986,
599999.00, 411.00, NULL, 482.00,
NULL, NULL,
FALSE, FALSE, '{"SALE TYPE": "MLS Listing", "SOLD DATE": null, "PROPERTY TYPE": "Townhouse", "ADDRESS": "138 Quincy Shore Dr #170", "CITY": "Quincy", "STATE OR PROVINCE": "MA", "ZIP OR POSTAL CODE": "02171", "PRICE": "599999", "BEDS": "2", "BATHS": "2.5", "LOCATION": "North Quincy", "SQUARE FEET": "1460", "LOT SIZE": null, "YEAR BUILT": "1986", "DAYS ON MARKET": "44", "$/SQUARE FEET": "411", "HOA/MONTH": "482", "STATUS": "Active", "NEXT OPEN HOUSE START TIME": null, "NEXT OPEN HOUSE END TIME": null, "URL (SEE https://www.redfin.com/buy-a-home/comparative-market-analysis FOR INFO ON PRICING)": "https://www.redfin.com/MA/Quincy/138-Quincy-Shore-Dr-02171/unit-170/home/9010050", "SOURCE": "MLS PIN", "MLS#": "73454539", "FAVORITE": "N", "INTERESTED": "Y", "LATITUDE": "42.2851821", "LONGITUDE": "-71.0311585"}',
'2025-12-28 13:44:00.814805', '2025-12-28 13:44:00.814806', '2025-12-28 13:44:00.814806'),

-- Listing 5: 297 Billings St - Multi-Family
('2cb061d0-1b49-4447-b029-cc1663c025a4', 'REDFIN', '73454105', 'https://www.redfin.com/MA/Quincy/297-Billings-St-02171/home/9007457', '73454105',
'MLS Listing', 'Active', NULL, '2025-12-27', 45,
'297 Billings St', '297 Billings St', NULL, 'Quincy', 'MA', '02171',
'Quincy', 42.2834133, -71.0208823,
'Multi-Family (2-4 Unit)', 4, 2.0, 2056, 4240, 1938,
949000.00, 462.00, NULL, NULL,
NULL, NULL,
FALSE, FALSE, '{"SALE TYPE": "MLS Listing", "SOLD DATE": null, "PROPERTY TYPE": "Multi-Family (2-4 Unit)", "ADDRESS": "297 Billings St", "CITY": "Quincy", "STATE OR PROVINCE": "MA", "ZIP OR POSTAL CODE": "02171", "PRICE": "949000", "BEDS": "4", "BATHS": "2.0", "LOCATION": "Quincy", "SQUARE FEET": "2056", "LOT SIZE": "4240", "YEAR BUILT": "1938", "DAYS ON MARKET": "45", "$/SQUARE FEET": "462", "HOA/MONTH": null, "STATUS": "Active", "NEXT OPEN HOUSE START TIME": null, "NEXT OPEN HOUSE END TIME": null, "URL (SEE https://www.redfin.com/buy-a-home/comparative-market-analysis FOR INFO ON PRICING)": "https://www.redfin.com/MA/Quincy/297-Billings-St-02171/home/9007457", "SOURCE": "MLS PIN", "MLS#": "73454105", "FAVORITE": "N", "INTERESTED": "Y", "LATITUDE": "42.2834133", "LONGITUDE": "-71.0208823"}',
'2025-12-28 13:44:00.814826', '2025-12-28 13:44:00.814826', '2025-12-28 13:44:00.814826'),

-- Listing 6: 17 Holmes St #4 - Condo
('a8e3ac0a-a3ab-42fd-bbb5-31d026b33361', 'REDFIN', '73451410', 'https://www.redfin.com/MA/Quincy/17-Holmes-St-02171/unit-4/home/198870359', '73451410',
'MLS Listing', 'Active', NULL, '2025-12-27', 52,
'17 Holmes St #4', '17 Holmes St', '#4', 'Quincy', 'MA', '02171',
'North Quincy', 42.2744986, -71.0282905,
'Condo/Co-op', 2, 2.0, 1457, NULL, 2025,
824900.00, 566.00, NULL, 375.00,
NULL, NULL,
FALSE, FALSE, '{"SALE TYPE": "MLS Listing", "SOLD DATE": null, "PROPERTY TYPE": "Condo/Co-op", "ADDRESS": "17 Holmes St #4", "CITY": "Quincy", "STATE OR PROVINCE": "MA", "ZIP OR POSTAL CODE": "02171", "PRICE": "824900", "BEDS": "2", "BATHS": "2.0", "LOCATION": "North Quincy", "SQUARE FEET": "1457", "LOT SIZE": null, "YEAR BUILT": "2025", "DAYS ON MARKET": "52", "$/SQUARE FEET": "566", "HOA/MONTH": "375", "STATUS": "Active", "NEXT OPEN HOUSE START TIME": null, "NEXT OPEN HOUSE END TIME": null, "URL (SEE https://www.redfin.com/buy-a-home/comparative-market-analysis FOR INFO ON PRICING)": "https://www.redfin.com/MA/Quincy/17-Holmes-St-02171/unit-4/home/198870359", "SOURCE": "MLS PIN", "MLS#": "73451410", "FAVORITE": "N", "INTERESTED": "Y", "LATITUDE": "42.2744986", "LONGITUDE": "-71.0282905"}',
'2025-12-28 13:44:00.814845', '2025-12-28 13:44:00.814845', '2025-12-28 13:44:00.814845'),

-- Listing 7: 19 Harbourside Rd #19 - Townhouse
('4f234217-56b9-41a7-b1d5-88e459fd6d94', 'REDFIN', '73449131', 'https://www.redfin.com/MA/Quincy/19-Harbourside-Rd-02171/unit-19/home/113246146', '73449131',
'MLS Listing', 'Active', NULL, '2025-12-27', 59,
'19 Harbourside Rd #19', '19 Harbourside Rd', '#19', 'Quincy', 'MA', '02171',
'Marina Bay', 42.296811, -71.0252838,
'Townhouse', 2, 2.5, 1900, NULL, 1984,
1100000.00, 579.00, NULL, 1093.00,
NULL, NULL,
FALSE, FALSE, '{"SALE TYPE": "MLS Listing", "SOLD DATE": null, "PROPERTY TYPE": "Townhouse", "ADDRESS": "19 Harbourside Rd #19", "CITY": "Quincy", "STATE OR PROVINCE": "MA", "ZIP OR POSTAL CODE": "02171", "PRICE": "1100000", "BEDS": "2", "BATHS": "2.5", "LOCATION": "Marina Bay", "SQUARE FEET": "1900", "LOT SIZE": null, "YEAR BUILT": "1984", "DAYS ON MARKET": "59", "$/SQUARE FEET": "579", "HOA/MONTH": "1093", "STATUS": "Active", "NEXT OPEN HOUSE START TIME": null, "NEXT OPEN HOUSE END TIME": null, "URL (SEE https://www.redfin.com/buy-a-home/comparative-market-analysis FOR INFO ON PRICING)": "https://www.redfin.com/MA/Quincy/19-Harbourside-Rd-02171/unit-19/home/113246146", "SOURCE": "MLS PIN", "MLS#": "73449131", "FAVORITE": "N", "INTERESTED": "Y", "LATITUDE": "42.296811", "LONGITUDE": "-71.0252838"}',
'2025-12-28 13:44:00.814867', '2025-12-28 13:44:00.814868', '2025-12-28 13:44:00.814868'),

-- Listing 8: 60 Newbury St #10 - Condo
('ba419027-f69f-4a92-8da4-b6e6bd601074', 'REDFIN', '73444853', 'https://www.redfin.com/MA/Quincy/60-Newbury-St-02171/unit-10/home/180012308', '73444853',
'MLS Listing', 'Active', NULL, '2025-12-27', 72,
'60 Newbury St #10', '60 Newbury St', '#10', 'Quincy', 'MA', '02171',
'Quincy', 42.28025, -71.0389355,
'Condo/Co-op', 2, 2.0, 1362, NULL, 2021,
989000.00, 726.00, NULL, 455.00,
NULL, NULL,
FALSE, FALSE, '{"SALE TYPE": "MLS Listing", "SOLD DATE": null, "PROPERTY TYPE": "Condo/Co-op", "ADDRESS": "60 Newbury St #10", "CITY": "Quincy", "STATE OR PROVINCE": "MA", "ZIP OR POSTAL CODE": "02171", "PRICE": "989000", "BEDS": "2", "BATHS": "2.0", "LOCATION": "Quincy", "SQUARE FEET": "1362", "LOT SIZE": null, "YEAR BUILT": "2021", "DAYS ON MARKET": "72", "$/SQUARE FEET": "726", "HOA/MONTH": "455", "STATUS": "Active", "NEXT OPEN HOUSE START TIME": null, "NEXT OPEN HOUSE END TIME": null, "URL (SEE https://www.redfin.com/buy-a-home/comparative-market-analysis FOR INFO ON PRICING)": "https://www.redfin.com/MA/Quincy/60-Newbury-St-02171/unit-10/home/180012308", "SOURCE": "MLS PIN", "MLS#": "73444853", "FAVORITE": "N", "INTERESTED": "Y", "LATITUDE": "42.28025", "LONGITUDE": "-71.0389355"}',
'2025-12-28 13:44:00.814890', '2025-12-28 13:44:00.814890', '2025-12-28 13:44:00.814890'),

-- Listing 9: 63 Crabtree Rd - Single Family
('504414f1-5539-4401-88b3-e65c30efdc65', 'REDFIN', '73443062', 'https://www.redfin.com/MA/Quincy/63-Crabtree-Rd-02171/home/9014863', '73443062',
'MLS Listing', 'Active', NULL, '2025-12-27', 74,
'63 Crabtree Rd', '63 Crabtree Rd', NULL, 'Quincy', 'MA', '02171',
'Squantum', 42.2919273, -71.0109141,
'Single Family Residential', 4, 4.5, 2268, 23027, 1910,
2250000.00, 992.00, NULL, NULL,
NULL, NULL,
FALSE, FALSE, '{"SALE TYPE": "MLS Listing", "SOLD DATE": null, "PROPERTY TYPE": "Single Family Residential", "ADDRESS": "63 Crabtree Rd", "CITY": "Quincy", "STATE OR PROVINCE": "MA", "ZIP OR POSTAL CODE": "02171", "PRICE": "2250000", "BEDS": "4", "BATHS": "4.5", "LOCATION": "Squantum", "SQUARE FEET": "2268", "LOT SIZE": "23027", "YEAR BUILT": "1910", "DAYS ON MARKET": "74", "$/SQUARE FEET": "992", "HOA/MONTH": null, "STATUS": "Active", "NEXT OPEN HOUSE START TIME": null, "NEXT OPEN HOUSE END TIME": null, "URL (SEE https://www.redfin.com/buy-a-home/comparative-market-analysis FOR INFO ON PRICING)": "https://www.redfin.com/MA/Quincy/63-Crabtree-Rd-02171/home/9014863", "SOURCE": "MLS PIN", "MLS#": "73443062", "FAVORITE": "N", "INTERESTED": "Y", "LATITUDE": "42.2919273", "LONGITUDE": "-71.0109141"}',
'2025-12-28 13:44:00.814908', '2025-12-28 13:44:00.814908', '2025-12-28 13:44:00.814908'),

-- Listing 10: 2001 Marina Dr #211 - Condo
('861445c0-0de0-4819-9df2-8aa4fc366c87', 'REDFIN', '73442423', 'https://www.redfin.com/MA/Quincy/2001-Marina-Dr-02171/unit-211/home/9013015', '73442423',
'MLS Listing', 'Active', NULL, '2025-12-27', 78,
'2001 Marina Dr #211', '2001 Marina Dr', '#211', 'Quincy', 'MA', '02171',
'Marina Bay', 42.2984064, -71.028094,
'Condo/Co-op', 2, 2.0, 1976, NULL, 1987,
1079000.00, 546.00, NULL, 1202.00,
NULL, NULL,
FALSE, FALSE, '{"SALE TYPE": "MLS Listing", "SOLD DATE": null, "PROPERTY TYPE": "Condo/Co-op", "ADDRESS": "2001 Marina Dr #211", "CITY": "Quincy", "STATE OR PROVINCE": "MA", "ZIP OR POSTAL CODE": "02171", "PRICE": "1079000", "BEDS": "2", "BATHS": "2.0", "LOCATION": "Marina Bay", "SQUARE FEET": "1976", "LOT SIZE": null, "YEAR BUILT": "1987", "DAYS ON MARKET": "78", "$/SQUARE FEET": "546", "HOA/MONTH": "1202", "STATUS": "Active", "NEXT OPEN HOUSE START TIME": null, "NEXT OPEN HOUSE END TIME": null, "URL (SEE https://www.redfin.com/buy-a-home/comparative-market-analysis FOR INFO ON PRICING)": "https://www.redfin.com/MA/Quincy/2001-Marina-Dr-02171/unit-211/home/9013015", "SOURCE": "MLS PIN", "MLS#": "73442423", "FAVORITE": "N", "INTERESTED": "Y", "LATITUDE": "42.2984064", "LONGITUDE": "-71.028094"}',
'2025-12-28 13:44:00.814925', '2025-12-28 13:44:00.814925', '2025-12-28 13:44:00.814925'),

-- Listing 11: 90 Quincy Shore Dr #501 - Condo
('c93885e1-5873-44fb-b549-038a88ffc15b', 'REDFIN', '73435989', 'https://www.redfin.com/MA/Quincy/90-Quincy-Shore-Dr-02171/unit-501/home/9011436', '73435989',
'MLS Listing', 'Active', NULL, '2025-12-27', 89,
'90 Quincy Shore Dr #501', '90 Quincy Shore Dr', '#501', 'Quincy', 'MA', '02171',
'Quincy', 42.2837744, -71.0329228,
'Condo/Co-op', 2, 2.0, 1081, NULL, 1987,
429000.00, 397.00, NULL, 984.00,
NULL, NULL,
FALSE, FALSE, '{"SALE TYPE": "MLS Listing", "SOLD DATE": null, "PROPERTY TYPE": "Condo/Co-op", "ADDRESS": "90 Quincy Shore Dr #501", "CITY": "Quincy", "STATE OR PROVINCE": "MA", "ZIP OR POSTAL CODE": "02171", "PRICE": "429000", "BEDS": "2", "BATHS": "2.0", "LOCATION": "Quincy", "SQUARE FEET": "1081", "LOT SIZE": null, "YEAR BUILT": "1987", "DAYS ON MARKET": "89", "$/SQUARE FEET": "397", "HOA/MONTH": "984", "STATUS": "Active", "NEXT OPEN HOUSE START TIME": null, "NEXT OPEN HOUSE END TIME": null, "URL (SEE https://www.redfin.com/buy-a-home/comparative-market-analysis FOR INFO ON PRICING)": "https://www.redfin.com/MA/Quincy/90-Quincy-Shore-Dr-02171/unit-501/home/9011436", "SOURCE": "MLS PIN", "MLS#": "73435989", "FAVORITE": "N", "INTERESTED": "Y", "LATITUDE": "42.2837744", "LONGITUDE": "-71.0329228"}',
'2025-12-28 13:44:00.814941', '2025-12-28 13:44:00.814941', '2025-12-28 13:44:00.814941'),

-- Listing 12: 90 Quincy Shore Dr #701 - Condo
('29bea9de-79ee-4abd-a139-45bc1b88b7d7', 'REDFIN', '73435112', 'https://www.redfin.com/MA/Quincy/90-Quincy-Shore-Dr-02171/unit-701/home/9011664', '73435112',
'MLS Listing', 'Active', NULL, '2025-12-27', 94,
'90 Quincy Shore Dr #701', '90 Quincy Shore Dr', '#701', 'Quincy', 'MA', '02171',
'Quincy', 42.2837744, -71.0329228,
'Condo/Co-op', 2, 2.0, 1076, NULL, 1987,
429900.00, 400.00, NULL, 1092.00,
NULL, NULL,
FALSE, FALSE, '{"SALE TYPE": "MLS Listing", "SOLD DATE": null, "PROPERTY TYPE": "Condo/Co-op", "ADDRESS": "90 Quincy Shore Dr #701", "CITY": "Quincy", "STATE OR PROVINCE": "MA", "ZIP OR POSTAL CODE": "02171", "PRICE": "429900", "BEDS": "2", "BATHS": "2.0", "LOCATION": "Quincy", "SQUARE FEET": "1076", "LOT SIZE": null, "YEAR BUILT": "1987", "DAYS ON MARKET": "94", "$/SQUARE FEET": "400", "HOA/MONTH": "1092", "STATUS": "Active", "NEXT OPEN HOUSE START TIME": null, "NEXT OPEN HOUSE END TIME": null, "URL (SEE https://www.redfin.com/buy-a-home/comparative-market-analysis FOR INFO ON PRICING)": "https://www.redfin.com/MA/Quincy/90-Quincy-Shore-Dr-02171/unit-701/home/9011664", "SOURCE": "MLS PIN", "MLS#": "73435112", "FAVORITE": "N", "INTERESTED": "Y", "LATITUDE": "42.2837744", "LONGITUDE": "-71.0329228"}',
'2025-12-28 13:44:00.814956', '2025-12-28 13:44:00.814956', '2025-12-28 13:44:00.814956'),

-- Listing 13: 1001 Marina Dr #801 - Condo
('ba0a87f2-6365-454b-9ef9-02235256fc48', 'REDFIN', '73408953', 'https://www.redfin.com/MA/Quincy/1001-Marina-Dr-02171/unit-801/home/9027039', '73408953',
'MLS Listing', 'Active', NULL, '2025-12-27', 156,
'1001 Marina Dr #801', '1001 Marina Dr', '#801', 'Quincy', 'MA', '02171',
'Marina Bay', 42.2985728, -71.0265728,
'Condo/Co-op', 2, 2.5, 2363, NULL, 1988,
1599500.00, 677.00, NULL, 1853.00,
NULL, NULL,
FALSE, FALSE, '{"SALE TYPE": "MLS Listing", "SOLD DATE": null, "PROPERTY TYPE": "Condo/Co-op", "ADDRESS": "1001 Marina Dr #801", "CITY": "Quincy", "STATE OR PROVINCE": "MA", "ZIP OR POSTAL CODE": "02171", "PRICE": "1599500", "BEDS": "2", "BATHS": "2.5", "LOCATION": "Marina Bay", "SQUARE FEET": "2363", "LOT SIZE": null, "YEAR BUILT": "1988", "DAYS ON MARKET": "156", "$/SQUARE FEET": "677", "HOA/MONTH": "1853", "STATUS": "Active", "NEXT OPEN HOUSE START TIME": null, "NEXT OPEN HOUSE END TIME": null, "URL (SEE https://www.redfin.com/buy-a-home/comparative-market-analysis FOR INFO ON PRICING)": "https://www.redfin.com/MA/Quincy/1001-Marina-Dr-02171/unit-801/home/9027039", "SOURCE": "MLS PIN", "MLS#": "73408953", "FAVORITE": "N", "INTERESTED": "Y", "LATITUDE": "42.2985728", "LONGITUDE": "-71.0265728"}',
'2025-12-28 13:44:00.814971', '2025-12-28 13:44:00.814972', '2025-12-28 13:44:00.814972'),

-- Listing 14: 130 Parke Ave (lot 2) - Vacant Land
('5d1e15fc-171e-45f6-a2a8-449b32964776', 'REDFIN', '73405680', 'https://www.redfin.com/MA/Quincy/130-Parke-Ave-02171/home/113766722', '73405680',
'MLS Listing', 'Active', NULL, '2025-12-27', 164,
'130 Parke Ave (lot 2)', '130 Parke Ave', '(lot 2)', 'Quincy', 'MA', '02171',
'Squantum', 42.2986775, -71.010473,
'Vacant Land', NULL, NULL, NULL, 9600, NULL,
695000.00, NULL, NULL, NULL,
NULL, NULL,
FALSE, FALSE, '{"SALE TYPE": "MLS Listing", "SOLD DATE": null, "PROPERTY TYPE": "Vacant Land", "ADDRESS": "130 Parke Ave (lot 2)", "CITY": "Quincy", "STATE OR PROVINCE": "MA", "ZIP OR POSTAL CODE": "02171", "PRICE": "695000", "BEDS": null, "BATHS": null, "LOCATION": "Squantum", "SQUARE FEET": null, "LOT SIZE": "9600", "YEAR BUILT": null, "DAYS ON MARKET": "164", "$/SQUARE FEET": null, "HOA/MONTH": null, "STATUS": "Active", "NEXT OPEN HOUSE START TIME": null, "NEXT OPEN HOUSE END TIME": null, "URL (SEE https://www.redfin.com/buy-a-home/comparative-market-analysis FOR INFO ON PRICING)": "https://www.redfin.com/MA/Quincy/130-Parke-Ave-02171/home/113766722", "SOURCE": "MLS PIN", "MLS#": "73405680", "FAVORITE": "N", "INTERESTED": "Y", "LATITUDE": "42.2986775", "LONGITUDE": "-71.010473"}',
'2025-12-28 13:44:00.814986', '2025-12-28 13:44:00.814987', '2025-12-28 13:44:00.814987'),

-- Listing 15: 140 Parke Ave (lot 1) - Vacant Land
('cfb156f1-018e-49a4-9190-004e5766baf9', 'REDFIN', '73405679', 'https://www.redfin.com/MA/Quincy/140-Parke-Ave-02171/home/113766720', '73405679',
'MLS Listing', 'Active', NULL, '2025-12-27', 164,
'140 Parke Ave (lot 1)', '140 Parke Ave', '(lot 1)', 'Quincy', 'MA', '02171',
'Squantum', 42.2984, -71.010308,
'Vacant Land', NULL, NULL, NULL, 9600, NULL,
680000.00, NULL, NULL, NULL,
NULL, NULL,
FALSE, FALSE, '{"SALE TYPE": "MLS Listing", "SOLD DATE": null, "PROPERTY TYPE": "Vacant Land", "ADDRESS": "140 Parke Ave (lot 1)", "CITY": "Quincy", "STATE OR PROVINCE": "MA", "ZIP OR POSTAL CODE": "02171", "PRICE": "680000", "BEDS": null, "BATHS": null, "LOCATION": "Squantum", "SQUARE FEET": null, "LOT SIZE": "9600", "YEAR BUILT": null, "DAYS ON MARKET": "164", "$/SQUARE FEET": null, "HOA/MONTH": null, "STATUS": "Active", "NEXT OPEN HOUSE START TIME": null, "NEXT OPEN HOUSE END TIME": null, "URL (SEE https://www.redfin.com/buy-a-home/comparative-market-analysis FOR INFO ON PRICING)": "https://www.redfin.com/MA/Quincy/140-Parke-Ave-02171/home/113766720", "SOURCE": "MLS PIN", "MLS#": "73405679", "FAVORITE": "N", "INTERESTED": "Y", "LATITUDE": "42.2984", "LONGITUDE": "-71.010308"}',
'2025-12-28 13:44:00.815001', '2025-12-28 13:44:00.815001', '2025-12-28 13:44:00.815001'),

-- Listing 16: 2001 Marina Dr Unit 506W - Condo
('c6fa8870-53e5-416d-8075-ee68dda65741', 'REDFIN', '73386925', 'https://www.redfin.com/MA/Quincy/2001-Marina-Dr-02171/unit-506W/home/137471064', '73386925',
'MLS Listing', 'Active', NULL, '2025-12-27', 204,
'2001 Marina Dr Unit 506W', '2001 Marina Dr', 'Unit 506W', 'Quincy', 'MA', '02171',
'Quincy', 42.2984064, -71.028094,
'Condo/Co-op', 2, 2.0, 1452, NULL, 1987,
929900.00, 640.00, NULL, 989.00,
NULL, NULL,
FALSE, FALSE, '{"SALE TYPE": "MLS Listing", "SOLD DATE": null, "PROPERTY TYPE": "Condo/Co-op", "ADDRESS": "2001 Marina Dr Unit 506W", "CITY": "Quincy", "STATE OR PROVINCE": "MA", "ZIP OR POSTAL CODE": "02171", "PRICE": "929900", "BEDS": "2", "BATHS": "2.0", "LOCATION": "Quincy", "SQUARE FEET": "1452", "LOT SIZE": null, "YEAR BUILT": "1987", "DAYS ON MARKET": "204", "$/SQUARE FEET": "640", "HOA/MONTH": "989", "STATUS": "Active", "NEXT OPEN HOUSE START TIME": null, "NEXT OPEN HOUSE END TIME": null, "URL (SEE https://www.redfin.com/buy-a-home/comparative-market-analysis FOR INFO ON PRICING)": "https://www.redfin.com/MA/Quincy/2001-Marina-Dr-02171/unit-506W/home/137471064", "SOURCE": "MLS PIN", "MLS#": "73386925", "FAVORITE": "N", "INTERESTED": "Y", "LATITUDE": "42.2984064", "LONGITUDE": "-71.028094"}',
'2025-12-28 13:44:00.815016', '2025-12-28 13:44:00.815017', '2025-12-28 13:44:00.815017'),

-- Listing 17: 133 Commander Shea Blvd #315 - Condo
('272e1b72-a48a-4789-9b7c-251c57903eff', 'REDFIN', '73376616', 'https://www.redfin.com/MA/Quincy/133-Commander-Shea-Blvd-02171/unit-315/home/9012172', '73376616',
'MLS Listing', 'Active', NULL, '2025-12-27', 225,
'133 Commander Shea Blvd #315', '133 Commander Shea Blvd', '#315', 'Quincy', 'MA', '02171',
'North Quincy', 42.2834026, -71.034222,
'Condo/Co-op', 0, 1.0, 510, NULL, 1985,
239000.00, 469.00, NULL, 490.00,
NULL, NULL,
FALSE, FALSE, '{"SALE TYPE": "MLS Listing", "SOLD DATE": null, "PROPERTY TYPE": "Condo/Co-op", "ADDRESS": "133 Commander Shea Blvd #315", "CITY": "Quincy", "STATE OR PROVINCE": "MA", "ZIP OR POSTAL CODE": "02171", "PRICE": "239000", "BEDS": "0", "BATHS": "1.0", "LOCATION": "North Quincy", "SQUARE FEET": "510", "LOT SIZE": null, "YEAR BUILT": "1985", "DAYS ON MARKET": "225", "$/SQUARE FEET": "469", "HOA/MONTH": "490", "STATUS": "Active", "NEXT OPEN HOUSE START TIME": null, "NEXT OPEN HOUSE END TIME": null, "URL (SEE https://www.redfin.com/buy-a-home/comparative-market-analysis FOR INFO ON PRICING)": "https://www.redfin.com/MA/Quincy/133-Commander-Shea-Blvd-02171/unit-315/home/9012172", "SOURCE": "MLS PIN", "MLS#": "73376616", "FAVORITE": "N", "INTERESTED": "Y", "LATITUDE": "42.2834026", "LONGITUDE": "-71.034222"}',
'2025-12-28 13:44:00.815033', '2025-12-28 13:44:00.815034', '2025-12-28 13:44:00.815034'),

-- Listing 18: 153 Bayside Rd - Single Family
('0905c56b-5e8f-432a-b627-d393d0c576d5', 'REDFIN', '73221793', 'https://www.redfin.com/MA/Quincy/153-Bayside-Rd-02171/home/9019045', '73221793',
'MLS Listing', 'Active', NULL, '2025-12-27', 627,
'153 Bayside Rd', '153 Bayside Rd', NULL, 'Quincy', 'MA', '02171',
'Marina Bay', 42.2978403, -71.006429,
'Single Family Residential', 3, 4.0, 2525, 5480, 2019,
3799000.00, 1505.00, NULL, NULL,
NULL, NULL,
FALSE, FALSE, '{"SALE TYPE": "MLS Listing", "SOLD DATE": null, "PROPERTY TYPE": "Single Family Residential", "ADDRESS": "153 Bayside Rd", "CITY": "Quincy", "STATE OR PROVINCE": "MA", "ZIP OR POSTAL CODE": "02171", "PRICE": "3799000", "BEDS": "3", "BATHS": "4.0", "LOCATION": "Marina Bay", "SQUARE FEET": "2525", "LOT SIZE": "5480", "YEAR BUILT": "2019", "DAYS ON MARKET": "627", "$/SQUARE FEET": "1505", "HOA/MONTH": null, "STATUS": "Active", "NEXT OPEN HOUSE START TIME": null, "NEXT OPEN HOUSE END TIME": null, "URL (SEE https://www.redfin.com/buy-a-home/comparative-market-analysis FOR INFO ON PRICING)": "https://www.redfin.com/MA/Quincy/153-Bayside-Rd-02171/home/9019045", "SOURCE": "MLS PIN", "MLS#": "73221793", "FAVORITE": "N", "INTERESTED": "Y", "LATITUDE": "42.2978403", "LONGITUDE": "-71.006429"}',
'2025-12-28 13:44:00.815049', '2025-12-28 13:44:00.815049', '2025-12-28 13:44:00.815049');


