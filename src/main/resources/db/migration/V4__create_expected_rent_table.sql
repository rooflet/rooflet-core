-- Create expected_rent table for storing rent expectations by zip code and bedroom count
-- Data source: Boston Housing Authority Payment Standard Chart
-- Effective July 1, 2025

CREATE TABLE expected_rent (
    id UUID PRIMARY KEY,
    zip_code VARCHAR(10) NOT NULL,
    bedrooms INT NOT NULL,
    expected_rent DECIMAL(10,2) NOT NULL,

    -- Metadata
    source VARCHAR(100) DEFAULT 'Boston Housing Authority Payment Standard' NOT NULL,
    effective_date DATE NOT NULL,

    -- Audit fields
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,

    -- Unique constraint to prevent duplicate entries
    CONSTRAINT uk_expected_rent_zip_bedrooms UNIQUE (zip_code, bedrooms, effective_date)
);

-- Create indexes for expected_rent
CREATE INDEX idx_expected_rent_zip ON expected_rent(zip_code);
CREATE INDEX idx_expected_rent_bedrooms ON expected_rent(bedrooms);
CREATE INDEX idx_expected_rent_zip_bedrooms ON expected_rent(zip_code, bedrooms);
CREATE INDEX idx_expected_rent_effective_date ON expected_rent(effective_date);

