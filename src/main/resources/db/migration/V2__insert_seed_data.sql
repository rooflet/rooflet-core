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
    raw_data,
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
'{"SALE TYPE": "MLS Listing", "SOLD DATE": null, "PROPERTY TYPE": "Multi-Family (2-4 Unit)", "ADDRESS": "23 Myrtle St", "CITY": "Quincy", "STATE OR PROVINCE": "MA", "ZIP OR POSTAL CODE": "02171", "PRICE": "1060000", "BEDS": "6", "BATHS": "2.0", "LOCATION": "North Quincy", "SQUARE FEET": "2016", "LOT SIZE": "4785", "YEAR BUILT": "1890", "DAYS ON MARKET": "5", "$/SQUARE FEET": "526", "HOA/MONTH": null, "STATUS": "Active", "NEXT OPEN HOUSE START TIME": "December-28-2025 12:00 PM", "NEXT OPEN HOUSE END TIME": "December-28-2025 02:00 PM", "URL (SEE https://www.redfin.com/buy-a-home/comparative-market-analysis FOR INFO ON PRICING)": "https://www.redfin.com/MA/Quincy/23-Myrtle-St-02171/home/9026242", "SOURCE": "MLS PIN", "MLS#": "73463500", "FAVORITE": "N", "INTERESTED": "Y", "LATITUDE": "42.2796206", "LONGITUDE": "-71.0347665"}',
'2025-12-28 13:44:00.814720', '2025-12-28 13:44:00.814721', '2025-12-28 13:44:00.814721'),

-- Listing 2: 133 Commander Shea Blvd #204 - Condo
('a1d26d2a-eb9a-4f3e-9659-c73997a7720b', 'REDFIN', '73459347', 'https://www.redfin.com/MA/Quincy/133-Commander-Shea-Blvd-02171/unit-204/home/9011972', '73459347',
'MLS Listing', 'Active', NULL, '2025-12-27', 24,
'133 Commander Shea Blvd #204', '133 Commander Shea Blvd', '#204', 'Quincy', 'MA', '02171',
'North Quincy', 42.2834026, -71.034222,
'Condo/Co-op', 0, 1.0, 505, NULL, 1985,
245000.00, 485.00, NULL, 493.00,
NULL, NULL,
'{"SALE TYPE": "MLS Listing", "SOLD DATE": null, "PROPERTY TYPE": "Condo/Co-op", "ADDRESS": "133 Commander Shea Blvd #204", "CITY": "Quincy", "STATE OR PROVINCE": "MA", "ZIP OR POSTAL CODE": "02171", "PRICE": "245000", "BEDS": "0", "BATHS": "1.0", "LOCATION": "North Quincy", "SQUARE FEET": "505", "LOT SIZE": null, "YEAR BUILT": "1985", "DAYS ON MARKET": "24", "$/SQUARE FEET": "485", "HOA/MONTH": "493", "STATUS": "Active", "NEXT OPEN HOUSE START TIME": null, "NEXT OPEN HOUSE END TIME": null, "URL (SEE https://www.redfin.com/buy-a-home/comparative-market-analysis FOR INFO ON PRICING)": "https://www.redfin.com/MA/Quincy/133-Commander-Shea-Blvd-02171/unit-204/home/9011972", "SOURCE": "MLS PIN", "MLS#": "73459347", "FAVORITE": "N", "INTERESTED": "Y", "LATITUDE": "42.2834026", "LONGITUDE": "-71.034222"}',
'2025-12-28 13:44:00.814757', '2025-12-28 13:44:00.814757', '2025-12-28 13:44:00.814757'),

-- Listing 3: 212-A Quincy Shore Dr - Single Family
('06643e6c-5608-4586-b302-21443a8e7e73', 'REDFIN', '73457698', 'https://www.redfin.com/MA/Quincy/212-Quincy-Shore-Dr-02171/home/9009303', '73457698',
'MLS Listing', 'Active', NULL, '2025-12-27', 32,
'212-A Quincy Shore Dr', '212-A Quincy Shore Dr', NULL, 'Quincy', 'MA', '02171',
'North Quincy', 42.2863071, -71.028348,
'Single Family Residential', 2, 1.0, 864, 1834, 1940,
499900.00, 579.00, NULL, NULL,
NULL, NULL,
'{"SALE TYPE": "MLS Listing", "SOLD DATE": null, "PROPERTY TYPE": "Single Family Residential", "ADDRESS": "212-A Quincy Shore Dr", "CITY": "Quincy", "STATE OR PROVINCE": "MA", "ZIP OR POSTAL CODE": "02171", "PRICE": "499900", "BEDS": "2", "BATHS": "1.0", "LOCATION": "North Quincy", "SQUARE FEET": "864", "LOT SIZE": "1834", "YEAR BUILT": "1940", "DAYS ON MARKET": "32", "$/SQUARE FEET": "579", "HOA/MONTH": null, "STATUS": "Active", "NEXT OPEN HOUSE START TIME": null, "NEXT OPEN HOUSE END TIME": null, "URL (SEE https://www.redfin.com/buy-a-home/comparative-market-analysis FOR INFO ON PRICING)": "https://www.redfin.com/MA/Quincy/212-Quincy-Shore-Dr-02171/home/9009303", "SOURCE": "MLS PIN", "MLS#": "73457698", "FAVORITE": "N", "INTERESTED": "Y", "LATITUDE": "42.2863071", "LONGITUDE": "-71.028348"}',
'2025-12-28 13:44:00.814781', '2025-12-28 13:44:00.814781', '2025-12-28 13:44:00.814781'),

-- Listing 4: 138 Quincy Shore Dr #170 - Townhouse
('a995fa97-9e34-4a86-91e6-e8dec79735f0', 'REDFIN', '73454539', 'https://www.redfin.com/MA/Quincy/138-Quincy-Shore-Dr-02171/unit-170/home/9010050', '73454539',
'MLS Listing', 'Active', NULL, '2025-12-27', 44,
'138 Quincy Shore Dr #170', '138 Quincy Shore Dr', '#170', 'Quincy', 'MA', '02171',
'North Quincy', 42.2851821, -71.0311585,
'Townhouse', 2, 2.5, 1460, NULL, 1986,
599999.00, 411.00, NULL, 482.00,
NULL, NULL,
'{"SALE TYPE": "MLS Listing", "SOLD DATE": null, "PROPERTY TYPE": "Townhouse", "ADDRESS": "138 Quincy Shore Dr #170", "CITY": "Quincy", "STATE OR PROVINCE": "MA", "ZIP OR POSTAL CODE": "02171", "PRICE": "599999", "BEDS": "2", "BATHS": "2.5", "LOCATION": "North Quincy", "SQUARE FEET": "1460", "LOT SIZE": null, "YEAR BUILT": "1986", "DAYS ON MARKET": "44", "$/SQUARE FEET": "411", "HOA/MONTH": "482", "STATUS": "Active", "NEXT OPEN HOUSE START TIME": null, "NEXT OPEN HOUSE END TIME": null, "URL (SEE https://www.redfin.com/buy-a-home/comparative-market-analysis FOR INFO ON PRICING)": "https://www.redfin.com/MA/Quincy/138-Quincy-Shore-Dr-02171/unit-170/home/9010050", "SOURCE": "MLS PIN", "MLS#": "73454539", "FAVORITE": "N", "INTERESTED": "Y", "LATITUDE": "42.2851821", "LONGITUDE": "-71.0311585"}',
'2025-12-28 13:44:00.814805', '2025-12-28 13:44:00.814806', '2025-12-28 13:44:00.814806'),

-- Listing 5: 297 Billings St - Multi-Family
('2cb061d0-1b49-4447-b029-cc1663c025a4', 'REDFIN', '73454105', 'https://www.redfin.com/MA/Quincy/297-Billings-St-02171/home/9007457', '73454105',
'MLS Listing', 'Active', NULL, '2025-12-27', 45,
'297 Billings St', '297 Billings St', NULL, 'Quincy', 'MA', '02171',
'Quincy', 42.2834133, -71.0208823,
'Multi-Family (2-4 Unit)', 4, 2.0, 2056, 4240, 1938,
949000.00, 462.00, NULL, NULL,
NULL, NULL,
'{"SALE TYPE": "MLS Listing", "SOLD DATE": null, "PROPERTY TYPE": "Multi-Family (2-4 Unit)", "ADDRESS": "297 Billings St", "CITY": "Quincy", "STATE OR PROVINCE": "MA", "ZIP OR POSTAL CODE": "02171", "PRICE": "949000", "BEDS": "4", "BATHS": "2.0", "LOCATION": "Quincy", "SQUARE FEET": "2056", "LOT SIZE": "4240", "YEAR BUILT": "1938", "DAYS ON MARKET": "45", "$/SQUARE FEET": "462", "HOA/MONTH": null, "STATUS": "Active", "NEXT OPEN HOUSE START TIME": null, "NEXT OPEN HOUSE END TIME": null, "URL (SEE https://www.redfin.com/buy-a-home/comparative-market-analysis FOR INFO ON PRICING)": "https://www.redfin.com/MA/Quincy/297-Billings-St-02171/home/9007457", "SOURCE": "MLS PIN", "MLS#": "73454105", "FAVORITE": "N", "INTERESTED": "Y", "LATITUDE": "42.2834133", "LONGITUDE": "-71.0208823"}',
'2025-12-28 13:44:00.814826', '2025-12-28 13:44:00.814826', '2025-12-28 13:44:00.814826'),

-- Listing 6: 17 Holmes St #4 - Condo
('a8e3ac0a-a3ab-42fd-bbb5-31d026b33361', 'REDFIN', '73451410', 'https://www.redfin.com/MA/Quincy/17-Holmes-St-02171/unit-4/home/198870359', '73451410',
'MLS Listing', 'Active', NULL, '2025-12-27', 52,
'17 Holmes St #4', '17 Holmes St', '#4', 'Quincy', 'MA', '02171',
'North Quincy', 42.2744986, -71.0282905,
'Condo/Co-op', 2, 2.0, 1457, NULL, 2025,
824900.00, 566.00, NULL, 375.00,
NULL, NULL,
'{"SALE TYPE": "MLS Listing", "SOLD DATE": null, "PROPERTY TYPE": "Condo/Co-op", "ADDRESS": "17 Holmes St #4", "CITY": "Quincy", "STATE OR PROVINCE": "MA", "ZIP OR POSTAL CODE": "02171", "PRICE": "824900", "BEDS": "2", "BATHS": "2.0", "LOCATION": "North Quincy", "SQUARE FEET": "1457", "LOT SIZE": null, "YEAR BUILT": "2025", "DAYS ON MARKET": "52", "$/SQUARE FEET": "566", "HOA/MONTH": "375", "STATUS": "Active", "NEXT OPEN HOUSE START TIME": null, "NEXT OPEN HOUSE END TIME": null, "URL (SEE https://www.redfin.com/buy-a-home/comparative-market-analysis FOR INFO ON PRICING)": "https://www.redfin.com/MA/Quincy/17-Holmes-St-02171/unit-4/home/198870359", "SOURCE": "MLS PIN", "MLS#": "73451410", "FAVORITE": "N", "INTERESTED": "Y", "LATITUDE": "42.2744986", "LONGITUDE": "-71.0282905"}',
'2025-12-28 13:44:00.814845', '2025-12-28 13:44:00.814845', '2025-12-28 13:44:00.814845'),

-- Listing 7: 19 Harbourside Rd #19 - Townhouse
('4f234217-56b9-41a7-b1d5-88e459fd6d94', 'REDFIN', '73449131', 'https://www.redfin.com/MA/Quincy/19-Harbourside-Rd-02171/unit-19/home/113246146', '73449131',
'MLS Listing', 'Active', NULL, '2025-12-27', 59,
'19 Harbourside Rd #19', '19 Harbourside Rd', '#19', 'Quincy', 'MA', '02171',
'Marina Bay', 42.296811, -71.0252838,
'Townhouse', 2, 2.5, 1900, NULL, 1984,
1100000.00, 579.00, NULL, 1093.00,
NULL, NULL,
'{"SALE TYPE": "MLS Listing", "SOLD DATE": null, "PROPERTY TYPE": "Townhouse", "ADDRESS": "19 Harbourside Rd #19", "CITY": "Quincy", "STATE OR PROVINCE": "MA", "ZIP OR POSTAL CODE": "02171", "PRICE": "1100000", "BEDS": "2", "BATHS": "2.5", "LOCATION": "Marina Bay", "SQUARE FEET": "1900", "LOT SIZE": null, "YEAR BUILT": "1984", "DAYS ON MARKET": "59", "$/SQUARE FEET": "579", "HOA/MONTH": "1093", "STATUS": "Active", "NEXT OPEN HOUSE START TIME": null, "NEXT OPEN HOUSE END TIME": null, "URL (SEE https://www.redfin.com/buy-a-home/comparative-market-analysis FOR INFO ON PRICING)": "https://www.redfin.com/MA/Quincy/19-Harbourside-Rd-02171/unit-19/home/113246146", "SOURCE": "MLS PIN", "MLS#": "73449131", "FAVORITE": "N", "INTERESTED": "Y", "LATITUDE": "42.296811", "LONGITUDE": "-71.0252838"}',
'2025-12-28 13:44:00.814867', '2025-12-28 13:44:00.814868', '2025-12-28 13:44:00.814868'),

-- Listing 8: 60 Newbury St #10 - Condo
('ba419027-f69f-4a92-8da4-b6e6bd601074', 'REDFIN', '73444853', 'https://www.redfin.com/MA/Quincy/60-Newbury-St-02171/unit-10/home/180012308', '73444853',
'MLS Listing', 'Active', NULL, '2025-12-27', 72,
'60 Newbury St #10', '60 Newbury St', '#10', 'Quincy', 'MA', '02171',
'Quincy', 42.28025, -71.0389355,
'Condo/Co-op', 2, 2.0, 1362, NULL, 2021,
989000.00, 726.00, NULL, 455.00,
NULL, NULL,
'{"SALE TYPE": "MLS Listing", "SOLD DATE": null, "PROPERTY TYPE": "Condo/Co-op", "ADDRESS": "60 Newbury St #10", "CITY": "Quincy", "STATE OR PROVINCE": "MA", "ZIP OR POSTAL CODE": "02171", "PRICE": "989000", "BEDS": "2", "BATHS": "2.0", "LOCATION": "Quincy", "SQUARE FEET": "1362", "LOT SIZE": null, "YEAR BUILT": "2021", "DAYS ON MARKET": "72", "$/SQUARE FEET": "726", "HOA/MONTH": "455", "STATUS": "Active", "NEXT OPEN HOUSE START TIME": null, "NEXT OPEN HOUSE END TIME": null, "URL (SEE https://www.redfin.com/buy-a-home/comparative-market-analysis FOR INFO ON PRICING)": "https://www.redfin.com/MA/Quincy/60-Newbury-St-02171/unit-10/home/180012308", "SOURCE": "MLS PIN", "MLS#": "73444853", "FAVORITE": "N", "INTERESTED": "Y", "LATITUDE": "42.28025", "LONGITUDE": "-71.0389355"}',
'2025-12-28 13:44:00.814890', '2025-12-28 13:44:00.814890', '2025-12-28 13:44:00.814890'),

-- Listing 9: 63 Crabtree Rd - Single Family
('504414f1-5539-4401-88b3-e65c30efdc65', 'REDFIN', '73443062', 'https://www.redfin.com/MA/Quincy/63-Crabtree-Rd-02171/home/9014863', '73443062',
'MLS Listing', 'Active', NULL, '2025-12-27', 74,
'63 Crabtree Rd', '63 Crabtree Rd', NULL, 'Quincy', 'MA', '02171',
'Squantum', 42.2919273, -71.0109141,
'Single Family Residential', 4, 4.5, 2268, 23027, 1910,
2250000.00, 992.00, NULL, NULL,
NULL, NULL,
'{"SALE TYPE": "MLS Listing", "SOLD DATE": null, "PROPERTY TYPE": "Single Family Residential", "ADDRESS": "63 Crabtree Rd", "CITY": "Quincy", "STATE OR PROVINCE": "MA", "ZIP OR POSTAL CODE": "02171", "PRICE": "2250000", "BEDS": "4", "BATHS": "4.5", "LOCATION": "Squantum", "SQUARE FEET": "2268", "LOT SIZE": "23027", "YEAR BUILT": "1910", "DAYS ON MARKET": "74", "$/SQUARE FEET": "992", "HOA/MONTH": null, "STATUS": "Active", "NEXT OPEN HOUSE START TIME": null, "NEXT OPEN HOUSE END TIME": null, "URL (SEE https://www.redfin.com/buy-a-home/comparative-market-analysis FOR INFO ON PRICING)": "https://www.redfin.com/MA/Quincy/63-Crabtree-Rd-02171/home/9014863", "SOURCE": "MLS PIN", "MLS#": "73443062", "FAVORITE": "N", "INTERESTED": "Y", "LATITUDE": "42.2919273", "LONGITUDE": "-71.0109141"}',
'2025-12-28 13:44:00.814908', '2025-12-28 13:44:00.814908', '2025-12-28 13:44:00.814908'),

