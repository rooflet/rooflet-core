-- Create user_zip_code_preferences table for tracking which zip codes users want to watch
-- This enables filtering market listings to only show data from user-selected zip codes

CREATE TABLE user_zip_code_preferences (
    user_id UUID NOT NULL,
    zip_code VARCHAR(10) NOT NULL,

    -- Audit field
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,

    -- Composite primary key
    PRIMARY KEY (user_id, zip_code),

    -- Foreign key constraint with cascade delete
    CONSTRAINT fk_user_zip_pref_user FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

-- Create index for faster lookups by user
CREATE INDEX idx_user_zip_pref_user ON user_zip_code_preferences(user_id);

-- Create index for faster lookups by zip code
CREATE INDEX idx_user_zip_pref_zip ON user_zip_code_preferences(zip_code);

