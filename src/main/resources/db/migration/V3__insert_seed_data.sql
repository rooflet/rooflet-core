-- Seed data for rooflet property management system
-- Compatible with both H2 and MySQL
-- Contains sample data for testing and development

-- Note: UUIDs are represented as UUID type in the database
-- For H2: Use string format '11111111-1111-1111-1111-111111111111'
-- For MySQL: Use string format and configure to handle UUIDs

-- Insert sample users
-- User 1: testuser@test.com
INSERT INTO users (id, full_name, email, password, created_at, updated_at) VALUES
('11111111-1111-1111-1111-111111111111', 'U1 Robert Kraft', 'testuser@test.com', '$2a$12$OSploWe43Vi.qVlTVA/One96iuaIpoLq1/Msqk/dY8NmPrNGHpxxO', NOW(), NOW());
-- Password is 'password123' hashed with BCrypt cost factor 12

-- User 2: testuser1@test.com
INSERT INTO users (id, full_name, email, password, created_at, updated_at) VALUES
('22222222-2222-2222-2222-222222222222', 'U2 John Smith', 'testuser1@test.com', '$2a$12$OSploWe43Vi.qVlTVA/One96iuaIpoLq1/Msqk/dY8NmPrNGHpxxO', NOW(), NOW());
-- Password is 'password123' hashed with BCrypt cost factor 12

-- Create default portfolios for users
INSERT INTO portfolios (id, name, description, archived, created_at, updated_at) VALUES
('33333333-3333-3333-3333-333333333333', 'U1 Robert Kraft''s Portfolio', 'Default portfolio created during migration', FALSE, NOW(), NOW()),
('44444444-4444-4444-4444-444444444444', 'U2 John Smith''s Portfolio', 'Default portfolio created during migration', FALSE, NOW(), NOW());

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