-- Listing 10: 2001 Marina Dr #211 - Condo
('861445c0-0de0-4819-9df2-8aa4fc366c87', 'REDFIN', '73442423', 'https://www.redfin.com/MA/Quincy/2001-Marina-Dr-02171/unit-211/home/9013015', '73442423',
'MLS Listing', 'Active', NULL, '2025-12-27', 78,
'2001 Marina Dr #211', '2001 Marina Dr', '#211', 'Quincy', 'MA', '02171',
'Marina Bay', 42.2984064, -71.028094,
'Condo/Co-op', 2, 2.0, 1976, NULL, 1987,
1079000.00, 546.00, NULL, 1202.00,
NULL, NULL,
'{"SALE TYPE": "MLS Listing", "SOLD DATE": null, "PROPERTY TYPE": "Condo/Co-op", "ADDRESS": "2001 Marina Dr #211", "CITY": "Quincy", "STATE OR PROVINCE": "MA", "ZIP OR POSTAL CODE": "02171", "PRICE": "1079000", "BEDS": "2", "BATHS": "2.0", "LOCATION": "Marina Bay", "SQUARE FEET": "1976", "LOT SIZE": null, "YEAR BUILT": "1987", "DAYS ON MARKET": "78", "$/SQUARE FEET": "546", "HOA/MONTH": "1202", "STATUS": "Active", "NEXT OPEN HOUSE START TIME": null, "NEXT OPEN HOUSE END TIME": null, "URL (SEE https://www.redfin.com/buy-a-home/comparative-market-analysis FOR INFO ON PRICING)": "https://www.redfin.com/MA/Quincy/2001-Marina-Dr-02171/unit-211/home/9013015", "SOURCE": "MLS PIN", "MLS#": "73442423", "FAVORITE": "N", "INTERESTED": "Y", "LATITUDE": "42.2984064", "LONGITUDE": "-71.028094"}',
'2025-12-28 13:44:00.814925', '2025-12-28 13:44:00.814925', '2025-12-28 13:44:00.814925'),

-- Listing 11: 90 Quincy Shore Dr #501 - Condo
('c93885e1-5873-44fb-b549-038a88ffc15b', 'REDFIN', '73435989', 'https://www.redfin.com/MA/Quincy/90-Quincy-Shore-Dr-02171/unit-501/home/9011436', '73435989',
'MLS Listing', 'Active', NULL, '2025-12-27', 89,
'90 Quincy Shore Dr #501', '90 Quincy Shore Dr', '#501', 'Quincy', 'MA', '02171',
'Quincy', 42.2837744, -71.0329228,
'Condo/Co-op', 2, 2.0, 1081, NULL, 1987,
429000.00, 397.00, NULL, 984.00,
NULL, NULL,
'{"SALE TYPE": "MLS Listing", "SOLD DATE": null, "PROPERTY TYPE": "Condo/Co-op", "ADDRESS": "90 Quincy Shore Dr #501", "CITY": "Quincy", "STATE OR PROVINCE": "MA", "ZIP OR POSTAL CODE": "02171", "PRICE": "429000", "BEDS": "2", "BATHS": "2.0", "LOCATION": "Quincy", "SQUARE FEET": "1081", "LOT SIZE": null, "YEAR BUILT": "1987", "DAYS ON MARKET": "89", "$/SQUARE FEET": "397", "HOA/MONTH": "984", "STATUS": "Active", "NEXT OPEN HOUSE START TIME": null, "NEXT OPEN HOUSE END TIME": null, "URL (SEE https://www.redfin.com/buy-a-home/comparative-market-analysis FOR INFO ON PRICING)": "https://www.redfin.com/MA/Quincy/90-Quincy-Shore-Dr-02171/unit-501/home/9011436", "SOURCE": "MLS PIN", "MLS#": "73435989", "FAVORITE": "N", "INTERESTED": "Y", "LATITUDE": "42.2837744", "LONGITUDE": "-71.0329228"}',
'2025-12-28 13:44:00.814941', '2025-12-28 13:44:00.814941', '2025-12-28 13:44:00.814941'),

-- Listing 12: 90 Quincy Shore Dr #701 - Condo
('29bea9de-79ee-4abd-a139-45bc1b88b7d7', 'REDFIN', '73435112', 'https://www.redfin.com/MA/Quincy/90-Quincy-Shore-Dr-02171/unit-701/home/9011664', '73435112',
'MLS Listing', 'Active', NULL, '2025-12-27', 94,
'90 Quincy Shore Dr #701', '90 Quincy Shore Dr', '#701', 'Quincy', 'MA', '02171',
'Quincy', 42.2837744, -71.0329228,
'Condo/Co-op', 2, 2.0, 1076, NULL, 1987,
429900.00, 400.00, NULL, 1092.00,
NULL, NULL,
'{"SALE TYPE": "MLS Listing", "SOLD DATE": null, "PROPERTY TYPE": "Condo/Co-op", "ADDRESS": "90 Quincy Shore Dr #701", "CITY": "Quincy", "STATE OR PROVINCE": "MA", "ZIP OR POSTAL CODE": "02171", "PRICE": "429900", "BEDS": "2", "BATHS": "2.0", "LOCATION": "Quincy", "SQUARE FEET": "1076", "LOT SIZE": null, "YEAR BUILT": "1987", "DAYS ON MARKET": "94", "$/SQUARE FEET": "400", "HOA/MONTH": "1092", "STATUS": "Active", "NEXT OPEN HOUSE START TIME": null, "NEXT OPEN HOUSE END TIME": null, "URL (SEE https://www.redfin.com/buy-a-home/comparative-market-analysis FOR INFO ON PRICING)": "https://www.redfin.com/MA/Quincy/90-Quincy-Shore-Dr-02171/unit-701/home/9011664", "SOURCE": "MLS PIN", "MLS#": "73435112", "FAVORITE": "N", "INTERESTED": "Y", "LATITUDE": "42.2837744", "LONGITUDE": "-71.0329228"}',
'2025-12-28 13:44:00.814956', '2025-12-28 13:44:00.814956', '2025-12-28 13:44:00.814956'),

-- Listing 13: 1001 Marina Dr #801 - Condo
('ba0a87f2-6365-454b-9ef9-02235256fc48', 'REDFIN', '73408953', 'https://www.redfin.com/MA/Quincy/1001-Marina-Dr-02171/unit-801/home/9027039', '73408953',
'MLS Listing', 'Active', NULL, '2025-12-27', 156,
'1001 Marina Dr #801', '1001 Marina Dr', '#801', 'Quincy', 'MA', '02171',
'Marina Bay', 42.2985728, -71.0265728,
'Condo/Co-op', 2, 2.5, 2363, NULL, 1988,
1599500.00, 677.00, NULL, 1853.00,
NULL, NULL,
'{"SALE TYPE": "MLS Listing", "SOLD DATE": null, "PROPERTY TYPE": "Condo/Co-op", "ADDRESS": "1001 Marina Dr #801", "CITY": "Quincy", "STATE OR PROVINCE": "MA", "ZIP OR POSTAL CODE": "02171", "PRICE": "1599500", "BEDS": "2", "BATHS": "2.5", "LOCATION": "Marina Bay", "SQUARE FEET": "2363", "LOT SIZE": null, "YEAR BUILT": "1988", "DAYS ON MARKET": "156", "$/SQUARE FEET": "677", "HOA/MONTH": "1853", "STATUS": "Active", "NEXT OPEN HOUSE START TIME": null, "NEXT OPEN HOUSE END TIME": null, "URL (SEE https://www.redfin.com/buy-a-home/comparative-market-analysis FOR INFO ON PRICING)": "https://www.redfin.com/MA/Quincy/1001-Marina-Dr-02171/unit-801/home/9027039", "SOURCE": "MLS PIN", "MLS#": "73408953", "FAVORITE": "N", "INTERESTED": "Y", "LATITUDE": "42.2985728", "LONGITUDE": "-71.0265728"}',
'2025-12-28 13:44:00.814971', '2025-12-28 13:44:00.814972', '2025-12-28 13:44:00.814972'),

-- Listing 14: 130 Parke Ave (lot 2) - Vacant Land
('5d1e15fc-171e-45f6-a2a8-449b32964776', 'REDFIN', '73405680', 'https://www.redfin.com/MA/Quincy/130-Parke-Ave-02171/home/113766722', '73405680',
'MLS Listing', 'Active', NULL, '2025-12-27', 164,
'130 Parke Ave (lot 2)', '130 Parke Ave', '(lot 2)', 'Quincy', 'MA', '02171',
'Squantum', 42.2986775, -71.010473,
'Vacant Land', NULL, NULL, NULL, 9600, NULL,
695000.00, NULL, NULL, NULL,
NULL, NULL,
'{"SALE TYPE": "MLS Listing", "SOLD DATE": null, "PROPERTY TYPE": "Vacant Land", "ADDRESS": "130 Parke Ave (lot 2)", "CITY": "Quincy", "STATE OR PROVINCE": "MA", "ZIP OR POSTAL CODE": "02171", "PRICE": "695000", "BEDS": null, "BATHS": null, "LOCATION": "Squantum", "SQUARE FEET": null, "LOT SIZE": "9600", "YEAR BUILT": null, "DAYS ON MARKET": "164", "$/SQUARE FEET": null, "HOA/MONTH": null, "STATUS": "Active", "NEXT OPEN HOUSE START TIME": null, "NEXT OPEN HOUSE END TIME": null, "URL (SEE https://www.redfin.com/buy-a-home/comparative-market-analysis FOR INFO ON PRICING)": "https://www.redfin.com/MA/Quincy/130-Parke-Ave-02171/home/113766722", "SOURCE": "MLS PIN", "MLS#": "73405680", "FAVORITE": "N", "INTERESTED": "Y", "LATITUDE": "42.2986775", "LONGITUDE": "-71.010473"}',
'2025-12-28 13:44:00.814986', '2025-12-28 13:44:00.814987', '2025-12-28 13:44:00.814987'),

-- Listing 15: 140 Parke Ave (lot 1) - Vacant Land
('cfb156f1-018e-49a4-9190-004e5766baf9', 'REDFIN', '73405679', 'https://www.redfin.com/MA/Quincy/140-Parke-Ave-02171/home/113766720', '73405679',
'MLS Listing', 'Active', NULL, '2025-12-27', 164,
'140 Parke Ave (lot 1)', '140 Parke Ave', '(lot 1)', 'Quincy', 'MA', '02171',
'Squantum', 42.2984, -71.010308,
'Vacant Land', NULL, NULL, NULL, 9600, NULL,
680000.00, NULL, NULL, NULL,
NULL, NULL,
'{"SALE TYPE": "MLS Listing", "SOLD DATE": null, "PROPERTY TYPE": "Vacant Land", "ADDRESS": "140 Parke Ave (lot 1)", "CITY": "Quincy", "STATE OR PROVINCE": "MA", "ZIP OR POSTAL CODE": "02171", "PRICE": "680000", "BEDS": null, "BATHS": null, "LOCATION": "Squantum", "SQUARE FEET": null, "LOT SIZE": "9600", "YEAR BUILT": null, "DAYS ON MARKET": "164", "$/SQUARE FEET": null, "HOA/MONTH": null, "STATUS": "Active", "NEXT OPEN HOUSE START TIME": null, "NEXT OPEN HOUSE END TIME": null, "URL (SEE https://www.redfin.com/buy-a-home/comparative-market-analysis FOR INFO ON PRICING)": "https://www.redfin.com/MA/Quincy/140-Parke-Ave-02171/home/113766720", "SOURCE": "MLS PIN", "MLS#": "73405679", "FAVORITE": "N", "INTERESTED": "Y", "LATITUDE": "42.2984", "LONGITUDE": "-71.010308"}',
'2025-12-28 13:44:00.815001', '2025-12-28 13:44:00.815001', '2025-12-28 13:44:00.815001'),

-- Listing 16: 2001 Marina Dr Unit 506W - Condo
('c6fa8870-53e5-416d-8075-ee68dda65741', 'REDFIN', '73386925', 'https://www.redfin.com/MA/Quincy/2001-Marina-Dr-02171/unit-506W/home/137471064', '73386925',
'MLS Listing', 'Active', NULL, '2025-12-27', 204,
'2001 Marina Dr Unit 506W', '2001 Marina Dr', 'Unit 506W', 'Quincy', 'MA', '02171',
'Quincy', 42.2984064, -71.028094,
'Condo/Co-op', 2, 2.0, 1452, NULL, 1987,
929900.00, 640.00, NULL, 989.00,
NULL, NULL,
'{"SALE TYPE": "MLS Listing", "SOLD DATE": null, "PROPERTY TYPE": "Condo/Co-op", "ADDRESS": "2001 Marina Dr Unit 506W", "CITY": "Quincy", "STATE OR PROVINCE": "MA", "ZIP OR POSTAL CODE": "02171", "PRICE": "929900", "BEDS": "2", "BATHS": "2.0", "LOCATION": "Quincy", "SQUARE FEET": "1452", "LOT SIZE": null, "YEAR BUILT": "1987", "DAYS ON MARKET": "204", "$/SQUARE FEET": "640", "HOA/MONTH": "989", "STATUS": "Active", "NEXT OPEN HOUSE START TIME": null, "NEXT OPEN HOUSE END TIME": null, "URL (SEE https://www.redfin.com/buy-a-home/comparative-market-analysis FOR INFO ON PRICING)": "https://www.redfin.com/MA/Quincy/2001-Marina-Dr-02171/unit-506W/home/137471064", "SOURCE": "MLS PIN", "MLS#": "73386925", "FAVORITE": "N", "INTERESTED": "Y", "LATITUDE": "42.2984064", "LONGITUDE": "-71.028094"}',
'2025-12-28 13:44:00.815016', '2025-12-28 13:44:00.815017', '2025-12-28 13:44:00.815017'),

-- Listing 17: 133 Commander Shea Blvd #315 - Condo
('272e1b72-a48a-4789-9b7c-251c57903eff', 'REDFIN', '73376616', 'https://www.redfin.com/MA/Quincy/133-Commander-Shea-Blvd-02171/unit-315/home/9012172', '73376616',
'MLS Listing', 'Active', NULL, '2025-12-27', 225,
'133 Commander Shea Blvd #315', '133 Commander Shea Blvd', '#315', 'Quincy', 'MA', '02171',
'North Quincy', 42.2834026, -71.034222,
'Condo/Co-op', 0, 1.0, 510, NULL, 1985,
239000.00, 469.00, NULL, 490.00,
NULL, NULL,
'{"SALE TYPE": "MLS Listing", "SOLD DATE": null, "PROPERTY TYPE": "Condo/Co-op", "ADDRESS": "133 Commander Shea Blvd #315", "CITY": "Quincy", "STATE OR PROVINCE": "MA", "ZIP OR POSTAL CODE": "02171", "PRICE": "239000", "BEDS": "0", "BATHS": "1.0", "LOCATION": "North Quincy", "SQUARE FEET": "510", "LOT SIZE": null, "YEAR BUILT": "1985", "DAYS ON MARKET": "225", "$/SQUARE FEET": "469", "HOA/MONTH": "490", "STATUS": "Active", "NEXT OPEN HOUSE START TIME": null, "NEXT OPEN HOUSE END TIME": null, "URL (SEE https://www.redfin.com/buy-a-home/comparative-market-analysis FOR INFO ON PRICING)": "https://www.redfin.com/MA/Quincy/133-Commander-Shea-Blvd-02171/unit-315/home/9012172", "SOURCE": "MLS PIN", "MLS#": "73376616", "FAVORITE": "N", "INTERESTED": "Y", "LATITUDE": "42.2834026", "LONGITUDE": "-71.034222"}',
'2025-12-28 13:44:00.815033', '2025-12-28 13:44:00.815034', '2025-12-28 13:44:00.815034'),

