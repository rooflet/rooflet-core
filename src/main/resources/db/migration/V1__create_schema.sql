-- Consolidated database schema migration with UUID primary keys
-- Compatible with both H2 and MySQL
-- Creates all tables for the rooflet property management system

-- Create users table
CREATE TABLE users (
    id UUID PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL DEFAULT '',
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT uk_users_email UNIQUE (email)
);

-- Create portfolios table
CREATE TABLE portfolios (
    id UUID PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    archived BOOLEAN DEFAULT FALSE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create portfolio_members table (join table between users and portfolios with roles)
CREATE TABLE portfolio_members (
    id UUID PRIMARY KEY,
    portfolio_id UUID NOT NULL,
    user_id UUID NOT NULL,
    role VARCHAR(20) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT uk_portfolio_user UNIQUE (portfolio_id, user_id),
    CONSTRAINT fk_portfolio_members_portfolio FOREIGN KEY (portfolio_id) REFERENCES portfolios(id) ON DELETE CASCADE,
    CONSTRAINT fk_portfolio_members_user FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

-- Create properties table
CREATE TABLE properties (
    id UUID PRIMARY KEY,
    user_id UUID NOT NULL,
    portfolio_id UUID,

    -- Address fields
    address1 VARCHAR(255) NOT NULL,
    address2 VARCHAR(255),
    city VARCHAR(100) NOT NULL,
    state VARCHAR(2) NOT NULL,
    zip_code VARCHAR(10) NOT NULL,

    -- Property details
    property_type VARCHAR(50) NOT NULL,
    bedrooms INT,
    bathrooms DECIMAL(3,1),
    square_feet INT,

    -- Financial information
    market_value DECIMAL(12,2),
    purchase_price DECIMAL(12,2),
    purchase_date DATE,
    debt DECIMAL(12,2),
    interest_rate DECIMAL(5,2),

    -- Monthly costs
    monthly_hoa DECIMAL(10,2),
    monthly_property_tax DECIMAL(10,2),
    monthly_insurance DECIMAL(10,2),

    -- Additional fields
    notes TEXT,
    archived BOOLEAN DEFAULT FALSE,

    -- Audit fields
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    -- Foreign key constraints
    CONSTRAINT fk_properties_user FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    CONSTRAINT fk_properties_portfolio FOREIGN KEY (portfolio_id) REFERENCES portfolios(id)
);

-- Create tenants table
CREATE TABLE tenants (
    id UUID PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255),
    phone_number VARCHAR(20),
    property_id UUID,

    -- Lease information
    lease_start_date DATE,
    lease_end_date DATE,

    -- Monthly rent
    monthly_rent DECIMAL(10,2) NOT NULL,

    -- Additional fields
    archived BOOLEAN DEFAULT FALSE,

    -- Audit fields
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    -- Foreign key constraint (nullable - tenant may not be associated with property)
    CONSTRAINT fk_tenants_property FOREIGN KEY (property_id) REFERENCES properties(id) ON DELETE SET NULL
);

-- Create expenses table
CREATE TABLE expenses (
    id UUID PRIMARY KEY,
    property_id UUID,
    user_id UUID,

    -- Expense details
    expense_date DATE NOT NULL,
    category VARCHAR(50) NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    description TEXT,

    -- Audit fields
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    -- Foreign key constraints
    CONSTRAINT fk_expenses_property FOREIGN KEY (property_id) REFERENCES properties(id) ON DELETE SET NULL,
    CONSTRAINT fk_expenses_user FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

-- Create rent_collections table
CREATE TABLE rent_collections (
    id UUID PRIMARY KEY,
    property_id UUID NOT NULL,
    tenant_id UUID NOT NULL,

    -- Payment details
    expected_amount DECIMAL(10,2) NOT NULL,
    paid_amount DECIMAL(10,2) DEFAULT 0.00,
    payment_date DATE,

    -- Status and notes
    notes TEXT,

    -- Audit fields
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    -- Foreign key constraints
    CONSTRAINT fk_rent_collections_property FOREIGN KEY (property_id) REFERENCES properties(id) ON DELETE CASCADE,
    CONSTRAINT fk_rent_collections_tenant FOREIGN KEY (tenant_id) REFERENCES tenants(id) ON DELETE CASCADE
);

-- Create feedback table
CREATE TABLE feedback (
    id UUID PRIMARY KEY,
    feedback_type VARCHAR(255) NOT NULL,
    message TEXT NOT NULL,
    current_page VARCHAR(255) NOT NULL,
    user_id UUID,
    created_at TIMESTAMP NOT NULL,
    CONSTRAINT fk_feedback_user FOREIGN KEY (user_id) REFERENCES users(id)
);

-- Create indexes for better query performance
CREATE INDEX idx_portfolio_members_portfolio ON portfolio_members(portfolio_id);
CREATE INDEX idx_portfolio_members_user ON portfolio_members(user_id);
CREATE INDEX idx_portfolios_archived ON portfolios(archived);
CREATE INDEX idx_properties_user ON properties(user_id);
CREATE INDEX idx_properties_portfolio ON properties(portfolio_id);
CREATE INDEX idx_tenants_property ON tenants(property_id);
CREATE INDEX idx_expenses_property ON expenses(property_id);
CREATE INDEX idx_expenses_user ON expenses(user_id);
CREATE INDEX idx_rent_collections_property ON rent_collections(property_id);
CREATE INDEX idx_rent_collections_tenant ON rent_collections(tenant_id);
CREATE INDEX idx_feedback_user ON feedback(user_id);

