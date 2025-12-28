-- Create market_listings table for storing property listings from various sources
-- This table will be populated by periodic scrapers from sources like Redfin, Zillow, etc.

CREATE TABLE market_listings (
    id UUID PRIMARY KEY,

    -- Source information
    source VARCHAR(50) NOT NULL,                    -- e.g., 'REDFIN', 'ZILLOW', 'REALTOR'
    source_listing_id VARCHAR(255),                 -- External listing ID from the source
    source_url TEXT,                                -- URL to the listing on the source website
    source_mls_number VARCHAR(100),                 -- MLS listing number if available

    -- Sale information
    sale_type VARCHAR(50),                          -- e.g., 'MLS Listing', 'For Sale by Owner', etc.
    listing_status VARCHAR(50) NOT NULL,            -- e.g., 'ACTIVE', 'PENDING', 'SOLD', 'OFF_MARKET'
    sold_date DATE,                                 -- Date property was sold (if applicable)
    list_date DATE,                                 -- Date property was listed
    days_on_market INT,                             -- Number of days on market

    -- Address information
    address VARCHAR(500) NOT NULL,                  -- Full address as provided by source
    address1 VARCHAR(255),                          -- Parsed primary address
    address2 VARCHAR(255),                          -- Parsed secondary address (unit, apt, etc.)
    city VARCHAR(100) NOT NULL,
    state VARCHAR(2) NOT NULL,
    zip_code VARCHAR(10) NOT NULL,
    location VARCHAR(100),                          -- Neighborhood or area name
    latitude DECIMAL(10, 8),                        -- Geographic latitude
    longitude DECIMAL(11, 8),                       -- Geographic longitude

    -- Property details
    property_type VARCHAR(100) NOT NULL,            -- e.g., 'Single Family', 'Condo', 'Multi-Family', 'Townhouse', 'Vacant Land'
    bedrooms INT,                                   -- Number of bedrooms (null for land/commercial)
    bathrooms DECIMAL(4,1),                         -- Number of bathrooms (includes half baths)
    square_feet INT,                                -- Interior square footage
    lot_size INT,                                   -- Lot size in square feet
    year_built INT,                                 -- Year property was built

    -- Pricing information
    price DECIMAL(15,2),                            -- Current listing price or sold price
    price_per_sqft DECIMAL(10,2),                   -- Price per square foot
    original_list_price DECIMAL(15,2),              -- Original listing price (for price history)

    -- HOA and fees
    hoa_fee DECIMAL(10,2),                          -- Monthly HOA fee

    -- Open house information
    next_open_house_start TIMESTAMP,                -- Next open house start time
    next_open_house_end TIMESTAMP,                  -- Next open house end time

    -- Additional flags and metadata
    is_favorite BOOLEAN DEFAULT FALSE,              -- User favorited flag
    is_interested BOOLEAN DEFAULT FALSE,            -- User interested flag
    raw_data TEXT,                                  -- JSON/text storage for additional source-specific fields

    -- Audit fields
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    last_scraped_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,

    -- Constraints
    CONSTRAINT uk_market_listings_source UNIQUE (source, source_listing_id)
);

-- Create indexes for efficient querying
CREATE INDEX idx_market_listings_source ON market_listings(source);
CREATE INDEX idx_market_listings_status ON market_listings(listing_status);
CREATE INDEX idx_market_listings_location ON market_listings(city, state, zip_code);
CREATE INDEX idx_market_listings_property_type ON market_listings(property_type);
CREATE INDEX idx_market_listings_price ON market_listings(price);
CREATE INDEX idx_market_listings_bedrooms_bathrooms ON market_listings(bedrooms, bathrooms);
CREATE INDEX idx_market_listings_scraped_at ON market_listings(last_scraped_at);
CREATE INDEX idx_market_listings_days_on_market ON market_listings(days_on_market);
CREATE INDEX idx_market_listings_coordinates ON market_listings(latitude, longitude);