-- Listing 18: 153 Bayside Rd - Single Family
('0905c56b-5e8f-432a-b627-d393d0c576d5', 'REDFIN', '73221793', 'https://www.redfin.com/MA/Quincy/153-Bayside-Rd-02171/home/9019045', '73221793',
'MLS Listing', 'Active', NULL, '2025-12-27', 627,
'153 Bayside Rd', '153 Bayside Rd', NULL, 'Quincy', 'MA', '02171',
'Marina Bay', 42.2978403, -71.006429,
'Single Family Residential', 3, 4.0, 2525, 5480, 2019,
3799000.00, 1505.00, NULL, NULL,
NULL, NULL,
'{"SALE TYPE": "MLS Listing", "SOLD DATE": null, "PROPERTY TYPE": "Single Family Residential", "ADDRESS": "153 Bayside Rd", "CITY": "Quincy", "STATE OR PROVINCE": "MA", "ZIP OR POSTAL CODE": "02171", "PRICE": "3799000", "BEDS": "3", "BATHS": "4.0", "LOCATION": "Marina Bay", "SQUARE FEET": "2525", "LOT SIZE": "5480", "YEAR BUILT": "2019", "DAYS ON MARKET": "627", "$/SQUARE FEET": "1505", "HOA/MONTH": null, "STATUS": "Active", "NEXT OPEN HOUSE START TIME": null, "NEXT OPEN HOUSE END TIME": null, "URL (SEE https://www.redfin.com/buy-a-home/comparative-market-analysis FOR INFO ON PRICING)": "https://www.redfin.com/MA/Quincy/153-Bayside-Rd-02171/home/9019045", "SOURCE": "MLS PIN", "MLS#": "73221793", "FAVORITE": "N", "INTERESTED": "Y", "LATITUDE": "42.2978403", "LONGITUDE": "-71.006429"}',
'2025-12-28 13:44:00.815049', '2025-12-28 13:44:00.815049', '2025-12-28 13:44:00.815049'),

-- Bridgewater, MA listings
-- Listing: 48 Wall St - Multi-Family
('bw000001-0000-0000-0000-000000000001', 'REDFIN', '73464130', 'https://www.redfin.com/MA/Bridgewater/48-Wall-St-02324/home/16311764', '73464130',
'MLS Listing', 'Active', NULL, '2025-12-29', 2,
'48 Wall St', '48 Wall St', NULL, 'Bridgewater', 'MA', '02324',
'Bridgewater', 42.0043445, -70.9813236,
'Multi-Family (2-4 Unit)', 6, 2.0, 2108, 19500, 1850,
699000.00, 332.00, NULL, NULL,
'2026-01-03 11:00:00', '2026-01-03 12:00:00',
'{"SALE TYPE": "MLS Listing", "PROPERTY TYPE": "Multi-Family (2-4 Unit)", "ADDRESS": "48 Wall St", "CITY": "Bridgewater", "STATE OR PROVINCE": "MA", "ZIP OR POSTAL CODE": "02324", "PRICE": "699000", "BEDS": "6", "BATHS": "2.0", "LOCATION": "Bridgewater", "SQUARE FEET": "2108", "LOT SIZE": "19500", "YEAR BUILT": "1850", "DAYS ON MARKET": "2", "$/SQUARE FEET": "332", "STATUS": "Active", "NEXT OPEN HOUSE START TIME": "January-3-2026 11:00 AM", "NEXT OPEN HOUSE END TIME": "January-3-2026 12:00 PM", "URL": "https://www.redfin.com/MA/Bridgewater/48-Wall-St-02324/home/16311764", "SOURCE": "MLS PIN", "MLS#": "73464130", "INTERESTED": "Y", "LATITUDE": "42.0043445", "LONGITUDE": "-70.9813236"}',
NOW(), NOW(), NOW()),

-- Listing: 58 Roberts Rd - Single Family
('bw000001-0000-0000-0000-000000000002', 'REDFIN', '73464080', 'https://www.redfin.com/MA/Bridgewater/58-Roberts-Rd-02324/home/16310460', '73464080',
'MLS Listing', 'Active', NULL, '2025-12-29', 2,
'58 Roberts Rd', '58 Roberts Rd', NULL, 'Bridgewater', 'MA', '02324',
'Bridgewater', 42.000355, -70.9180146,
'Single Family Residential', 4, 2.0, 1456, 22000, 1999,
529000.00, 363.00, NULL, NULL,
'2026-01-02 15:30:00', '2026-01-02 16:30:00',
'{"SALE TYPE": "MLS Listing", "PROPERTY TYPE": "Single Family Residential", "ADDRESS": "58 Roberts Rd", "CITY": "Bridgewater", "STATE OR PROVINCE": "MA", "ZIP OR POSTAL CODE": "02324", "PRICE": "529000", "BEDS": "4", "BATHS": "2.0", "LOCATION": "Bridgewater", "SQUARE FEET": "1456", "LOT SIZE": "22000", "YEAR BUILT": "1999", "DAYS ON MARKET": "2", "$/SQUARE FEET": "363", "STATUS": "Active", "NEXT OPEN HOUSE START TIME": "January-2-2026 03:30 PM", "NEXT OPEN HOUSE END TIME": "January-2-2026 04:30 PM", "URL": "https://www.redfin.com/MA/Bridgewater/58-Roberts-Rd-02324/home/16310460", "SOURCE": "MLS PIN", "MLS#": "73464080", "INTERESTED": "Y", "LATITUDE": "42.000355", "LONGITUDE": "-70.9180146"}',
NOW(), NOW(), NOW()),

-- Listing: 28 Beninati Farm Rd - Single Family
('bw000001-0000-0000-0000-000000000003', 'REDFIN', '73462541', 'https://www.redfin.com/MA/Bridgewater/28-Beninati-Farm-Rd-02324/home/16309664', '73462541',
'MLS Listing', 'Active', NULL, '2025-12-16', 15,
'28 Beninati Farm Rd', '28 Beninati Farm Rd', NULL, 'Bridgewater', 'MA', '02324',
'Bridgewater', 41.9440019, -70.9745787,
'Single Family Residential', 4, 2.5, 4292, 56169, 2000,
929000.00, 216.00, NULL, NULL,
NULL, NULL,
'{"SALE TYPE": "MLS Listing", "PROPERTY TYPE": "Single Family Residential", "ADDRESS": "28 Beninati Farm Rd", "CITY": "Bridgewater", "STATE OR PROVINCE": "MA", "ZIP OR POSTAL CODE": "02324", "PRICE": "929000", "BEDS": "4", "BATHS": "2.5", "LOCATION": "Bridgewater", "SQUARE FEET": "4292", "LOT SIZE": "56169", "YEAR BUILT": "2000", "DAYS ON MARKET": "15", "$/SQUARE FEET": "216", "STATUS": "Active", "URL": "https://www.redfin.com/MA/Bridgewater/28-Beninati-Farm-Rd-02324/home/16309664", "SOURCE": "MLS PIN", "MLS#": "73462541", "INTERESTED": "Y", "LATITUDE": "41.9440019", "LONGITUDE": "-70.9745787"}',
NOW(), NOW(), NOW()),

-- Listing: 220 Bedford St #32 - Condo
('bw000001-0000-0000-0000-000000000004', 'REDFIN', '73462113', 'https://www.redfin.com/MA/Bridgewater/220-Bedford-St-02324/unit-32/home/16314205', '73462113',
'MLS Listing', 'Active', NULL, '2025-12-14', 17,
'220 Bedford St #32', '220 Bedford St', '#32', 'Bridgewater', 'MA', '02324',
'Bridgewater', 41.9815672, -70.9735617,
'Condo/Co-op', 2, 1.0, 1011, NULL, 1971,
319900.00, 316.00, NULL, 510.00,
NULL, NULL,
'{"SALE TYPE": "MLS Listing", "PROPERTY TYPE": "Condo/Co-op", "ADDRESS": "220 Bedford St #32", "CITY": "Bridgewater", "STATE OR PROVINCE": "MA", "ZIP OR POSTAL CODE": "02324", "PRICE": "319900", "BEDS": "2", "BATHS": "1.0", "LOCATION": "Bridgewater", "SQUARE FEET": "1011", "YEAR BUILT": "1971", "DAYS ON MARKET": "17", "$/SQUARE FEET": "316", "HOA/MONTH": "510", "STATUS": "Active", "URL": "https://www.redfin.com/MA/Bridgewater/220-Bedford-St-02324/unit-32/home/16314205", "SOURCE": "MLS PIN", "MLS#": "73462113", "INTERESTED": "Y", "LATITUDE": "41.9815672", "LONGITUDE": "-70.9735617"}',
NOW(), NOW(), NOW()),

-- Listing: 10 Mockingbird Hl - Single Family
('bw000001-0000-0000-0000-000000000005', 'REDFIN', '73461434', 'https://www.redfin.com/MA/Bridgewater/10-Mockingbird-Hl-02324/home/16314368', '73461434',
'MLS Listing', 'Active', NULL, '2025-12-10', 21,
'10 Mockingbird Hl', '10 Mockingbird Hl', NULL, 'Bridgewater', 'MA', '02324',
'Bridgewater', 41.9798885, -70.9933063,
'Single Family Residential', 4, 2.5, 3010, 43560, 1993,
799900.00, 266.00, NULL, NULL,
NULL, NULL,
'{"SALE TYPE": "MLS Listing", "PROPERTY TYPE": "Single Family Residential", "ADDRESS": "10 Mockingbird Hl", "CITY": "Bridgewater", "STATE OR PROVINCE": "MA", "ZIP OR POSTAL CODE": "02324", "PRICE": "799900", "BEDS": "4", "BATHS": "2.5", "LOCATION": "Bridgewater", "SQUARE FEET": "3010", "LOT SIZE": "43560", "YEAR BUILT": "1993", "DAYS ON MARKET": "21", "$/SQUARE FEET": "266", "STATUS": "Active", "URL": "https://www.redfin.com/MA/Bridgewater/10-Mockingbird-Hl-02324/home/16314368", "SOURCE": "MLS PIN", "MLS#": "73461434", "INTERESTED": "Y", "LATITUDE": "41.9798885", "LONGITUDE": "-70.9933063"}',
NOW(), NOW(), NOW()),

-- Listing: 180 Main St Unit D80 - Condo
('bw000001-0000-0000-0000-000000000006', 'REDFIN', '73460999', 'https://www.redfin.com/MA/Bridgewater/180-Main-St-02324/unit-D80/home/16310048', '73460999',
'MLS Listing', 'Active', NULL, '2025-12-09', 22,
'180 Main St Unit D80', '180 Main St', 'Unit D80', 'Bridgewater', 'MA', '02324',
'Bridgewater', 41.992751, -70.982801,
'Condo/Co-op', 1, 1.0, 708, NULL, 1970,
237500.00, 335.00, NULL, 458.00,
'2026-01-04 10:30:00', '2026-01-04 12:00:00',
'{"SALE TYPE": "MLS Listing", "PROPERTY TYPE": "Condo/Co-op", "ADDRESS": "180 Main St Unit D80", "CITY": "Bridgewater", "STATE OR PROVINCE": "MA", "ZIP OR POSTAL CODE": "02324", "PRICE": "237500", "BEDS": "1", "BATHS": "1.0", "LOCATION": "Bridgewater", "SQUARE FEET": "708", "YEAR BUILT": "1970", "DAYS ON MARKET": "22", "$/SQUARE FEET": "335", "HOA/MONTH": "458", "STATUS": "Active", "NEXT OPEN HOUSE START TIME": "January-4-2026 10:30 AM", "NEXT OPEN HOUSE END TIME": "January-4-2026 12:00 PM", "URL": "https://www.redfin.com/MA/Bridgewater/180-Main-St-02324/unit-D80/home/16310048", "SOURCE": "MLS PIN", "MLS#": "73460999", "INTERESTED": "Y", "LATITUDE": "41.992751", "LONGITUDE": "-70.982801"}',
NOW(), NOW(), NOW()),

-- Listing: 580 Broad St #1 - Single Family
('bw000001-0000-0000-0000-000000000007', 'REDFIN', '73458684', 'https://www.redfin.com/MA/Bridgewater/580-Broad-St-02324/unit-1/home/199154123', '73458684',
'MLS Listing', 'Active', NULL, '2025-12-01', 30,
'580 Broad St #1', '580 Broad St', '#1', 'Bridgewater', 'MA', '02324',
'Bridgewater', 42.005103, -70.9679309,
'Single Family Residential', 2, 2.5, 1600, 21780, 2025,
615000.00, 384.00, NULL, NULL,
NULL, NULL,
'{"SALE TYPE": "MLS Listing", "PROPERTY TYPE": "Single Family Residential", "ADDRESS": "580 Broad St #1", "CITY": "Bridgewater", "STATE OR PROVINCE": "MA", "ZIP OR POSTAL CODE": "02324", "PRICE": "615000", "BEDS": "2", "BATHS": "2.5", "LOCATION": "Bridgewater", "SQUARE FEET": "1600", "LOT SIZE": "21780", "YEAR BUILT": "2025", "DAYS ON MARKET": "30", "$/SQUARE FEET": "384", "STATUS": "Active", "URL": "https://www.redfin.com/MA/Bridgewater/580-Broad-St-02324/unit-1/home/199154123", "SOURCE": "MLS PIN", "MLS#": "73458684", "INTERESTED": "Y", "LATITUDE": "42.005103", "LONGITUDE": "-70.9679309"}',
NOW(), NOW(), NOW()),

-- Listing: 580 Broad St #2 - Single Family
('bw000001-0000-0000-0000-000000000008', 'REDFIN', '73458686', 'https://www.redfin.com/MA/Bridgewater/580-Broad-St-02324/unit-2/home/199142128', '73458686',
'MLS Listing', 'Active', NULL, '2025-12-01', 30,
'580 Broad St #2', '580 Broad St', '#2', 'Bridgewater', 'MA', '02324',
'Bridgewater', 42.005103, -70.9679309,
'Single Family Residential', 2, 2.5, 1600, 21780, 2025,
615000.00, 384.00, NULL, NULL,
NULL, NULL,
'{"SALE TYPE": "MLS Listing", "PROPERTY TYPE": "Single Family Residential", "ADDRESS": "580 Broad St #2", "CITY": "Bridgewater", "STATE OR PROVINCE": "MA", "ZIP OR POSTAL CODE": "02324", "PRICE": "615000", "BEDS": "2", "BATHS": "2.5", "LOCATION": "Bridgewater", "SQUARE FEET": "1600", "LOT SIZE": "21780", "YEAR BUILT": "2025", "DAYS ON MARKET": "30", "$/SQUARE FEET": "384", "STATUS": "Active", "URL": "https://www.redfin.com/MA/Bridgewater/580-Broad-St-02324/unit-2/home/199142128", "SOURCE": "MLS PIN", "MLS#": "73458686", "INTERESTED": "Y", "LATITUDE": "42.005103", "LONGITUDE": "-70.9679309"}',
NOW(), NOW(), NOW()),

-- Listing: 37 Titicut Ave Lot 34 - Single Family (Duxburrow Estates)
('bw000001-0000-0000-0000-000000000009', 'REDFIN', '73458097', 'https://www.redfin.com/MA/Bridgewater/37-Titicut-Ave-02324/unit-34/home/199413071', '73458097',
'MLS Listing', 'Active', NULL, '2025-11-29', 33,
'37 Titicut Ave Lot 34', '37 Titicut Ave', 'Lot 34', 'Bridgewater', 'MA', '02324',
'Duxburrow Estates', 41.965953, -70.944483,
'Single Family Residential', 3, 2.0, 1649, 11990, 2026,
814000.00, 494.00, NULL, 29.00,
NULL, NULL,
'{"SALE TYPE": "MLS Listing", "PROPERTY TYPE": "Single Family Residential", "ADDRESS": "37 Titicut Ave Lot 34", "CITY": "Bridgewater", "STATE OR PROVINCE": "MA", "ZIP OR POSTAL CODE": "02324", "PRICE": "814000", "BEDS": "3", "BATHS": "2.0", "LOCATION": "Duxburrow Estates", "SQUARE FEET": "1649", "LOT SIZE": "11990", "YEAR BUILT": "2026", "DAYS ON MARKET": "33", "$/SQUARE FEET": "494", "HOA/MONTH": "29", "STATUS": "Active", "URL": "https://www.redfin.com/MA/Bridgewater/37-Titicut-Ave-02324/unit-34/home/199413071", "SOURCE": "MLS PIN", "MLS#": "73458097", "INTERESTED": "Y", "LATITUDE": "41.965953", "LONGITUDE": "-70.944483"}',
NOW(), NOW(), NOW()),

-- Listing: 1 Jennifer Cir - Single Family
('bw000001-0000-0000-0000-000000000010', 'REDFIN', '73455161', 'https://www.redfin.com/MA/Bridgewater/1-Jennifer-Cir-02324/home/199095995', '73455161',
'MLS Listing', 'Active', NULL, '2025-11-14', 47,
'1 Jennifer Cir', '1 Jennifer Cir', NULL, 'Bridgewater', 'MA', '02324',
'Bridgewater', 41.9677098, -70.9810864,
'Single Family Residential', 3, 2.5, 1768, 20022, 2025,
789000.00, 446.00, NULL, NULL,
NULL, NULL,
'{"SALE TYPE": "MLS Listing", "PROPERTY TYPE": "Single Family Residential", "ADDRESS": "1 Jennifer Cir", "CITY": "Bridgewater", "STATE OR PROVINCE": "MA", "ZIP OR POSTAL CODE": "02324", "PRICE": "789000", "BEDS": "3", "BATHS": "2.5", "LOCATION": "Bridgewater", "SQUARE FEET": "1768", "LOT SIZE": "20022", "YEAR BUILT": "2025", "DAYS ON MARKET": "47", "$/SQUARE FEET": "446", "STATUS": "Active", "URL": "https://www.redfin.com/MA/Bridgewater/1-Jennifer-Cir-02324/home/199095995", "SOURCE": "MLS PIN", "MLS#": "73455161", "INTERESTED": "Y", "LATITUDE": "41.9677098", "LONGITUDE": "-70.9810864"}',
NOW(), NOW(), NOW()),

-- Listing: 60 Titicut Ave Lot 41 - Single Family (Duxburrow Estates)
('bw000001-0000-0000-0000-000000000011', 'REDFIN', '73453136', 'https://www.redfin.com/MA/Bridgewater/60-Titicut-Ave-02324/unit-41/home/192845325', '73453136',
'MLS Listing', 'Active', NULL, '2025-11-10', 51,
'60 Titicut Ave Lot 41', '60 Titicut Ave', 'Lot 41', 'Bridgewater', 'MA', '02324',
'Duxburrow Estates', 41.965432, -70.942735,
'Single Family Residential', 3, 2.5, 2390, 14845, 2024,
939000.00, 393.00, NULL, 25.00,
NULL, NULL,
'{"SALE TYPE": "MLS Listing", "PROPERTY TYPE": "Single Family Residential", "ADDRESS": "60 Titicut Ave Lot 41", "CITY": "Bridgewater", "STATE OR PROVINCE": "MA", "ZIP OR POSTAL CODE": "02324", "PRICE": "939000", "BEDS": "3", "BATHS": "2.5", "LOCATION": "Duxburrow Estates", "SQUARE FEET": "2390", "LOT SIZE": "14845", "YEAR BUILT": "2024", "DAYS ON MARKET": "51", "$/SQUARE FEET": "393", "HOA/MONTH": "25", "STATUS": "Active", "URL": "https://www.redfin.com/MA/Bridgewater/60-Titicut-Ave-02324/unit-41/home/192845325", "SOURCE": "MLS PIN", "MLS#": "73453136", "INTERESTED": "Y", "LATITUDE": "41.965432", "LONGITUDE": "-70.942735"}',
NOW(), NOW(), NOW()),

-- Listing: 96 Trailwood Dr - Single Family
('bw000001-0000-0000-0000-000000000012', 'REDFIN', '73452557', 'https://www.redfin.com/MA/Bridgewater/96-Trailwood-Dr-02324/home/198942297', '73452557',
'MLS Listing', 'Active', NULL, '2025-11-08', 54,
'96 Trailwood Dr', '96 Trailwood Dr', NULL, 'Bridgewater', 'MA', '02324',
'Bridgewater', 41.9985257, -70.9207648,
'Single Family Residential', 2, 2.0, 1300, NULL, 1996,
269900.00, 208.00, NULL, NULL,
NULL, NULL,
'{"SALE TYPE": "MLS Listing", "PROPERTY TYPE": "Single Family Residential", "ADDRESS": "96 Trailwood Dr", "CITY": "Bridgewater", "STATE OR PROVINCE": "MA", "ZIP OR POSTAL CODE": "02324", "PRICE": "269900", "BEDS": "2", "BATHS": "2.0", "LOCATION": "Bridgewater", "SQUARE FEET": "1300", "YEAR BUILT": "1996", "DAYS ON MARKET": "54", "$/SQUARE FEET": "208", "STATUS": "Active", "URL": "https://www.redfin.com/MA/Bridgewater/96-Trailwood-Dr-02324/home/198942297", "SOURCE": "MLS PIN", "MLS#": "73452557", "INTERESTED": "Y", "LATITUDE": "41.9985257", "LONGITUDE": "-70.9207648"}',
NOW(), NOW(), NOW()),

-- Listing: Lot 1 Mill - Vacant Land
('bw000001-0000-0000-0000-000000000013', 'REDFIN', '73452056', 'https://www.redfin.com/MA/Bridgewater/1-Mill-St-02324/home/107217918', '73452056',
'MLS Listing', 'Active', NULL, '2025-11-07', 55,
'Lot 1 Mill', 'Lot 1 Mill', NULL, 'Bridgewater', 'MA', '02324',
'Bridgewater', 41.9933514, -70.9385852,
'Vacant Land', NULL, NULL, NULL, 57876, NULL,
529900.00, NULL, NULL, NULL,
NULL, NULL,
'{"SALE TYPE": "MLS Listing", "PROPERTY TYPE": "Vacant Land", "ADDRESS": "Lot 1 Mill", "CITY": "Bridgewater", "STATE OR PROVINCE": "MA", "ZIP OR POSTAL CODE": "02324", "PRICE": "529900", "LOCATION": "Bridgewater", "LOT SIZE": "57876", "DAYS ON MARKET": "55", "STATUS": "Active", "URL": "https://www.redfin.com/MA/Bridgewater/1-Mill-St-02324/home/107217918", "SOURCE": "MLS PIN", "MLS#": "73452056", "INTERESTED": "Y", "LATITUDE": "41.9933514", "LONGITUDE": "-70.9385852"}',
NOW(), NOW(), NOW()),

-- Listing: 180 Main St Unit A-15 - Condo
('bw000001-0000-0000-0000-000000000014', 'REDFIN', '73446440', 'https://www.redfin.com/MA/Bridgewater/180-Main-St-02324/unit-A15/home/16309475', '73446440',
'MLS Listing', 'Active', NULL, '2025-10-22', 70,
'180 Main St Unit A-15', '180 Main St', 'Unit A-15', 'Bridgewater', 'MA', '02324',
'Bridgewater', 41.992751, -70.982801,
'Condo/Co-op', 2, 1.5, 969, NULL, 1970,
309900.00, 320.00, NULL, 491.00,
NULL, NULL,
'{"SALE TYPE": "MLS Listing", "PROPERTY TYPE": "Condo/Co-op", "ADDRESS": "180 Main St Unit A-15", "CITY": "Bridgewater", "STATE OR PROVINCE": "MA", "ZIP OR POSTAL CODE": "02324", "PRICE": "309900", "BEDS": "2", "BATHS": "1.5", "LOCATION": "Bridgewater", "SQUARE FEET": "969", "YEAR BUILT": "1970", "DAYS ON MARKET": "70", "$/SQUARE FEET": "320", "HOA/MONTH": "491", "STATUS": "Active", "URL": "https://www.redfin.com/MA/Bridgewater/180-Main-St-02324/unit-A15/home/16309475", "SOURCE": "MLS PIN", "MLS#": "73446440", "INTERESTED": "Y", "LATITUDE": "41.992751", "LONGITUDE": "-70.982801"}',
NOW(), NOW(), NOW()),

-- Listing: 23 Stone Meadow Dr - Single Family
('bw000001-0000-0000-0000-000000000015', 'REDFIN', '73441241', 'https://www.redfin.com/MA/Bridgewater/23-Stone-Meadow-Dr-02324/home/198524795', '73441241',
'MLS Listing', 'Active', NULL, '2025-10-08', 84,
'23 Stone Meadow Dr', '23 Stone Meadow Dr', NULL, 'Bridgewater', 'MA', '02324',
'Bridgewater', 42.0021316, -70.9286346,
'Single Family Residential', 2, 2.0, 1200, 6500, 2004,
365000.00, 304.00, NULL, 891.00,
NULL, NULL,
'{"SALE TYPE": "MLS Listing", "PROPERTY TYPE": "Single Family Residential", "ADDRESS": "23 Stone Meadow Dr", "CITY": "Bridgewater", "STATE OR PROVINCE": "MA", "ZIP OR POSTAL CODE": "02324", "PRICE": "365000", "BEDS": "2", "BATHS": "2.0", "LOCATION": "Bridgewater", "SQUARE FEET": "1200", "LOT SIZE": "6500", "YEAR BUILT": "2004", "DAYS ON MARKET": "84", "$/SQUARE FEET": "304", "HOA/MONTH": "891", "STATUS": "Active", "URL": "https://www.redfin.com/MA/Bridgewater/23-Stone-Meadow-Dr-02324/home/198524795", "SOURCE": "MLS PIN", "MLS#": "73441241", "INTERESTED": "Y", "LATITUDE": "42.0021316", "LONGITUDE": "-70.9286346"}',
NOW(), NOW(), NOW()),

-- Listing: 73 Pratt Ave Lot 126 - Single Family (Duxburrow Estates)
('bw000001-0000-0000-0000-000000000016', 'REDFIN', '73437916', 'https://www.redfin.com/MA/Bridgewater/73-Pratt-Ave-02324/unit-126/home/186467960', '73437916',
'MLS Listing', 'Active', NULL, '2025-10-04', 88,
'73 Pratt Ave Lot 126', '73 Pratt Ave', 'Lot 126', 'Bridgewater', 'MA', '02324',
'Duxburrow Estates', 41.966855, -70.94148,
'Single Family Residential', 4, 2.5, 2946, 10332, 2023,
1029000.00, 349.00, NULL, 25.00,
NULL, NULL,
'{"SALE TYPE": "MLS Listing", "PROPERTY TYPE": "Single Family Residential", "ADDRESS": "73 Pratt Ave Lot 126", "CITY": "Bridgewater", "STATE OR PROVINCE": "MA", "ZIP OR POSTAL CODE": "02324", "PRICE": "1029000", "BEDS": "4", "BATHS": "2.5", "LOCATION": "Duxburrow Estates", "SQUARE FEET": "2946", "LOT SIZE": "10332", "YEAR BUILT": "2023", "DAYS ON MARKET": "88", "$/SQUARE FEET": "349", "HOA/MONTH": "25", "STATUS": "Active", "URL": "https://www.redfin.com/MA/Bridgewater/73-Pratt-Ave-02324/unit-126/home/186467960", "SOURCE": "MLS PIN", "MLS#": "73437916", "INTERESTED": "Y", "LATITUDE": "41.966855", "LONGITUDE": "-70.94148"}',
NOW(), NOW(), NOW()),

-- Listing: 18 Aldrich Rd - Multi-Family
('bw000001-0000-0000-0000-000000000017', 'REDFIN', '73436148', 'https://www.redfin.com/MA/Bridgewater/18-Aldrich-Rd-02324/home/16310202', '73436148',
'MLS Listing', 'Active', NULL, '2025-10-01', 91,
'18 Aldrich Rd', '18 Aldrich Rd', NULL, 'Bridgewater', 'MA', '02324',
'Bridgewater', 41.9965106, -70.9896576,
'Multi-Family (2-4 Unit)', 6, 2.0, 2023, 87120, 1925,
699990.00, 346.00, NULL, NULL,
NULL, NULL,
'{"SALE TYPE": "MLS Listing", "PROPERTY TYPE": "Multi-Family (2-4 Unit)", "ADDRESS": "18 Aldrich Rd", "CITY": "Bridgewater", "STATE OR PROVINCE": "MA", "ZIP OR POSTAL CODE": "02324", "PRICE": "699990", "BEDS": "6", "BATHS": "2.0", "LOCATION": "Bridgewater", "SQUARE FEET": "2023", "LOT SIZE": "87120", "YEAR BUILT": "1925", "DAYS ON MARKET": "91", "$/SQUARE FEET": "346", "STATUS": "Active", "URL": "https://www.redfin.com/MA/Bridgewater/18-Aldrich-Rd-02324/home/16310202", "SOURCE": "MLS PIN", "MLS#": "73436148", "INTERESTED": "Y", "LATITUDE": "41.9965106", "LONGITUDE": "-70.9896576"}',
NOW(), NOW(), NOW()),

-- Listing: 35 Stockbridge Rd - Single Family
('bw000001-0000-0000-0000-000000000018', 'REDFIN', '73436845', 'https://www.redfin.com/MA/Bridgewater/35-Stockbridge-Rd-02324/home/16315735', '73436845',
'MLS Listing', 'Active', NULL, '2025-09-29', 93,
'35 Stockbridge Rd', '35 Stockbridge Rd', NULL, 'Bridgewater', 'MA', '02324',
'Bridgewater', 41.9637286, -70.9894741,
'Single Family Residential', 4, 2.5, 2980, 53172, 2001,
859000.00, 288.00, NULL, NULL,
NULL, NULL,
'{"SALE TYPE": "MLS Listing", "PROPERTY TYPE": "Single Family Residential", "ADDRESS": "35 Stockbridge Rd", "CITY": "Bridgewater", "STATE OR PROVINCE": "MA", "ZIP OR POSTAL CODE": "02324", "PRICE": "859000", "BEDS": "4", "BATHS": "2.5", "LOCATION": "Bridgewater", "SQUARE FEET": "2980", "LOT SIZE": "53172", "YEAR BUILT": "2001", "DAYS ON MARKET": "93", "$/SQUARE FEET": "288", "STATUS": "Active", "URL": "https://www.redfin.com/MA/Bridgewater/35-Stockbridge-Rd-02324/home/16315735", "SOURCE": "MLS PIN", "MLS#": "73436845", "INTERESTED": "Y", "LATITUDE": "41.9637286", "LONGITUDE": "-70.9894741"}',
NOW(), NOW(), NOW()),

-- Listing: 130 Maple Ave - Multi-Family
('bw000001-0000-0000-0000-000000000019', 'REDFIN', '73433405', 'https://www.redfin.com/MA/Bridgewater/130-Maple-Ave-02324/home/16314756', '73433405',
'MLS Listing', 'Active', NULL, '2025-09-23', 99,
'130 Maple Ave', '130 Maple Ave', NULL, 'Bridgewater', 'MA', '02324',
'Bridgewater', 41.9850835, -70.9741932,
'Multi-Family (2-4 Unit)', 5, 2.0, 2296, NULL, 1836,
639000.00, 278.00, NULL, NULL,
NULL, NULL,
'{"SALE TYPE": "MLS Listing", "PROPERTY TYPE": "Multi-Family (2-4 Unit)", "ADDRESS": "130 Maple Ave", "CITY": "Bridgewater", "STATE OR PROVINCE": "MA", "ZIP OR POSTAL CODE": "02324", "PRICE": "639000", "BEDS": "5", "BATHS": "2.0", "LOCATION": "Bridgewater", "SQUARE FEET": "2296", "YEAR BUILT": "1836", "DAYS ON MARKET": "99", "$/SQUARE FEET": "278", "STATUS": "Active", "URL": "https://www.redfin.com/MA/Bridgewater/130-Maple-Ave-02324/home/16314756", "SOURCE": "MLS PIN", "MLS#": "73433405", "INTERESTED": "Y", "LATITUDE": "41.9850835", "LONGITUDE": "-70.9741932"}',
NOW(), NOW(), NOW()),

-- Listing: 398 Plymouth St - Single Family
('bw000001-0000-0000-0000-000000000020', 'REDFIN', '73408132', 'https://www.redfin.com/MA/Bridgewater/398-Plymouth-St-02324/home/16309965', '73408132',
'MLS Listing', 'Active', NULL, '2025-07-28', 156,
'398 Plymouth St', '398 Plymouth St', NULL, 'Bridgewater', 'MA', '02324',
'Bridgewater', 41.9933141, -70.9592732,
'Single Family Residential', 3, 2.0, 1766, 18200, 1920,
579000.00, 328.00, NULL, NULL,
NULL, NULL,
'{"SALE TYPE": "MLS Listing", "PROPERTY TYPE": "Single Family Residential", "ADDRESS": "398 Plymouth St", "CITY": "Bridgewater", "STATE OR PROVINCE": "MA", "ZIP OR POSTAL CODE": "02324", "PRICE": "579000", "BEDS": "3", "BATHS": "2.0", "LOCATION": "Bridgewater", "SQUARE FEET": "1766", "LOT SIZE": "18200", "YEAR BUILT": "1920", "DAYS ON MARKET": "156", "$/SQUARE FEET": "328", "STATUS": "Active", "URL": "https://www.redfin.com/MA/Bridgewater/398-Plymouth-St-02324/home/16309965", "SOURCE": "MLS PIN", "MLS#": "73408132", "INTERESTED": "Y", "LATITUDE": "41.9933141", "LONGITUDE": "-70.9592732"}',
NOW(), NOW(), NOW()),

-- Listing: 40 Country Club Dr - Single Family
('bw000001-0000-0000-0000-000000000021', 'REDFIN', '73401063', 'https://www.redfin.com/MA/Bridgewater/40-Country-Club-Dr-02324/home/16311932', '73401063',
'MLS Listing', 'Active', NULL, '2025-07-22', 162,
'40 Country Club Dr', '40 Country Club Dr', NULL, 'Bridgewater', 'MA', '02324',
'Bridgewater', 41.9482877, -71.015846,
'Single Family Residential', 4, 4.0, 4096, 58153, 1998,
945500.00, 231.00, NULL, NULL,
NULL, NULL,
'{"SALE TYPE": "MLS Listing", "PROPERTY TYPE": "Single Family Residential", "ADDRESS": "40 Country Club Dr", "CITY": "Bridgewater", "STATE OR PROVINCE": "MA", "ZIP OR POSTAL CODE": "02324", "PRICE": "945500", "BEDS": "4", "BATHS": "4.0", "LOCATION": "Bridgewater", "SQUARE FEET": "4096", "LOT SIZE": "58153", "YEAR BUILT": "1998", "DAYS ON MARKET": "162", "$/SQUARE FEET": "231", "STATUS": "Active", "URL": "https://www.redfin.com/MA/Bridgewater/40-Country-Club-Dr-02324/home/16311932", "SOURCE": "MLS PIN", "MLS#": "73401063", "INTERESTED": "Y", "LATITUDE": "41.9482877", "LONGITUDE": "-71.015846"}',
NOW(), NOW(), NOW()),

-- Listing: 32 Titicut Ave Lot 48 - Single Family (Duxburrow Estates)
('bw000001-0000-0000-0000-000000000022', 'REDFIN', '73399502', 'https://www.redfin.com/MA/Bridgewater/32-Titicut-Ave-02324/unit-48/home/195537141', '73399502',
'MLS Listing', 'Active', NULL, '2025-07-03', 181,
'32 Titicut Ave Lot 48', '32 Titicut Ave', 'Lot 48', 'Bridgewater', 'MA', '02324',
'Duxburrow Estates', 41.9663186, -70.9445205,
'Single Family Residential', 3, 2.5, 2416, 9817, 2025,
835000.00, 346.00, NULL, 29.00,
NULL, NULL,
'{"SALE TYPE": "MLS Listing", "PROPERTY TYPE": "Single Family Residential", "ADDRESS": "32 Titicut Ave Lot 48", "CITY": "Bridgewater", "STATE OR PROVINCE": "MA", "ZIP OR POSTAL CODE": "02324", "PRICE": "835000", "BEDS": "3", "BATHS": "2.5", "LOCATION": "Duxburrow Estates", "SQUARE FEET": "2416", "LOT SIZE": "9817", "YEAR BUILT": "2025", "DAYS ON MARKET": "181", "$/SQUARE FEET": "346", "HOA/MONTH": "29", "STATUS": "Active", "URL": "https://www.redfin.com/MA/Bridgewater/32-Titicut-Ave-02324/unit-48/home/195537141", "SOURCE": "MLS PIN", "MLS#": "73399502", "INTERESTED": "Y", "LATITUDE": "41.9663186", "LONGITUDE": "-70.9445205"}',
NOW(), NOW(), NOW()),

-- Listing: Lot 2 Fontana Way - Vacant Land
('bw000001-0000-0000-0000-000000000023', 'REDFIN', '73397892', 'https://www.redfin.com/MA/Bridgewater/2-Fontana-WAY-02324/home/195075056', '73397892',
'MLS Listing', 'Active', NULL, '2025-07-02', 182,
'Lot 2 Fontana Way', 'Lot 2 Fontana Way', NULL, 'Bridgewater', 'MA', '02324',
'Bridgewater', 41.98865, -70.998747,
'Vacant Land', NULL, NULL, NULL, 44866, NULL,
299900.00, NULL, NULL, NULL,
NULL, NULL,
'{"SALE TYPE": "MLS Listing", "PROPERTY TYPE": "Vacant Land", "ADDRESS": "Lot 2 Fontana Way", "CITY": "Bridgewater", "STATE OR PROVINCE": "MA", "ZIP OR POSTAL CODE": "02324", "PRICE": "299900", "LOCATION": "Bridgewater", "LOT SIZE": "44866", "DAYS ON MARKET": "182", "STATUS": "Active", "URL": "https://www.redfin.com/MA/Bridgewater/2-Fontana-WAY-02324/home/195075056", "SOURCE": "MLS PIN", "MLS#": "73397892", "INTERESTED": "Y", "LATITUDE": "41.98865", "LONGITUDE": "-70.998747"}',
NOW(), NOW(), NOW()),

-- Listing: 8 North St - Single Family
('bw000001-0000-0000-0000-000000000024', 'REDFIN', '73397743', 'https://www.redfin.com/MA/Bridgewater/8-North-St-02324/home/16314538', '73397743',
'MLS Listing', 'Active', NULL, '2025-06-27', 187,
'8 North St', '8 North St', NULL, 'Bridgewater', 'MA', '02324',
'Bridgewater', 41.979221, -70.9969999,
'Single Family Residential', 4, 2.0, 1575, 330620, 1963,
1450000.00, 921.00, NULL, NULL,
NULL, NULL,
'{"SALE TYPE": "MLS Listing", "PROPERTY TYPE": "Single Family Residential", "ADDRESS": "8 North St", "CITY": "Bridgewater", "STATE OR PROVINCE": "MA", "ZIP OR POSTAL CODE": "02324", "PRICE": "1450000", "BEDS": "4", "BATHS": "2.0", "LOCATION": "Bridgewater", "SQUARE FEET": "1575", "LOT SIZE": "330620", "YEAR BUILT": "1963", "DAYS ON MARKET": "187", "$/SQUARE FEET": "921", "STATUS": "Active", "URL": "https://www.redfin.com/MA/Bridgewater/8-North-St-02324/home/16314538", "SOURCE": "MLS PIN", "MLS#": "73397743", "INTERESTED": "Y", "LATITUDE": "41.979221", "LONGITUDE": "-70.9969999"}',
NOW(), NOW(), NOW()),

-- Listing: 29 Saddle Dr - Single Family
('bw000001-0000-0000-0000-000000000025', 'REDFIN', '73384384', 'https://www.redfin.com/MA/Bridgewater/29-Saddle-Dr-02324/home/16313979', '73384384',
'MLS Listing', 'Active', NULL, '2025-06-03', 211,
'29 Saddle Dr', '29 Saddle Dr', NULL, 'Bridgewater', 'MA', '02324',
'Bridgewater', 41.9670801, -71.0327836,
'Single Family Residential', 3, 1.5, 1688, 18514, 1967,
619900.00, 367.00, NULL, NULL,
NULL, NULL,
'{"SALE TYPE": "MLS Listing", "PROPERTY TYPE": "Single Family Residential", "ADDRESS": "29 Saddle Dr", "CITY": "Bridgewater", "STATE OR PROVINCE": "MA", "ZIP OR POSTAL CODE": "02324", "PRICE": "619900", "BEDS": "3", "BATHS": "1.5", "LOCATION": "Bridgewater", "SQUARE FEET": "1688", "LOT SIZE": "18514", "YEAR BUILT": "1967", "DAYS ON MARKET": "211", "$/SQUARE FEET": "367", "STATUS": "Active", "URL": "https://www.redfin.com/MA/Bridgewater/29-Saddle-Dr-02324/home/16313979", "SOURCE": "MLS PIN", "MLS#": "73384384", "INTERESTED": "Y", "LATITUDE": "41.9670801", "LONGITUDE": "-71.0327836"}',
NOW(), NOW(), NOW()),

-- Listing: 73 Pratt Ave (New Construction) - Single Family
('bw000001-0000-0000-0000-000000000026', 'ZILLOW', '0BAB3DEC0075', 'https://www.redfin.com/MA/Bridgewater/73-Pratt-Ave-02324/home/174898841', '0BAB3DEC0075',
'New Construction Home', 'Active', NULL, '2024-12-12', 355,
'73 Pratt Ave', '73 Pratt Ave', NULL, 'Bridgewater', 'MA', '02324',
'Bridgewater', 41.966918, -70.941427,
'Single Family Residential', 4, 2.5, 2940, NULL, 2025,
1029000.00, 350.00, NULL, NULL,
NULL, NULL,
'{"SALE TYPE": "New Construction Home", "PROPERTY TYPE": "Single Family Residential", "ADDRESS": "73 Pratt Ave", "CITY": "Bridgewater", "STATE OR PROVINCE": "MA", "ZIP OR POSTAL CODE": "02324", "PRICE": "1029000", "BEDS": "4", "BATHS": "2.5", "LOCATION": "Bridgewater", "SQUARE FEET": "2940", "YEAR BUILT": "2025", "DAYS ON MARKET": "355", "$/SQUARE FEET": "350", "STATUS": "Active", "URL": "https://www.redfin.com/MA/Bridgewater/73-Pratt-Ave-02324/home/174898841", "SOURCE": "Zillow", "MLS#": "0BAB3DEC0075", "INTERESTED": "Y", "LATITUDE": "41.966918", "LONGITUDE": "-70.941427"}',
NOW(), NOW(), NOW()),

-- Stoughton, MA listings
-- Listing: 27 Rosewood Dr #27 - Townhouse
('st000001-0000-0000-0000-000000000001', 'REDFIN', '73464237', 'https://www.redfin.com/MA/Stoughton/27-Rosewood-Dr-02072/unit-27/home/199883913', '73464237',
'MLS Listing', 'Active', NULL, '2025-12-30', 1,
'27 Rosewood Dr #27', '27 Rosewood Dr', '#27', 'Stoughton', 'MA', '02072',
'Stoughton', 42.1416861, -71.1322969,
'Townhouse', 2, 1.5, 1260, NULL, 1973,
429000.00, 340.00, NULL, 675.00,
'2026-01-03 11:30:00', '2026-01-03 13:30:00',
'{"SALE TYPE": "MLS Listing", "PROPERTY TYPE": "Townhouse", "ADDRESS": "27 Rosewood Dr #27", "CITY": "Stoughton", "STATE OR PROVINCE": "MA", "ZIP OR POSTAL CODE": "02072", "PRICE": "429000", "BEDS": "2", "BATHS": "1.5", "LOCATION": "Stoughton", "SQUARE FEET": "1260", "YEAR BUILT": "1973", "DAYS ON MARKET": "1", "$/SQUARE FEET": "340", "HOA/MONTH": "675", "STATUS": "Active", "NEXT OPEN HOUSE START TIME": "January-3-2026 11:30 AM", "NEXT OPEN HOUSE END TIME": "January-3-2026 01:30 PM", "URL": "https://www.redfin.com/MA/Stoughton/27-Rosewood-Dr-02072/unit-27/home/199883913", "SOURCE": "MLS PIN", "MLS#": "73464237", "INTERESTED": "Y", "LATITUDE": "42.1416861", "LONGITUDE": "-71.1322969"}',
NOW(), NOW(), NOW()),

-- Listing: 870 Turnpike St - Single Family
('st000001-0000-0000-0000-000000000002', 'REDFIN', '73463544', 'https://www.redfin.com/MA/Stoughton/870-Turnpike-St-02072/home/199764873', '73463544',
'MLS Listing', 'Active', NULL, '2025-12-23', 8,
'870 Turnpike St', '870 Turnpike St', NULL, 'Stoughton', 'MA', '02072',
'Stoughton', 42.1311729, -71.0776658,
'Single Family Residential', 4, 2.5, 1904, 498761, 2025,
849900.00, 446.00, NULL, NULL,
NULL, NULL,
'{"SALE TYPE": "MLS Listing", "PROPERTY TYPE": "Single Family Residential", "ADDRESS": "870 Turnpike St", "CITY": "Stoughton", "STATE OR PROVINCE": "MA", "ZIP OR POSTAL CODE": "02072", "PRICE": "849900", "BEDS": "4", "BATHS": "2.5", "LOCATION": "Stoughton", "SQUARE FEET": "1904", "LOT SIZE": "498761", "YEAR BUILT": "2025", "DAYS ON MARKET": "8", "$/SQUARE FEET": "446", "STATUS": "Active", "URL": "https://www.redfin.com/MA/Stoughton/870-Turnpike-St-02072/home/199764873", "SOURCE": "MLS PIN", "MLS#": "73463544", "INTERESTED": "Y", "LATITUDE": "42.1311729", "LONGITUDE": "-71.0776658"}',
NOW(), NOW(), NOW()),

-- Listing: 293 School St - Multi-Family (5+ Unit)
('st000001-0000-0000-0000-000000000003', 'REDFIN', '73463164', 'https://www.redfin.com/MA/Stoughton/293-School-St-02072/home/11729564', '73463164',
'MLS Listing', 'Active', NULL, '2025-12-19', 12,
'293 School St', '293 School St', NULL, 'Stoughton', 'MA', '02072',
'Stoughton', 42.1233537, -71.1108949,
'Multi-Family (5+ Unit)', 15, 8.0, 6139, 11456, 1920,
2550000.00, 415.00, NULL, NULL,
NULL, NULL,
'{"SALE TYPE": "MLS Listing", "PROPERTY TYPE": "Multi-Family (5+ Unit)", "ADDRESS": "293 School St", "CITY": "Stoughton", "STATE OR PROVINCE": "MA", "ZIP OR POSTAL CODE": "02072", "PRICE": "2550000", "BEDS": "15", "BATHS": "8.0", "LOCATION": "Stoughton", "SQUARE FEET": "6139", "LOT SIZE": "11456", "YEAR BUILT": "1920", "DAYS ON MARKET": "12", "$/SQUARE FEET": "415", "STATUS": "Active", "URL": "https://www.redfin.com/MA/Stoughton/293-School-St-02072/home/11729564", "SOURCE": "MLS PIN", "MLS#": "73463164", "INTERESTED": "Y", "LATITUDE": "42.1233537", "LONGITUDE": "-71.1108949"}',
NOW(), NOW(), NOW()),

-- Listing: 292 Prospect St - Single Family
('st000001-0000-0000-0000-000000000004', 'REDFIN', '73463110', 'https://www.redfin.com/MA/Stoughton/292-Prospect-St-02072/home/11736408', '73463110',
'MLS Listing', 'Active', NULL, '2025-12-19', 12,
'292 Prospect St', '292 Prospect St', NULL, 'Stoughton', 'MA', '02072',
'Stoughton', 42.1239129, -71.0911194,
'Single Family Residential', 3, 2.0, 1915, 19820, 1947,
580000.00, 303.00, NULL, NULL,
NULL, NULL,
'{"SALE TYPE": "MLS Listing", "PROPERTY TYPE": "Single Family Residential", "ADDRESS": "292 Prospect St", "CITY": "Stoughton", "STATE OR PROVINCE": "MA", "ZIP OR POSTAL CODE": "02072", "PRICE": "580000", "BEDS": "3", "BATHS": "2.0", "LOCATION": "Stoughton", "SQUARE FEET": "1915", "LOT SIZE": "19820", "YEAR BUILT": "1947", "DAYS ON MARKET": "12", "$/SQUARE FEET": "303", "STATUS": "Active", "URL": "https://www.redfin.com/MA/Stoughton/292-Prospect-St-02072/home/11736408", "SOURCE": "MLS PIN", "MLS#": "73463110", "INTERESTED": "Y", "LATITUDE": "42.1239129", "LONGITUDE": "-71.0911194"}',
NOW(), NOW(), NOW()),

-- Listing: 194 Ewing Dr - Single Family
('st000001-0000-0000-0000-000000000005', 'REDFIN', '73463077', 'https://www.redfin.com/MA/Stoughton/194-Ewing-Dr-02072/home/11738199', '73463077',
'MLS Listing', 'Active', NULL, '2025-12-18', 13,
'194 Ewing Dr', '194 Ewing Dr', NULL, 'Stoughton', 'MA', '02072',
'Stoughton', 42.1406661, -71.0973901,
'Single Family Residential', 3, 2.0, 2033, 19776, 1970,
559000.00, 275.00, NULL, NULL,
NULL, NULL,
'{"SALE TYPE": "MLS Listing", "PROPERTY TYPE": "Single Family Residential", "ADDRESS": "194 Ewing Dr", "CITY": "Stoughton", "STATE OR PROVINCE": "MA", "ZIP OR POSTAL CODE": "02072", "PRICE": "559000", "BEDS": "3", "BATHS": "2.0", "LOCATION": "Stoughton", "SQUARE FEET": "2033", "LOT SIZE": "19776", "YEAR BUILT": "1970", "DAYS ON MARKET": "13", "$/SQUARE FEET": "275", "STATUS": "Active", "URL": "https://www.redfin.com/MA/Stoughton/194-Ewing-Dr-02072/home/11738199", "SOURCE": "MLS PIN", "MLS#": "73463077", "INTERESTED": "Y", "LATITUDE": "42.1406661", "LONGITUDE": "-71.0973901"}',
NOW(), NOW(), NOW()),

-- Listing: 42 Brewster Rd #42 - Single Family (Pond View Village)
('st000001-0000-0000-0000-000000000006', 'REDFIN', '73462126', 'https://www.redfin.com/MA/Stoughton/42-Brewster-Rd-02072/unit-42/home/59289847', '73462126',
'MLS Listing', 'Active', NULL, '2025-12-14', 17,
'42 Brewster Rd #42', '42 Brewster Rd', '#42', 'Stoughton', 'MA', '02072',
'Pond View Village', 42.1223923, -71.0708316,
'Single Family Residential', 2, 2.0, 1240, 1200, 2010,
579000.00, 467.00, NULL, NULL,
NULL, NULL,
'{"SALE TYPE": "MLS Listing", "PROPERTY TYPE": "Single Family Residential", "ADDRESS": "42 Brewster Rd #42", "CITY": "Stoughton", "STATE OR PROVINCE": "MA", "ZIP OR POSTAL CODE": "02072", "PRICE": "579000", "BEDS": "2", "BATHS": "2.0", "LOCATION": "Pond View Village", "SQUARE FEET": "1240", "LOT SIZE": "1200", "YEAR BUILT": "2010", "DAYS ON MARKET": "17", "$/SQUARE FEET": "467", "STATUS": "Active", "URL": "https://www.redfin.com/MA/Stoughton/42-Brewster-Rd-02072/unit-42/home/59289847", "SOURCE": "MLS PIN", "MLS#": "73462126", "INTERESTED": "Y", "LATITUDE": "42.1223923", "LONGITUDE": "-71.0708316"}',
NOW(), NOW(), NOW()),

-- Listing: 133 Greenbrook Dr #133 - Townhouse
('st000001-0000-0000-0000-000000000007', 'REDFIN', '73461169', 'https://www.redfin.com/MA/Stoughton/133-Greenbrook-Dr-02072/unit-133/home/199587142', '73461169',
'MLS Listing', 'Active', NULL, '2025-12-10', 21,
'133 Greenbrook Dr #133', '133 Greenbrook Dr', '#133', 'Stoughton', 'MA', '02072',
'Stoughton', 42.1396686, -71.1346106,
'Townhouse', 2, 1.5, 1504, NULL, 1976,
429000.00, 285.00, NULL, 487.00,
NULL, NULL,
'{"SALE TYPE": "MLS Listing", "PROPERTY TYPE": "Townhouse", "ADDRESS": "133 Greenbrook Dr #133", "CITY": "Stoughton", "STATE OR PROVINCE": "MA", "ZIP OR POSTAL CODE": "02072", "PRICE": "429000", "BEDS": "2", "BATHS": "1.5", "LOCATION": "Stoughton", "SQUARE FEET": "1504", "YEAR BUILT": "1976", "DAYS ON MARKET": "21", "$/SQUARE FEET": "285", "HOA/MONTH": "487", "STATUS": "Active", "URL": "https://www.redfin.com/MA/Stoughton/133-Greenbrook-Dr-02072/unit-133/home/199587142", "SOURCE": "MLS PIN", "MLS#": "73461169", "INTERESTED": "Y", "LATITUDE": "42.1396686", "LONGITUDE": "-71.1346106"}',
NOW(), NOW(), NOW()),

-- Listing: 163 Pearl St - Single Family
('st000001-0000-0000-0000-000000000008', 'REDFIN', '73458940', 'https://www.redfin.com/MA/Stoughton/163-Pearl-St-02072/home/11732723', '73458940',
'MLS Listing', 'Active', NULL, '2025-12-02', 29,
'163 Pearl St', '163 Pearl St', NULL, 'Stoughton', 'MA', '02072',
'Stoughton', 42.129409, -71.1065319,
'Single Family Residential', 3, 2.0, 1728, 13504, 1960,
639000.00, 370.00, NULL, NULL,
NULL, NULL,
'{"SALE TYPE": "MLS Listing", "PROPERTY TYPE": "Single Family Residential", "ADDRESS": "163 Pearl St", "CITY": "Stoughton", "STATE OR PROVINCE": "MA", "ZIP OR POSTAL CODE": "02072", "PRICE": "639000", "BEDS": "3", "BATHS": "2.0", "LOCATION": "Stoughton", "SQUARE FEET": "1728", "LOT SIZE": "13504", "YEAR BUILT": "1960", "DAYS ON MARKET": "29", "$/SQUARE FEET": "370", "STATUS": "Active", "URL": "https://www.redfin.com/MA/Stoughton/163-Pearl-St-02072/home/11732723", "SOURCE": "MLS PIN", "MLS#": "73458940", "INTERESTED": "Y", "LATITUDE": "42.129409", "LONGITUDE": "-71.1065319"}',
NOW(), NOW(), NOW()),

-- Listing: 93 Palisades Cir - Single Family
('st000001-0000-0000-0000-000000000009', 'REDFIN', '73458449', 'https://www.redfin.com/MA/Stoughton/93-Palisades-Cir-02072/home/190229848', '73458449',
'MLS Listing', 'Active', NULL, '2025-12-01', 30,
'93 Palisades Cir', '93 Palisades Cir', NULL, 'Stoughton', 'MA', '02072',
'Stoughton', 42.084142, -71.1121875,
'Single Family Residential', 4, 4.5, 3500, 41338, 2025,
1499900.00, 429.00, NULL, NULL,
NULL, NULL,
'{"SALE TYPE": "MLS Listing", "PROPERTY TYPE": "Single Family Residential", "ADDRESS": "93 Palisades Cir", "CITY": "Stoughton", "STATE OR PROVINCE": "MA", "ZIP OR POSTAL CODE": "02072", "PRICE": "1499900", "BEDS": "4", "BATHS": "4.5", "LOCATION": "Stoughton", "SQUARE FEET": "3500", "LOT SIZE": "41338", "YEAR BUILT": "2025", "DAYS ON MARKET": "30", "$/SQUARE FEET": "429", "STATUS": "Active", "URL": "https://www.redfin.com/MA/Stoughton/93-Palisades-Cir-02072/home/190229848", "SOURCE": "MLS PIN", "MLS#": "73458449", "INTERESTED": "Y", "LATITUDE": "42.084142", "LONGITUDE": "-71.1121875"}',
NOW(), NOW(), NOW()),

-- Listing: 84 Pearl St - Multi-Family (5+ Unit)
('st000001-0000-0000-0000-000000000010', 'REDFIN', '73457286', 'https://www.redfin.com/MA/Stoughton/84-Pearl-St-02072/home/11732894', '73457286',
'MLS Listing', 'Active', NULL, '2025-11-22', 39,
'84 Pearl St', '84 Pearl St', NULL, 'Stoughton', 'MA', '02072',
'Stoughton', 42.1274125, -71.1043603,
'Multi-Family (5+ Unit)', 8, 5.0, 5165, 22041, 1930,
1488000.00, 288.00, NULL, NULL,
NULL, NULL,
'{"SALE TYPE": "MLS Listing", "PROPERTY TYPE": "Multi-Family (5+ Unit)", "ADDRESS": "84 Pearl St", "CITY": "Stoughton", "STATE OR PROVINCE": "MA", "ZIP OR POSTAL CODE": "02072", "PRICE": "1488000", "BEDS": "8", "BATHS": "5.0", "LOCATION": "Stoughton", "SQUARE FEET": "5165", "LOT SIZE": "22041", "YEAR BUILT": "1930", "DAYS ON MARKET": "39", "$/SQUARE FEET": "288", "STATUS": "Active", "URL": "https://www.redfin.com/MA/Stoughton/84-Pearl-St-02072/home/11732894", "SOURCE": "MLS PIN", "MLS#": "73457286", "INTERESTED": "Y", "LATITUDE": "42.1274125", "LONGITUDE": "-71.1043603"}',
NOW(), NOW(), NOW()),

-- Listing: Lot 4 West St - Vacant Land
('st000001-0000-0000-0000-000000000011', 'REDFIN', '73456101', 'https://www.redfin.com/MA/Stoughton/4-West-St-02072/home/172650333', '73456101',
'MLS Listing', 'Active', NULL, '2025-11-19', 43,
'Lot 4 West St', 'Lot 4 West St', NULL, 'Stoughton', 'MA', '02072',
'Stoughton', 42.130673, -71.1298848,
'Vacant Land', NULL, NULL, NULL, 76666, NULL,
439900.00, NULL, NULL, NULL,
NULL, NULL,
'{"SALE TYPE": "MLS Listing", "PROPERTY TYPE": "Vacant Land", "ADDRESS": "Lot 4 West St", "CITY": "Stoughton", "STATE OR PROVINCE": "MA", "ZIP OR POSTAL CODE": "02072", "PRICE": "439900", "LOCATION": "Stoughton", "LOT SIZE": "76666", "DAYS ON MARKET": "43", "STATUS": "Active", "URL": "https://www.redfin.com/MA/Stoughton/4-West-St-02072/home/172650333", "SOURCE": "MLS PIN", "MLS#": "73456101", "INTERESTED": "Y", "LATITUDE": "42.130673", "LONGITUDE": "-71.1298848"}',
NOW(), NOW(), NOW()),

-- Listing: 100 Water St - Multi-Family (5+ Unit)
('st000001-0000-0000-0000-000000000012', 'REDFIN', '73455615', 'https://www.redfin.com/MA/Stoughton/100-Water-St-02072/home/11731355', '73455615',
'MLS Listing', 'Active', NULL, '2025-11-18', 44,
'100 Water St', '100 Water St', NULL, 'Stoughton', 'MA', '02072',
'Stoughton', 42.1216669, -71.1085865,
'Multi-Family (5+ Unit)', 40, 29.0, 26910, 65340, 1972,
7900000.00, 294.00, NULL, NULL,
NULL, NULL,
'{"SALE TYPE": "MLS Listing", "PROPERTY TYPE": "Multi-Family (5+ Unit)", "ADDRESS": "100 Water St", "CITY": "Stoughton", "STATE OR PROVINCE": "MA", "ZIP OR POSTAL CODE": "02072", "PRICE": "7900000", "BEDS": "40", "BATHS": "29.0", "LOCATION": "Stoughton", "SQUARE FEET": "26910", "LOT SIZE": "65340", "YEAR BUILT": "1972", "DAYS ON MARKET": "44", "$/SQUARE FEET": "294", "STATUS": "Active", "URL": "https://www.redfin.com/MA/Stoughton/100-Water-St-02072/home/11731355", "SOURCE": "MLS PIN", "MLS#": "73455615", "INTERESTED": "Y", "LATITUDE": "42.1216669", "LONGITUDE": "-71.1085865"}',
NOW(), NOW(), NOW()),

-- Listing: 28 Faxon St #4 - Condo
('st000001-0000-0000-0000-000000000013', 'REDFIN', '73451615', 'https://www.redfin.com/MA/Stoughton/28-Faxon-St-02072/unit-4/home/11732848', '73451615',
'MLS Listing', 'Active', NULL, '2025-11-06', 56,
'28 Faxon St #4', '28 Faxon St', '#4', 'Stoughton', 'MA', '02072',
'Stoughton', 42.1292686, -71.1046805,
'Condo/Co-op', 1, 1.0, 720, NULL, 1970,
247900.00, 344.00, NULL, 301.00,
NULL, NULL,
'{"SALE TYPE": "MLS Listing", "PROPERTY TYPE": "Condo/Co-op", "ADDRESS": "28 Faxon St #4", "CITY": "Stoughton", "STATE OR PROVINCE": "MA", "ZIP OR POSTAL CODE": "02072", "PRICE": "247900", "BEDS": "1", "BATHS": "1.0", "LOCATION": "Stoughton", "SQUARE FEET": "720", "YEAR BUILT": "1970", "DAYS ON MARKET": "56", "$/SQUARE FEET": "344", "HOA/MONTH": "301", "STATUS": "Active", "URL": "https://www.redfin.com/MA/Stoughton/28-Faxon-St-02072/unit-4/home/11732848", "SOURCE": "MLS PIN", "MLS#": "73451615", "INTERESTED": "Y", "LATITUDE": "42.1292686", "LONGITUDE": "-71.1046805"}',
NOW(), NOW(), NOW()),

-- Listing: 19 Camelot Ct #19 - Single Family
('st000001-0000-0000-0000-000000000014', 'REDFIN', '73451436', 'https://www.redfin.com/MA/Stoughton/19-Camelot-Ct-02072/unit-19/home/77508242', '73451436',
'MLS Listing', 'Active', NULL, '2025-11-06', 56,
'19 Camelot Ct #19', '19 Camelot Ct', '#19', 'Stoughton', 'MA', '02072',
'Stoughton', 42.143415, -71.0789137,
'Single Family Residential', 3, 2.5, 1676, 3484, 1982,
579900.00, 346.00, NULL, 534.00,
'2026-01-03 14:30:00', '2026-01-03 16:00:00',
'{"SALE TYPE": "MLS Listing", "PROPERTY TYPE": "Single Family Residential", "ADDRESS": "19 Camelot Ct #19", "CITY": "Stoughton", "STATE OR PROVINCE": "MA", "ZIP OR POSTAL CODE": "02072", "PRICE": "579900", "BEDS": "3", "BATHS": "2.5", "LOCATION": "Stoughton", "SQUARE FEET": "1676", "LOT SIZE": "3484", "YEAR BUILT": "1982", "DAYS ON MARKET": "56", "$/SQUARE FEET": "346", "HOA/MONTH": "534", "STATUS": "Active", "NEXT OPEN HOUSE START TIME": "January-3-2026 02:30 PM", "NEXT OPEN HOUSE END TIME": "January-3-2026 04:00 PM", "URL": "https://www.redfin.com/MA/Stoughton/19-Camelot-Ct-02072/unit-19/home/77508242", "SOURCE": "MLS PIN", "MLS#": "73451436", "INTERESTED": "Y", "LATITUDE": "42.143415", "LONGITUDE": "-71.0789137"}',
NOW(), NOW(), NOW()),

-- Listing: 25 Lawler Ln (lot 7) - Single Family
('st000001-0000-0000-0000-000000000015', 'REDFIN', '73449984', 'https://www.redfin.com/MA/Stoughton/25-Lawler-Ln-02072/home/178218244', '73449984',
'MLS Listing', 'Active', NULL, '2025-11-01', 61,
'25 Lawler Ln (lot 7)', '25 Lawler Ln', '(lot 7)', 'Stoughton', 'MA', '02072',
'Stoughton', 42.1267786, -71.0909805,
'Single Family Residential', 4, 2.5, 3200, 35283, 2026,
1325000.00, 414.00, NULL, NULL,
NULL, NULL,
'{"SALE TYPE": "MLS Listing", "PROPERTY TYPE": "Single Family Residential", "ADDRESS": "25 Lawler Ln (lot 7)", "CITY": "Stoughton", "STATE OR PROVINCE": "MA", "ZIP OR POSTAL CODE": "02072", "PRICE": "1325000", "BEDS": "4", "BATHS": "2.5", "LOCATION": "Stoughton", "SQUARE FEET": "3200", "LOT SIZE": "35283", "YEAR BUILT": "2026", "DAYS ON MARKET": "61", "$/SQUARE FEET": "414", "STATUS": "Active", "URL": "https://www.redfin.com/MA/Stoughton/25-Lawler-Ln-02072/home/178218244", "SOURCE": "MLS PIN", "MLS#": "73449984", "INTERESTED": "Y", "LATITUDE": "42.1267786", "LONGITUDE": "-71.0909805"}',
NOW(), NOW(), NOW()),

-- Listing: 15 Lawler Ln (lot 8) - Single Family
('st000001-0000-0000-0000-000000000016', 'REDFIN', '73449983', 'https://www.redfin.com/MA/Stoughton/15-Lawler-Ln-02072/home/178218245', '73449983',
'MLS Listing', 'Active', NULL, '2025-11-01', 61,
'15 Lawler Ln (lot 8)', '15 Lawler Ln', '(lot 8)', 'Stoughton', 'MA', '02072',
'Stoughton', 42.1270586, -71.0911105,
'Single Family Residential', 4, 2.5, 2800, 37461, 2026,
1225000.00, 438.00, NULL, NULL,
NULL, NULL,
'{"SALE TYPE": "MLS Listing", "PROPERTY TYPE": "Single Family Residential", "ADDRESS": "15 Lawler Ln (lot 8)", "CITY": "Stoughton", "STATE OR PROVINCE": "MA", "ZIP OR POSTAL CODE": "02072", "PRICE": "1225000", "BEDS": "4", "BATHS": "2.5", "LOCATION": "Stoughton", "SQUARE FEET": "2800", "LOT SIZE": "37461", "YEAR BUILT": "2026", "DAYS ON MARKET": "61", "$/SQUARE FEET": "438", "STATUS": "Active", "URL": "https://www.redfin.com/MA/Stoughton/15-Lawler-Ln-02072/home/178218245", "SOURCE": "MLS PIN", "MLS#": "73449983", "INTERESTED": "Y", "LATITUDE": "42.1270586", "LONGITUDE": "-71.0911105"}',
NOW(), NOW(), NOW()),

-- Listing: 64 Laurelwood Dr #64 - Townhouse
('st000001-0000-0000-0000-000000000017', 'REDFIN', '73448461', 'https://www.redfin.com/MA/Stoughton/64-Laurelwood-Dr-02072/unit-64/home/77502251', '73448461',
'MLS Listing', 'Active', NULL, '2025-10-28', 64,
'64 Laurelwood Dr #64', '64 Laurelwood Dr', '#64', 'Stoughton', 'MA', '02072',
'Stoughton', 42.1423412, -71.133671,
'Townhouse', 3, 2.5, 1560, NULL, 1974,
499000.00, 320.00, NULL, 844.00,
NULL, NULL,
'{"SALE TYPE": "MLS Listing", "PROPERTY TYPE": "Townhouse", "ADDRESS": "64 Laurelwood Dr #64", "CITY": "Stoughton", "STATE OR PROVINCE": "MA", "ZIP OR POSTAL CODE": "02072", "PRICE": "499000", "BEDS": "3", "BATHS": "2.5", "LOCATION": "Stoughton", "SQUARE FEET": "1560", "LOT SIZE": null, "YEAR BUILT": "1974", "DAYS ON MARKET": "64", "$/SQUARE FEET": "320", "HOA/MONTH": "844", "STATUS": "Active", "URL": "https://www.redfin.com/MA/Stoughton/64-Laurelwood-Dr-02072/unit-64/home/77502251", "SOURCE": "MLS PIN", "MLS#": "73448461", "INTERESTED": "Y", "LATITUDE": "42.1423412", "LONGITUDE": "-71.133671"}',
NOW(), NOW(), NOW()),

-- Listing: 511 Sumner St - Single Family
('st000001-0000-0000-0000-000000000018', 'REDFIN', '73445805', 'https://www.redfin.com/MA/Stoughton/511-Sumner-St-02072/home/11735000', '73445805',
'MLS Listing', 'Active', NULL, '2025-10-21', 71,
'511 Sumner St', '511 Sumner St', NULL, 'Stoughton', 'MA', '02072',
'Stoughton', 42.1102008, -71.086802,
'Single Family Residential', 4, 3.0, 2262, 95832, 1932,
774900.00, 343.00, NULL, NULL,
NULL, NULL,
'{"SALE TYPE": "MLS Listing", "PROPERTY TYPE": "Single Family Residential", "ADDRESS": "511 Sumner St", "CITY": "Stoughton", "STATE OR PROVINCE": "MA", "ZIP OR POSTAL CODE": "02072", "PRICE": "774900", "BEDS": "4", "BATHS": "3.0", "LOCATION": "Stoughton", "SQUARE FEET": "2262", "LOT SIZE": "95832", "YEAR BUILT": "1932", "DAYS ON MARKET": "71", "$/SQUARE FEET": "343", "STATUS": "Active", "URL": "https://www.redfin.com/MA/Stoughton/511-Sumner-St-02072/home/11735000", "SOURCE": "MLS PIN", "MLS#": "73445805", "INTERESTED": "Y", "LATITUDE": "42.1102008", "LONGITUDE": "-71.086802"}',
NOW(), NOW(), NOW()),

-- Listing: 59 Rosewood Dr #59 - Townhouse
('st000001-0000-0000-0000-000000000019', 'REDFIN', '73442393', 'https://www.redfin.com/MA/Stoughton/59-Rosewood-Dr-02072/unit-59/home/77493044', '73442393',
'MLS Listing', 'Active', NULL, '2025-10-14', 78,
'59 Rosewood Dr #59', '59 Rosewood Dr', '#59', 'Stoughton', 'MA', '02072',
'Stoughton', 42.1419548, -71.1336072,
'Townhouse', 3, 1.5, 1230, NULL, 1974,
375000.00, 305.00, NULL, 691.00,
NULL, NULL,
'{"SALE TYPE": "MLS Listing", "PROPERTY TYPE": "Townhouse", "ADDRESS": "59 Rosewood Dr #59", "CITY": "Stoughton", "STATE OR PROVINCE": "MA", "ZIP OR POSTAL CODE": "02072", "PRICE": "375000", "BEDS": "3", "BATHS": "1.5", "LOCATION": "Stoughton", "SQUARE FEET": "1230", "YEAR BUILT": "1974", "DAYS ON MARKET": "78", "$/SQUARE FEET": "305", "HOA/MONTH": "691", "STATUS": "Active", "URL": "https://www.redfin.com/MA/Stoughton/59-Rosewood-Dr-02072/unit-59/home/77493044", "SOURCE": "MLS PIN", "MLS#": "73442393", "INTERESTED": "Y", "LATITUDE": "42.1419548", "LONGITUDE": "-71.1336072"}',
NOW(), NOW(), NOW()),

-- Listing: 1000 Pleasant St - Single Family
('st000001-0000-0000-0000-000000000020', 'REDFIN', '73433657', 'https://www.redfin.com/MA/Stoughton/1000-Pleasant-St-02072/home/11740968', '73433657',
'MLS Listing', 'Active', NULL, '2025-09-20', 102,
'1000 Pleasant St', '1000 Pleasant St', NULL, 'Stoughton', 'MA', '02072',
'Stoughton', 42.1436863, -71.0767789,
'Single Family Residential', 4, 2.0, 1620, NULL, 1960,
609000.00, 376.00, NULL, NULL,
NULL, NULL,
'{"SALE TYPE": "MLS Listing", "PROPERTY TYPE": "Single Family Residential", "ADDRESS": "1000 Pleasant St", "CITY": "Stoughton", "STATE OR PROVINCE": "MA", "ZIP OR POSTAL CODE": "02072", "PRICE": "609000", "BEDS": "4", "BATHS": "2.0", "LOCATION": "Stoughton", "SQUARE FEET": "1620", "YEAR BUILT": "1960", "DAYS ON MARKET": "102", "$/SQUARE FEET": "376", "STATUS": "Active", "URL": "https://www.redfin.com/MA/Stoughton/1000-Pleasant-St-02072/home/11740968", "SOURCE": "MLS PIN", "MLS#": "73433657", "INTERESTED": "Y", "LATITUDE": "42.1436863", "LONGITUDE": "-71.0767789"}',
NOW(), NOW(), NOW()),

-- Listing: 4 Eagle Rock Ext - Single Family (Eagle Rock Passive Homes)
('st000001-0000-0000-0000-000000000021', 'REDFIN', '73432837', 'https://www.redfin.com/MA/Stoughton/4-Eagle-Rock-Rd-02072/home/11723153', '73432837',
'MLS Listing', 'Active', NULL, '2025-09-18', 104,
'4 Eagle Rock Ext', '4 Eagle Rock Ext', NULL, 'Stoughton', 'MA', '02072',
'Eagle Rock Passive Homes, at The Preserve at Pheasant Hill', 42.0835913, -71.1360553,
'Single Family Residential', 4, 3.5, 4500, 10000, 2027,
1695713.00, 377.00, NULL, NULL,
NULL, NULL,
'{"SALE TYPE": "MLS Listing", "PROPERTY TYPE": "Single Family Residential", "ADDRESS": "4 Eagle Rock Ext", "CITY": "Stoughton", "STATE OR PROVINCE": "MA", "ZIP OR POSTAL CODE": "02072", "PRICE": "1695713", "BEDS": "4", "BATHS": "3.5", "LOCATION": "Eagle Rock Passive Homes, at The Preserve at Pheasant Hill", "SQUARE FEET": "4500", "LOT SIZE": "10000", "YEAR BUILT": "2027", "DAYS ON MARKET": "104", "$/SQUARE FEET": "377", "STATUS": "Active", "URL": "https://www.redfin.com/MA/Stoughton/4-Eagle-Rock-Rd-02072/home/11723153", "SOURCE": "MLS PIN", "MLS#": "73432837", "INTERESTED": "Y", "LATITUDE": "42.0835913", "LONGITUDE": "-71.1360553"}',
NOW(), NOW(), NOW()),

-- Listing: 15-17 Morton Sq - Multi-Family (2-4 Unit)
('st000001-0000-0000-0000-000000000022', 'REDFIN', '73426984', 'https://www.redfin.com/MA/Stoughton/15-17-Morton-Sq-02072/home/196604030', '73426984',
'MLS Listing', 'Active', NULL, '2025-09-06', 116,
'15-17 Morton Sq', '15-17 Morton Sq', NULL, 'Stoughton', 'MA', '02072',
'Stoughton', 42.1229046, -71.1029955,
'Multi-Family (2-4 Unit)', 4, 2.0, 1685, 5532, 1940,
699999.00, 415.00, NULL, NULL,
NULL, NULL,
'{"SALE TYPE": "MLS Listing", "PROPERTY TYPE": "Multi-Family (2-4 Unit)", "ADDRESS": "15-17 Morton Sq", "CITY": "Stoughton", "STATE OR PROVINCE": "MA", "ZIP OR POSTAL CODE": "02072", "PRICE": "699999", "BEDS": "4", "BATHS": "2.0", "LOCATION": "Stoughton", "SQUARE FEET": "1685", "LOT SIZE": "5532", "YEAR BUILT": "1940", "DAYS ON MARKET": "116", "$/SQUARE FEET": "415", "STATUS": "Active", "URL": "https://www.redfin.com/MA/Stoughton/15-17-Morton-Sq-02072/home/196604030", "SOURCE": "MLS PIN", "MLS#": "73426984", "INTERESTED": "Y", "LATITUDE": "42.1229046", "LONGITUDE": "-71.1029955"}',
NOW(), NOW(), NOW()),

-- Listing: 2040 Central St - Single Family
('st000001-0000-0000-0000-000000000023', 'REDFIN', '73420985', 'https://www.redfin.com/MA/Stoughton/2040-Central-St-02072/home/11724737', '73420985',
'MLS Listing', 'Active', NULL, '2025-08-21', 132,
'2040 Central St', '2040 Central St', NULL, 'Stoughton', 'MA', '02072',
'Stoughton', 42.1335445, -71.1387574,
'Single Family Residential', 4, 2.0, 2336, 15115, 1971,
670000.00, 287.00, NULL, NULL,
NULL, NULL,
'{"SALE TYPE": "MLS Listing", "PROPERTY TYPE": "Single Family Residential", "ADDRESS": "2040 Central St", "CITY": "Stoughton", "STATE OR PROVINCE": "MA", "ZIP OR POSTAL CODE": "02072", "PRICE": "670000", "BEDS": "4", "BATHS": "2.0", "LOCATION": "Stoughton", "SQUARE FEET": "2336", "LOT SIZE": "15115", "YEAR BUILT": "1971", "DAYS ON MARKET": "132", "$/SQUARE FEET": "287", "STATUS": "Active", "URL": "https://www.redfin.com/MA/Stoughton/2040-Central-St-02072/home/11724737", "SOURCE": "MLS PIN", "MLS#": "73420985", "INTERESTED": "Y", "LATITUDE": "42.1335445", "LONGITUDE": "-71.1387574"}',
NOW(), NOW(), NOW()),

-- Listing: 26 Faxon St #2 - Condo
('st000001-0000-0000-0000-000000000024', 'REDFIN', '73410258', 'https://www.redfin.com/MA/Stoughton/26-Faxon-St-02072/unit-2/home/11732807', '73410258',
'MLS Listing', 'Active', NULL, '2025-07-27', 156,
'26 Faxon St #2', '26 Faxon St', '#2', 'Stoughton', 'MA', '02072',
'Stoughton', 42.1292686, -71.1046805,
'Condo/Co-op', 2, 1.0, 985, NULL, 1970,
305000.00, 310.00, NULL, 362.00,
NULL, NULL,
'{"SALE TYPE": "MLS Listing", "PROPERTY TYPE": "Condo/Co-op", "ADDRESS": "26 Faxon St #2", "CITY": "Stoughton", "STATE OR PROVINCE": "MA", "ZIP OR POSTAL CODE": "02072", "PRICE": "305000", "BEDS": "2", "BATHS": "1.0", "LOCATION": "Stoughton", "SQUARE FEET": "985", "YEAR BUILT": "1970", "DAYS ON MARKET": "156", "$/SQUARE FEET": "310", "HOA/MONTH": "362", "STATUS": "Active", "URL": "https://www.redfin.com/MA/Stoughton/26-Faxon-St-02072/unit-2/home/11732807", "SOURCE": "MLS PIN", "MLS#": "73410258", "INTERESTED": "Y", "LATITUDE": "42.1292686", "LONGITUDE": "-71.1046805"}',
NOW(), NOW(), NOW()),

-- Listing: 1600 West St - Vacant Land
('st000001-0000-0000-0000-000000000025', 'REDFIN', '73407375', 'https://www.redfin.com/MA/Stoughton/1600-West-St-02072/home/12439427', '73407375',
'MLS Listing', 'Active', NULL, '2025-07-20', 163,
'1600 West St', '1600 West St', NULL, 'Stoughton', 'MA', '02072',
'Stoughton', 42.090863, -71.115791,
'Vacant Land', NULL, NULL, NULL, 71961, NULL,
349000.00, NULL, NULL, NULL,
NULL, NULL,
'{"SALE TYPE": "MLS Listing", "PROPERTY TYPE": "Vacant Land", "ADDRESS": "1600 West St", "CITY": "Stoughton", "STATE OR PROVINCE": "MA", "ZIP OR POSTAL CODE": "02072", "PRICE": "349000", "LOCATION": "Stoughton", "LOT SIZE": "71961", "DAYS ON MARKET": "163", "STATUS": "Active", "URL": "https://www.redfin.com/MA/Stoughton/1600-West-St-02072/home/12439427", "SOURCE": "MLS PIN", "MLS#": "73407375", "INTERESTED": "Y", "LATITUDE": "42.090863", "LONGITUDE": "-71.115791"}',
NOW(), NOW(), NOW()),

-- Listing: Lot 1 Pondview Ln - Vacant Land
('st000001-0000-0000-0000-000000000026', 'REDFIN', '73339839', 'https://www.redfin.com/MA/Stoughton/1-Pondview-Ln-02072/home/173464440', '73339839',
'MLS Listing', 'Active', NULL, '2025-03-02', 304,
'Lot 1 Pondview Ln', 'Lot 1 Pondview Ln', NULL, 'Stoughton', 'MA', '02072',
'Stoughton', 42.1464309, -71.0851782,
'Vacant Land', NULL, NULL, NULL, 29393, NULL,
259900.00, NULL, NULL, NULL,
NULL, NULL,
'{"SALE TYPE": "MLS Listing", "PROPERTY TYPE": "Vacant Land", "ADDRESS": "Lot 1 Pondview Ln", "CITY": "Stoughton", "STATE OR PROVINCE": "MA", "ZIP OR POSTAL CODE": "02072", "PRICE": "259900", "LOCATION": "Stoughton", "LOT SIZE": "29393", "DAYS ON MARKET": "304", "STATUS": "Active", "URL": "https://www.redfin.com/MA/Stoughton/1-Pondview-Ln-02072/home/173464440", "SOURCE": "MLS PIN", "MLS#": "73339839", "INTERESTED": "Y", "LATITUDE": "42.1464309", "LONGITUDE": "-71.0851782"}',
NOW(), NOW(), NOW());

-- Insert user market listing preferences for testuser@test.com
-- User has marked listings as interested
INSERT INTO user_market_listing_preferences (
    user_id, listing_id,
    is_interested,
    notes,
    created_at, updated_at
) VALUES
-- Interested: 23 Myrtle St - Multi-Family
('11111111-1111-1111-1111-111111111111', 'fe1bdb55-f73e-48f1-859d-25b60d169050',
TRUE,
'Great potential for rental income. Located in North Quincy near T station.',
NOW(), NOW()),

-- Interested: 297 Billings St - Multi-Family
('11111111-1111-1111-1111-111111111111', '2cb061d0-1b49-4447-b029-cc1663c025a4',
TRUE,
'Solid multi-family investment opportunity. Good price per sqft.',
NOW(), NOW()),

-- Interested: 133 Commander Shea Blvd #204 - Condo
('11111111-1111-1111-1111-111111111111', 'a1d26d2a-eb9a-4f3e-9659-c73997a7720b',
TRUE,
'Affordable starter unit. Need to check HOA fees and building condition.',
NOW(), NOW()),

-- Interested: 212-A Quincy Shore Dr - Single Family
('11111111-1111-1111-1111-111111111111', '06643e6c-5608-4586-b302-21443a8e7e73',
TRUE,
'Waterfront location. Might need renovation budget.',
NOW(), NOW()),

-- Interested: 138 Quincy Shore Dr #170 - Townhouse
('11111111-1111-1111-1111-111111111111', 'a995fa97-9e34-4a86-91e6-e8dec79735f0',
TRUE,
'Townhouse with extra bathrooms. Good for family rental.',
NOW(), NOW()),

-- Interested: 17 Holmes St #4 - Condo
('11111111-1111-1111-1111-111111111111', 'a8e3ac0a-a3ab-42fd-bbb5-31d026b33361',
TRUE,
'Brand new construction in 2025! High-end finishes. Top priority to visit.',
NOW(), NOW()),

-- Interested: 60 Newbury St #10 - Condo
('11111111-1111-1111-1111-111111111111', 'ba419027-f69f-4a92-8da4-b6e6bd601074',
TRUE,
'Modern building, good location. Price seems a bit high.',
NOW(), NOW());

-- Insert custom market listing lists for testuser@test.com
INSERT INTO user_market_listing_lists (
    id, user_id,
    name, description, color,
    created_at, updated_at
) VALUES
-- List 1: Multi-Family Targets
('ffffffff-1111-1111-1111-111111111111', '11111111-1111-1111-1111-111111111111',
'Multi-Family Targets', 'Properties with multiple units for rental income generation', '#4CAF50',
NOW(), NOW()),

-- List 2: High-End Condos
('ffffffff-2222-2222-2222-222222222222', '11111111-1111-1111-1111-111111111111',
'High-End Condos', 'Premium condos for personal residence or luxury rental', '#2196F3',
NOW(), NOW()),

-- List 3: Waterfront Properties
('ffffffff-3333-3333-3333-333333333333', '11111111-1111-1111-1111-111111111111',
'Waterfront Properties', 'Quincy Shore Drive and Marina Bay listings', '#FF9800',
NOW(), NOW()),

-- List 4: Bridgewater Multi-Family
('ffffffff-4444-4444-4444-444444444444', '11111111-1111-1111-1111-111111111111',
'Bridgewater Multi-Family', 'Multi-family investment properties in Bridgewater', '#E91E63',
NOW(), NOW()),

-- List 5: New Construction Bridgewater
('ffffffff-5555-5555-5555-555555555555', '11111111-1111-1111-1111-111111111111',
'New Construction Bridgewater', 'Brand new homes and recent builds in Bridgewater', '#9C27B0',
NOW(), NOW()),

-- List 6: Duxburrow Estates
('ffffffff-6666-6666-6666-666666666666', '11111111-1111-1111-1111-111111111111',
'Duxburrow Estates', 'Premium Duxburrow Estates community homes', '#3F51B5',
NOW(), NOW()),

-- List 7: Affordable Bridgewater
('ffffffff-7777-7777-7777-777777777777', '11111111-1111-1111-1111-111111111111',
'Affordable Bridgewater', 'Budget-friendly properties under $400k in Bridgewater', '#00BCD4',
NOW(), NOW()),

-- List 8: Investment Land
('ffffffff-8888-8888-8888-888888888888', '11111111-1111-1111-1111-111111111111',
'Investment Land', 'Vacant land opportunities for development', '#4CAF50',
NOW(), NOW()),

-- List 9: Stoughton Multi-Family
('ffffffff-9999-9999-9999-999999999999', '11111111-1111-1111-1111-111111111111',
'Stoughton Multi-Family', 'Multi-family apartment buildings in Stoughton', '#FF5722',
NOW(), NOW()),

-- List 10: Stoughton Townhouses
('ffffffff-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111',
'Stoughton Townhouses', 'Townhouse and condo communities in Stoughton', '#795548',
NOW(), NOW()),

-- List 11: New Construction Stoughton
('ffffffff-bbbb-bbbb-bbbb-bbbbbbbbbbbb', '11111111-1111-1111-1111-111111111111',
'New Construction Stoughton', 'Brand new and under-construction homes in Stoughton', '#607D8B',
NOW(), NOW()),

-- List 12: Luxury Stoughton Homes
('ffffffff-cccc-cccc-cccc-cccccccccccc', '11111111-1111-1111-1111-111111111111',
'Luxury Stoughton Homes', 'High-end properties over $1M in Stoughton', '#9E9D24',
NOW(), NOW());

-- Insert list items - associating listings with custom lists
INSERT INTO user_market_listing_list_items (
    list_id, listing_id,
    added_at
) VALUES
-- Multi-Family Targets list (Quincy)
('ffffffff-1111-1111-1111-111111111111', 'fe1bdb55-f73e-48f1-859d-25b60d169050', NOW()),  -- 23 Myrtle St
('ffffffff-1111-1111-1111-111111111111', '2cb061d0-1b49-4447-b029-cc1663c025a4', NOW()),  -- 297 Billings St

-- High-End Condos list (Quincy)
('ffffffff-2222-2222-2222-222222222222', 'a8e3ac0a-a3ab-42fd-bbb5-31d026b33361', NOW()),  -- 17 Holmes St #4 (new construction)
('ffffffff-2222-2222-2222-222222222222', 'ba419027-f69f-4a92-8da4-b6e6bd601074', NOW()),  -- 60 Newbury St #10
('ffffffff-2222-2222-2222-222222222222', 'ba0a87f2-6365-454b-9ef9-02235256fc48', NOW()),  -- 1001 Marina Dr #801

-- Waterfront Properties list (Quincy)
('ffffffff-3333-3333-3333-333333333333', '06643e6c-5608-4586-b302-21443a8e7e73', NOW()),  -- 212-A Quincy Shore Dr
('ffffffff-3333-3333-3333-333333333333', 'a995fa97-9e34-4a86-91e6-e8dec79735f0', NOW()),  -- 138 Quincy Shore Dr #170
('ffffffff-3333-3333-3333-333333333333', 'c93885e1-5873-44fb-b549-038a88ffc15b', NOW()),  -- 90 Quincy Shore Dr #501
('ffffffff-3333-3333-3333-333333333333', '29bea9de-79ee-4abd-a139-45bc1b88b7d7', NOW()),  -- 90 Quincy Shore Dr #701
('ffffffff-3333-3333-3333-333333333333', '4f234217-56b9-41a7-b1d5-88e459fd6d94', NOW()),  -- 19 Harbourside Rd #19 (Marina Bay)
('ffffffff-3333-3333-3333-333333333333', '861445c0-0de0-4819-9df2-8aa4fc366c87', NOW()),  -- 2001 Marina Dr #211 (Marina Bay)

-- Bridgewater Multi-Family list
('ffffffff-4444-4444-4444-444444444444', 'bw000001-0000-0000-0000-000000000001', NOW()),  -- 48 Wall St
('ffffffff-4444-4444-4444-444444444444', 'bw000001-0000-0000-0000-000000000017', NOW()),  -- 18 Aldrich Rd
('ffffffff-4444-4444-4444-444444444444', 'bw000001-0000-0000-0000-000000000019', NOW()),  -- 130 Maple Ave

-- New Construction Bridgewater list
('ffffffff-5555-5555-5555-555555555555', 'bw000001-0000-0000-0000-000000000007', NOW()),  -- 580 Broad St #1 (2025)
('ffffffff-5555-5555-5555-555555555555', 'bw000001-0000-0000-0000-000000000008', NOW()),  -- 580 Broad St #2 (2025)
('ffffffff-5555-5555-5555-555555555555', 'bw000001-0000-0000-0000-000000000009', NOW()),  -- 37 Titicut Ave Lot 34 (2026)
('ffffffff-5555-5555-5555-555555555555', 'bw000001-0000-0000-0000-000000000010', NOW()),  -- 1 Jennifer Cir (2025)
('ffffffff-5555-5555-5555-555555555555', 'bw000001-0000-0000-0000-000000000022', NOW()),  -- 32 Titicut Ave Lot 48 (2025)
('ffffffff-5555-5555-5555-555555555555', 'bw000001-0000-0000-0000-000000000026', NOW()),  -- 73 Pratt Ave (2025)

-- Duxburrow Estates list
('ffffffff-6666-6666-6666-666666666666', 'bw000001-0000-0000-0000-000000000009', NOW()),  -- 37 Titicut Ave Lot 34
('ffffffff-6666-6666-6666-666666666666', 'bw000001-0000-0000-0000-000000000011', NOW()),  -- 60 Titicut Ave Lot 41
('ffffffff-6666-6666-6666-666666666666', 'bw000001-0000-0000-0000-000000000016', NOW()),  -- 73 Pratt Ave Lot 126
('ffffffff-6666-6666-6666-666666666666', 'bw000001-0000-0000-0000-000000000022', NOW()),  -- 32 Titicut Ave Lot 48

-- Affordable Bridgewater list (under $400k)
('ffffffff-7777-7777-7777-777777777777', 'bw000001-0000-0000-0000-000000000004', NOW()),  -- 220 Bedford St #32 ($319,900)
('ffffffff-7777-7777-7777-777777777777', 'bw000001-0000-0000-0000-000000000006', NOW()),  -- 180 Main St Unit D80 ($237,500)
('ffffffff-7777-7777-7777-777777777777', 'bw000001-0000-0000-0000-000000000012', NOW()),  -- 96 Trailwood Dr ($269,900)
('ffffffff-7777-7777-7777-777777777777', 'bw000001-0000-0000-0000-000000000014', NOW()),  -- 180 Main St Unit A-15 ($309,900)
('ffffffff-7777-7777-7777-777777777777', 'bw000001-0000-0000-0000-000000000015', NOW()),  -- 23 Stone Meadow Dr ($365,000)

-- Investment Land list
('ffffffff-8888-8888-8888-888888888888', 'bw000001-0000-0000-0000-000000000013', NOW()),  -- Lot 1 Mill
('ffffffff-8888-8888-8888-888888888888', 'bw000001-0000-0000-0000-000000000023', NOW()),  -- Lot 2 Fontana Way
('ffffffff-8888-8888-8888-888888888888', 'st000001-0000-0000-0000-000000000011', NOW()),  -- Lot 4 West St
('ffffffff-8888-8888-8888-888888888888', 'st000001-0000-0000-0000-000000000025', NOW()),  -- 1600 West St
('ffffffff-8888-8888-8888-888888888888', 'st000001-0000-0000-0000-000000000026', NOW()),  -- Lot 1 Pondview Ln

-- Stoughton Multi-Family list
('ffffffff-9999-9999-9999-999999999999', 'st000001-0000-0000-0000-000000000003', NOW()),  -- 293 School St (15 units)
('ffffffff-9999-9999-9999-999999999999', 'st000001-0000-0000-0000-000000000010', NOW()),  -- 84 Pearl St (8 units)
('ffffffff-9999-9999-9999-999999999999', 'st000001-0000-0000-0000-000000000012', NOW()),  -- 100 Water St (40 units)
('ffffffff-9999-9999-9999-999999999999', 'st000001-0000-0000-0000-000000000022', NOW()),  -- 15-17 Morton Sq

-- Stoughton Townhouses list
('ffffffff-aaaa-aaaa-aaaa-aaaaaaaaaaaa', 'st000001-0000-0000-0000-000000000001', NOW()),  -- 27 Rosewood Dr #27
('ffffffff-aaaa-aaaa-aaaa-aaaaaaaaaaaa', 'st000001-0000-0000-0000-000000000007', NOW()),  -- 133 Greenbrook Dr #133
('ffffffff-aaaa-aaaa-aaaa-aaaaaaaaaaaa', 'st000001-0000-0000-0000-000000000017', NOW()),  -- 64 Laurelwood Dr #64
('ffffffff-aaaa-aaaa-aaaa-aaaaaaaaaaaa', 'st000001-0000-0000-0000-000000000019', NOW()),  -- 59 Rosewood Dr #59
('ffffffff-aaaa-aaaa-aaaa-aaaaaaaaaaaa', 'st000001-0000-0000-0000-000000000013', NOW()),  -- 28 Faxon St #4
('ffffffff-aaaa-aaaa-aaaa-aaaaaaaaaaaa', 'st000001-0000-0000-0000-000000000024', NOW()),  -- 26 Faxon St #2

-- New Construction Stoughton list
('ffffffff-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 'st000001-0000-0000-0000-000000000002', NOW()),  -- 870 Turnpike St (2025)
('ffffffff-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 'st000001-0000-0000-0000-000000000009', NOW()),  -- 93 Palisades Cir (2025)
('ffffffff-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 'st000001-0000-0000-0000-000000000015', NOW()),  -- 25 Lawler Ln (2026)
('ffffffff-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 'st000001-0000-0000-0000-000000000016', NOW()),  -- 15 Lawler Ln (2026)
('ffffffff-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 'st000001-0000-0000-0000-000000000021', NOW()),  -- 4 Eagle Rock Ext (2027)

-- Luxury Stoughton Homes list (over $1M)
('ffffffff-cccc-cccc-cccc-cccccccccccc', 'st000001-0000-0000-0000-000000000009', NOW()),  -- 93 Palisades Cir ($1,499,900)
('ffffffff-cccc-cccc-cccc-cccccccccccc', 'st000001-0000-0000-0000-000000000010', NOW()),  -- 84 Pearl St ($1,488,000)
('ffffffff-cccc-cccc-cccc-cccccccccccc', 'st000001-0000-0000-0000-000000000012', NOW()),  -- 100 Water St ($7,900,000)
('ffffffff-cccc-cccc-cccc-cccccccccccc', 'st000001-0000-0000-0000-000000000015', NOW()),  -- 25 Lawler Ln ($1,325,000)
('ffffffff-cccc-cccc-cccc-cccccccccccc', 'st000001-0000-0000-0000-000000000016', NOW()),  -- 15 Lawler Ln ($1,225,000)
('ffffffff-cccc-cccc-cccc-cccccccccccc', 'st000001-0000-0000-0000-000000000021', NOW());  -- 4 Eagle Rock Ext ($1,695,713)

