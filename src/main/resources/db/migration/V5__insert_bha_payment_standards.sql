-- Insert BHA Payment Standards seed data into expected_rent table
-- Data source: Boston Housing Authority Payment Standard Chart
-- Effective July 1, 2025

-- Abington 02351
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02351', 0, 1450.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02351', 1, 1520.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02351', 2, 1980.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02351', 3, 2509.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02351', 4, 2714.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02351', 5, 3120.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02351', 6, 3527.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Acton 01720
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '01720', 0, 2323.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01720', 1, 2496.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01720', 2, 2969.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01720', 3, 3589.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01720', 4, 3954.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01720', 5, 4546.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01720', 6, 5139.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Acushnet 02743
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02743', 0, 1136.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02743', 1, 1236.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02743', 2, 1521.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02743', 3, 1833.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02743', 4, 2193.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02743', 5, 2522.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02743', 6, 2850.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Amesbury 01913
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '01913', 0, 2323.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01913', 1, 2496.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01913', 2, 2969.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01913', 3, 3589.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01913', 4, 3954.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01913', 5, 4546.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01913', 6, 5139.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Andover 01810
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '01810', 0, 1796.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01810', 1, 2058.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01810', 2, 2657.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01810', 3, 3224.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01810', 4, 3539.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01810', 5, 4069.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01810', 6, 4601.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Arlington 02474
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02474', 0, 2468.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02474', 1, 2646.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02474', 2, 3150.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02474', 3, 3812.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02474', 4, 4200.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02474', 5, 4830.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02474', 6, 5460.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Arlington 02476
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02476', 0, 2323.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02476', 1, 2496.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02476', 2, 2969.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02476', 3, 3589.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02476', 4, 3954.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02476', 5, 4546.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02476', 6, 5139.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Ashland 01721
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '01721', 0, 2375.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01721', 1, 2552.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01721', 2, 3035.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01721', 3, 3669.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01721', 4, 4042.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01721', 5, 4647.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01721', 6, 5254.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Attleboro 02703
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02703', 0, 1502.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02703', 1, 1610.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02703', 2, 1974.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02703', 3, 2384.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02703', 4, 2870.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02703', 5, 3406.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02703', 6, 3750.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Avon 02322
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02322', 0, 1461.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02322', 1, 1561.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02322', 2, 2050.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02322', 3, 2600.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02322', 4, 2913.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02322', 5, 3350.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02322', 6, 3787.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Ayer 01432
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '01432', 0, 2102.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01432', 1, 2259.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01432', 2, 2686.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01432', 3, 3248.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01432', 4, 3578.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01432', 5, 4114.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01432', 6, 4650.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Bedford 01730
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '01730', 0, 2646.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01730', 1, 2846.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01730', 2, 3381.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01730', 3, 4085.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01730', 4, 4505.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01730', 5, 5180.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01730', 6, 5856.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Bellingham 02019
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02019', 0, 2102.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02019', 1, 2259.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02019', 2, 2686.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02019', 3, 3248.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02019', 4, 3578.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02019', 5, 4114.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02019', 6, 4650.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Belmont 02478
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02478', 0, 2699.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02478', 1, 2909.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02478', 2, 3455.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02478', 3, 4180.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02478', 4, 4600.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02478', 5, 5290.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02478', 6, 5980.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Berkley 02779
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02779', 0, 1418.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02779', 1, 1569.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02779', 2, 2058.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02779', 3, 2607.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02779', 4, 2729.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02779', 5, 3138.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02779', 6, 3548.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Beverly 01915
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '01915', 0, 2324.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01915', 1, 2497.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01915', 2, 2969.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01915', 3, 3590.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01915', 4, 3955.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01915', 5, 4547.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01915', 6, 5140.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Billerica 01821
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '01821', 0, 1400.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01821', 1, 1560.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01821', 2, 2020.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01821', 3, 2434.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01821', 4, 2678.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01821', 5, 3079.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01821', 6, 3481.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Bolton 01740
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '01740', 0, 1649.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01740', 1, 1796.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01740', 2, 2268.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01740', 3, 2993.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01740', 4, 3381.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01740', 5, 3889.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01740', 6, 4396.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Boston 02109
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02109', 0, 3486.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02109', 1, 3749.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02109', 2, 4452.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02109', 3, 5387.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02109', 4, 5933.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02109', 5, 6822.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02109', 6, 7713.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Boston - Allston 02134
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02134', 0, 2426.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02134', 1, 2607.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02134', 2, 3100.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02134', 3, 3749.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02134', 4, 4129.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02134', 5, 4748.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02134', 6, 5367.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Boston - Back Bay 02116
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02116', 0, 3455.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02116', 1, 3718.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02116', 2, 4421.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02116', 3, 5346.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02116', 4, 5892.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02116', 5, 6775.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02116', 6, 7659.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Boston - Beacon Hill 02108
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02108', 0, 3266.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02108', 1, 3450.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02108', 2, 4100.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02108', 3, 4950.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02108', 4, 5450.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02108', 5, 6250.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02108', 6, 7000.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Boston - Brighton 02135
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02135', 0, 2560.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02135', 1, 2750.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02135', 2, 3270.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02135', 3, 3950.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02135', 4, 4350.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02135', 5, 5002.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02135', 6, 5655.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Boston - Charlestown 02129
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02129', 0, 2920.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02129', 1, 3140.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02129', 2, 3730.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02129', 3, 4510.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02129', 4, 4970.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02129', 5, 5715.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02129', 6, 6461.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Boston - Chinatown 02111
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02111', 0, 3030.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02111', 1, 3250.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02111', 2, 3870.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02111', 3, 4680.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02111', 4, 5150.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02111', 5, 5922.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02111', 6, 6695.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Boston - Dorchester 02122
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02122', 0, 2212.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02122', 1, 2377.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02122', 2, 2827.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02122', 3, 3418.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02122', 4, 3765.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02122', 5, 4329.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02122', 6, 4894.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Boston - Dorchester 02124
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02124', 0, 2212.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02124', 1, 2377.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02124', 2, 2827.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02124', 3, 3418.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02124', 4, 3765.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02124', 5, 4329.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02124', 6, 4894.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Boston - Dorchester 02125
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02125', 0, 2212.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02125', 1, 2377.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02125', 2, 2827.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02125', 3, 3418.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02125', 4, 3765.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02125', 5, 4329.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02125', 6, 4894.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Boston - Dorchester / Roxbury 02121
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02121', 0, 2212.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02121', 1, 2377.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02121', 2, 2827.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02121', 3, 3418.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02121', 4, 3765.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02121', 5, 4329.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02121', 6, 4894.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Boston - Downtown 02199
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02199', 0, 3486.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02199', 1, 3749.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02199', 2, 4452.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02199', 3, 5387.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02199', 4, 5933.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02199', 5, 6822.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02199', 6, 7713.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Boston - East Boston 02128
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02128', 0, 2212.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02128', 1, 2377.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02128', 2, 2827.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02128', 3, 3418.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02128', 4, 3765.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02128', 5, 4329.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02128', 6, 4894.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Boston - Fenway 02115
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02115', 0, 2426.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02115', 1, 2607.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02115', 2, 3100.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02115', 3, 3749.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02115', 4, 4129.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02115', 5, 4748.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02115', 6, 5367.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Boston - Financial District 02110
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02110', 0, 3486.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02110', 1, 3749.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02110', 2, 4452.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02110', 3, 5387.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02110', 4, 5933.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02110', 5, 6822.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02110', 6, 7713.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Boston - Harvard Business 02163
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02163', 0, 3210.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02163', 1, 3450.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02163', 2, 4130.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02163', 3, 4960.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02163', 4, 5460.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02163', 5, 6279.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02163', 6, 7098.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Boston - Hyde Park 02136
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02136', 0, 2324.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02136', 1, 2497.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02136', 2, 2969.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02136', 3, 3590.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02136', 4, 3955.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02136', 5, 4547.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02136', 6, 5140.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Boston - Jamaica Plain 02130
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02130', 0, 2500.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02130', 1, 2680.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02130', 2, 3190.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02130', 3, 3860.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02130', 4, 4250.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02130', 5, 4887.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02130', 6, 5525.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Boston - Kenmore 02215
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02215', 0, 2950.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02215', 1, 3170.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02215', 2, 3770.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02215', 3, 4560.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02215', 4, 5020.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02215', 5, 5773.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02215', 6, 6526.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Boston - Mattapan 02126
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02126', 0, 2212.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02126', 1, 2377.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02126', 2, 2827.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02126', 3, 3418.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02126', 4, 3765.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02126', 5, 4329.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02126', 6, 4894.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Boston - North End 02113
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02113', 0, 2836.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02113', 1, 3046.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02113', 2, 3623.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02113', 3, 4380.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02113', 4, 4821.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02113', 5, 5543.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02113', 6, 6267.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Boston - Roslindale 02131
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02131', 0, 2324.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02131', 1, 2497.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02131', 2, 2969.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02131', 3, 3590.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02131', 4, 3955.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02131', 5, 4547.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02131', 6, 5140.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Boston - Roxbury 02119
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02119', 0, 2212.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02119', 1, 2377.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02119', 2, 2827.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02119', 3, 3418.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02119', 4, 3765.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02119', 5, 4329.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02119', 6, 4894.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Boston - Roxbury 02120
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02120', 0, 2230.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02120', 1, 2397.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02120', 2, 2850.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02120', 3, 3446.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02120', 4, 3796.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02120', 5, 4365.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02120', 6, 4934.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Boston - Seaport 02210
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02210', 0, 3320.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02210', 1, 3570.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02210', 2, 4240.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02210', 3, 5130.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02210', 4, 5650.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02210', 5, 6497.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02210', 6, 7345.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Boston - South Boston 02127
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02127', 0, 2794.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02127', 1, 3003.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02127', 2, 3575.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02127', 3, 4323.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02127', 4, 4763.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02127', 5, 5477.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02127', 6, 6192.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Boston - South End / Roxbury 02118
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02118', 0, 2309.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02118', 1, 2481.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02118', 2, 2950.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02118', 3, 3600.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02118', 4, 3950.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02118', 5, 4518.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02118', 6, 5107.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Boston - West End 02114
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02114', 0, 3320.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02114', 1, 3570.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02114', 2, 4240.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02114', 3, 5130.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02114', 4, 5650.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02114', 5, 6497.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02114', 6, 7345.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Boston - West Roxbury 02132
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02132', 0, 2326.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02132', 1, 2499.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02132', 2, 2972.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02132', 3, 3594.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02132', 4, 3959.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02132', 5, 4552.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02132', 6, 5146.00, 'Boston Housing Authority Payment Standard', '2025-07-01');


-- Boxborough 01719
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '01719', 0, 2369.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01719', 1, 2506.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01719', 2, 2969.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01719', 3, 3578.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01719', 4, 3936.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01719', 5, 4527.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01719', 6, 5117.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Boxford 01921
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '01921', 0, 2101.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01921', 1, 2248.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01921', 2, 2678.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01921', 3, 3235.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01921', 4, 3561.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01921', 5, 4094.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01921', 6, 4629.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Braintree 02184
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02184', 0, 2324.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02184', 1, 2497.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02184', 2, 2969.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02184', 3, 3590.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02184', 4, 3955.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02184', 5, 4547.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02184', 6, 5140.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Bridgewater 02324
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02324', 0, 1764.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02324', 1, 1890.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02324', 2, 2478.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02324', 3, 3140.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02324', 4, 3518.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02324', 5, 4045.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02324', 6, 4573.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Brockton 02301
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02301', 0, 1450.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02301', 1, 1520.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02301', 2, 1980.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02301', 3, 2509.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02301', 4, 2714.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02301', 5, 3120.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02301', 6, 3527.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Brockton 02302
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02302', 0, 1461.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02302', 1, 1561.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02302', 2, 2050.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02302', 3, 2600.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02302', 4, 2913.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02302', 5, 3350.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02302', 6, 3787.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Brookline 02445
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02445', 0, 3234.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02445', 1, 3476.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02445', 2, 4137.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02445', 3, 4998.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02445', 4, 5513.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02445', 5, 6339.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02445', 6, 7167.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Brookline 02446
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02446', 0, 3455.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02446', 1, 3707.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02446', 2, 4410.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02446', 3, 5334.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02446', 4, 5870.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02446', 5, 6750.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02446', 6, 7631.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Burlington 01803
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '01803', 0, 2102.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01803', 1, 2259.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01803', 2, 2686.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01803', 3, 3248.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01803', 4, 3578.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01803', 5, 4114.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01803', 6, 4650.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Buzzards Bay 02532
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02532', 0, 1624.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02532', 1, 1732.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02532', 2, 2275.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02532', 3, 2777.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02532', 4, 3166.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02532', 5, 3640.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02532', 6, 4116.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Cambridge 02138
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02138', 0, 3381.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02138', 1, 3633.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02138', 2, 4326.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02138', 3, 5229.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02138', 4, 5765.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02138', 5, 6629.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02138', 6, 7494.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Cambridge 02139
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02139', 0, 3298.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02139', 1, 3539.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02139', 2, 4211.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02139', 3, 5094.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02139', 4, 5608.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02139', 5, 6449.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02139', 6, 7290.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Cambridge 02140
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02140', 0, 2993.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02140', 1, 3213.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02140', 2, 3822.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02140', 3, 4625.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02140', 4, 5100.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02140', 5, 5875.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02140', 6, 6621.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Cambridge 02141
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02141', 0, 2930.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02141', 1, 3151.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02141', 2, 3749.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02141', 3, 4537.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02141', 4, 4989.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02141', 5, 5736.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02141', 6, 6485.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Cambridge 02142
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02142', 0, 3486.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02142', 1, 3749.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02142', 2, 4452.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02142', 3, 5387.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02142', 4, 5933.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02142', 5, 6822.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02142', 6, 7713.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Canton 02021
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02021', 0, 2499.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02021', 1, 2688.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02021', 2, 3192.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02021', 3, 3864.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02021', 4, 4253.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02021', 5, 4890.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02021', 6, 5529.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Carlisle 01741
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '01741', 0, 2369.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01741', 1, 2506.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01741', 2, 2969.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01741', 3, 3578.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01741', 4, 3936.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01741', 5, 4527.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01741', 6, 5117.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Carver 02330
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02330', 0, 2102.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02330', 1, 2259.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02330', 2, 2686.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02330', 3, 3248.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02330', 4, 3578.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02330', 5, 4114.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02330', 6, 4650.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Chelmsford 01824
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '01824', 0, 1922.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01824', 1, 2080.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01824', 2, 2594.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01824', 3, 3141.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01824', 4, 3456.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01824', 5, 3973.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01824', 6, 4492.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Chelsea 02150
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02150', 0, 2102.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02150', 1, 2259.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02150', 2, 2686.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02150', 3, 3248.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02150', 4, 3578.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02150', 5, 4114.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02150', 6, 4650.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Chestnut Hill 02467
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02467', 0, 3108.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02467', 1, 3339.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02467', 2, 3969.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02467', 3, 4799.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02467', 4, 5282.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02467', 5, 6074.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02467', 6, 6866.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Cohasset 02025
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02025', 0, 2334.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02025', 1, 2508.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02025', 2, 2982.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02025', 3, 3606.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02025', 4, 3972.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02025', 5, 4567.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02025', 6, 5163.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Concord 01742
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '01742', 0, 2867.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01742', 1, 3077.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01742', 2, 3665.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01742', 3, 4432.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01742', 4, 4884.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01742', 5, 5616.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01742', 6, 6349.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Danvers 01923
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '01923', 0, 2102.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01923', 1, 2259.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01923', 2, 2686.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01923', 3, 3248.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01923', 4, 3578.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01923', 5, 4114.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01923', 6, 4650.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Dartmouth 02745
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02745', 0, 976.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02745', 1, 1145.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02745', 2, 1390.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02745', 3, 1681.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02745', 4, 1947.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02745', 5, 2239.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02745', 6, 2531.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Dartmouth 02747
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02747', 0, 1046.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02747', 1, 1138.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02747', 2, 1400.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02747', 3, 1688.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02747', 4, 2019.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02747', 5, 2322.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02747', 6, 2625.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Dartmouth 02748
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02748', 0, 1028.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02748', 1, 1119.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02748', 2, 1376.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02748', 3, 1659.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02748', 4, 1985.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02748', 5, 2282.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02748', 6, 2580.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Dedham 02026
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02026', 0, 2392.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02026', 1, 2570.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02026', 2, 3056.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02026', 3, 3695.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02026', 4, 4070.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02026', 5, 4680.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02026', 6, 5291.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Dighton 02715
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02715', 0, 1308.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02715', 1, 1469.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02715', 2, 1929.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02715', 3, 2436.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02715', 4, 2607.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02715', 5, 2997.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02715', 6, 3388.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Dover 02030
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02030', 0, 3058.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02030', 1, 3293.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02030', 2, 3910.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02030', 3, 4731.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02030', 4, 5210.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02030', 5, 5991.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02030', 6, 6773.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Dracut 01826
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '01826', 0, 1400.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01826', 1, 1560.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01826', 2, 2050.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01826', 3, 2470.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01826', 4, 2718.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01826', 5, 3125.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01826', 6, 3533.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Duxbury 02332
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02332', 0, 2375.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02332', 1, 2552.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02332', 2, 3035.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02332', 3, 3670.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02332', 4, 4043.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02332', 5, 4648.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02332', 6, 5255.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- East Bridgewater 02333
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02333', 0, 1688.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02333', 1, 1735.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02333', 2, 2263.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02333', 3, 2867.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02333', 4, 3101.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02333', 5, 3566.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02333', 6, 4031.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- East Walpole 02032
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02032', 0, 2324.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02032', 1, 2497.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02032', 2, 2969.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02032', 3, 3590.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02032', 4, 3955.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02032', 5, 4547.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02032', 6, 5140.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- East Wareham 02538
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02538', 0, 2102.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02538', 1, 2259.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02538', 2, 2686.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02538', 3, 3248.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02538', 4, 3578.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02538', 5, 4114.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02538', 6, 4650.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- East Weymouth 02189
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02189', 0, 2102.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02189', 1, 2259.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02189', 2, 2686.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02189', 3, 3248.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02189', 4, 3578.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02189', 5, 4114.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02189', 6, 4650.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Easton 02334
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02334', 0, 1730.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02334', 1, 1741.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02334', 2, 2283.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02334', 3, 2751.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02334', 4, 3334.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02334', 5, 3834.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02334', 6, 4334.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Easton 02356
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02356', 0, 1985.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02356', 1, 1999.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02356', 2, 2625.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02356', 3, 3175.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02356', 4, 3850.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02356', 5, 4408.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02356', 6, 4983.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Essex 01929
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '01929', 0, 2369.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01929', 1, 2506.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01929', 2, 2969.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01929', 3, 3578.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01929', 4, 3936.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01929', 5, 4527.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01929', 6, 5117.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Everett 02149
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02149', 0, 2102.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02149', 1, 2259.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02149', 2, 2686.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02149', 3, 3248.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02149', 4, 3578.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02149', 5, 4114.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02149', 6, 4650.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Fairhaven 02719
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02719', 0, 1136.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02719', 1, 1237.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02719', 2, 1521.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02719', 3, 1833.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02719', 4, 2194.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02719', 5, 2523.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02719', 6, 2851.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Fall River 02720
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02720', 0, 1226.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02720', 1, 1329.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02720', 2, 1609.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02720', 3, 1946.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02720', 4, 2411.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02720', 5, 2772.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02720', 6, 3133.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Fall River 02721
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02721', 0, 1226.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02721', 1, 1329.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02721', 2, 1609.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02721', 3, 1946.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02721', 4, 2411.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02721', 5, 2772.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02721', 6, 3133.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Fall River 02723
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02723', 0, 1226.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02723', 1, 1329.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02723', 2, 1609.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02723', 3, 1946.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02723', 4, 2411.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02723', 5, 2772.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02723', 6, 3133.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Fall River 02724
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02724', 0, 1226.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02724', 1, 1329.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02724', 2, 1609.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02724', 3, 1946.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02724', 4, 2411.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02724', 5, 2772.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02724', 6, 3133.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Foxboro 02035
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02035', 0, 2324.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02035', 1, 2497.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02035', 2, 2969.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02035', 3, 3590.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02035', 4, 3955.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02035', 5, 4547.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02035', 6, 5140.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Framingham 01701
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '01701', 0, 2102.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01701', 1, 2259.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01701', 2, 2686.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01701', 3, 3248.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01701', 4, 3578.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01701', 5, 4114.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01701', 6, 4650.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Framingham 01702
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '01702', 0, 2102.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01702', 1, 2259.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01702', 2, 2686.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01702', 3, 3248.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01702', 4, 3578.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01702', 5, 4114.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01702', 6, 4650.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Franklin 02038
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02038', 0, 2324.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02038', 1, 2497.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02038', 2, 2969.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02038', 3, 3590.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02038', 4, 3955.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02038', 5, 4547.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02038', 6, 5140.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Freetown 02779
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02779', 0, 1418.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02779', 1, 1617.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02779', 2, 2058.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02779', 3, 2552.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02779', 4, 2846.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02779', 5, 3272.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02779', 6, 3700.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Georgetown 01833
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '01833', 0, 2093.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01833', 1, 2240.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01833', 2, 2825.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01833', 3, 3401.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01833', 4, 3746.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01833', 5, 4308.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01833', 6, 4870.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Gloucester 01930
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '01930', 0, 2102.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01930', 1, 2259.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01930', 2, 2686.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01930', 3, 3248.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01930', 4, 3578.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01930', 5, 4114.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01930', 6, 4650.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Groveland 01834
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '01834', 0, 1414.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01834', 1, 1574.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01834', 2, 2062.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01834', 3, 2485.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01834', 4, 2735.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01834', 5, 3144.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01834', 6, 3554.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Halifax 02338
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02338', 0, 2101.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02338', 1, 2248.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02338', 2, 2678.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02338', 3, 3361.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02338', 4, 3645.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02338', 5, 4191.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02338', 6, 4738.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Hanover 02339
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02339', 0, 2324.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02339', 1, 2497.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02339', 2, 2969.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02339', 3, 3590.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02339', 4, 3955.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02339', 5, 4547.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02339', 6, 5140.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Hanson 02341
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02341', 0, 1461.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02341', 1, 1561.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02341', 2, 2050.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02341', 3, 2600.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02341', 4, 2913.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02341', 5, 3350.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02341', 6, 3787.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Harvard 01451
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '01451', 0, 2101.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01451', 1, 2248.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01451', 2, 2678.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01451', 3, 3235.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01451', 4, 3561.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01451', 5, 4094.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01451', 6, 4629.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Haverhill 01830
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '01830', 0, 1235.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01830', 1, 1410.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01830', 2, 1822.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01830', 3, 2214.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01830', 4, 2427.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01830', 5, 2790.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01830', 6, 3154.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Haverhill 01832
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '01832', 0, 1235.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01832', 1, 1410.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01832', 2, 1822.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01832', 3, 2214.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01832', 4, 2427.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01832', 5, 2790.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01832', 6, 3154.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Haverhill 01835
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '01835', 0, 1235.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01835', 1, 1410.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01835', 2, 1822.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01835', 3, 2214.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01835', 4, 2427.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01835', 5, 2790.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01835', 6, 3154.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Hingham 02043
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02043', 0, 2605.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02043', 1, 2750.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02043', 2, 3260.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02043', 3, 3930.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02043', 4, 4350.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02043', 5, 4974.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02043', 6, 5623.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Holbrook 02343
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02343', 0, 2324.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02343', 1, 2497.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02343', 2, 2969.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02343', 3, 3590.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02343', 4, 3955.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02343', 5, 4547.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02343', 6, 5140.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Holliston 01746
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '01746', 0, 2324.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01746', 1, 2497.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01746', 2, 2969.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01746', 3, 3590.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01746', 4, 3955.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01746', 5, 4547.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01746', 6, 5140.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Hopkinton 01748
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '01748', 0, 2521.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01748', 1, 2710.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01748', 2, 3224.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01748', 3, 3897.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01748', 4, 4296.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01748', 5, 4939.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01748', 6, 5584.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Hudson 01749
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '01749', 0, 2324.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01749', 1, 2497.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01749', 2, 2969.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01749', 3, 3590.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01749', 4, 3955.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01749', 5, 4547.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01749', 6, 5140.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Hull 02045
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02045', 0, 2102.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02045', 1, 2259.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02045', 2, 2686.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02045', 3, 3248.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02045', 4, 3578.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02045', 5, 4114.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02045', 6, 4650.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Ipswich 01938
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '01938', 0, 2324.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01938', 1, 2497.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01938', 2, 2969.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01938', 3, 3590.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01938', 4, 3955.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01938', 5, 4547.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01938', 6, 5140.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Kingston 02364
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02364', 0, 2324.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02364', 1, 2497.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02364', 2, 2969.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02364', 3, 3590.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02364', 4, 3955.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02364', 5, 4547.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02364', 6, 5140.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Lakeville 02347
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02347', 0, 1747.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02347', 1, 1796.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02347', 2, 2342.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02347', 3, 2967.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02347', 4, 3210.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02347', 5, 3690.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02347', 6, 4172.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Lawrence 01840
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '01840', 0, 1235.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01840', 1, 1410.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01840', 2, 1822.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01840', 3, 2214.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01840', 4, 2427.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01840', 5, 2790.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01840', 6, 3154.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Lawrence 01841
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '01841', 0, 1235.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01841', 1, 1410.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01841', 2, 1822.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01841', 3, 2214.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01841', 4, 2427.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01841', 5, 2790.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01841', 6, 3154.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Lawrence 01843
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '01843', 0, 1235.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01843', 1, 1410.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01843', 2, 1822.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01843', 3, 2214.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01843', 4, 2427.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01843', 5, 2790.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01843', 6, 3154.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Lexington 02420
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02420', 0, 2972.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02420', 1, 3192.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02420', 2, 3801.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02420', 3, 4599.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02420', 4, 5061.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02420', 5, 5821.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02420', 6, 6580.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Lexington 02421
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02421', 0, 3486.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02421', 1, 3749.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02421', 2, 4452.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02421', 3, 5387.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02421', 4, 5933.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02421', 5, 6822.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02421', 6, 7713.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Lincoln 01773
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '01773', 0, 2324.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01773', 1, 2497.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01773', 2, 2969.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01773', 3, 3590.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01773', 4, 3955.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01773', 5, 4547.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01773', 6, 5140.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Littleton 01460
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '01460', 0, 2324.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01460', 1, 2497.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01460', 2, 2969.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01460', 3, 3590.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01460', 4, 3955.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01460', 5, 4547.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01460', 6, 5140.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Lowell 01850
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '01850', 0, 1400.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01850', 1, 1560.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01850', 2, 2050.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01850', 3, 2470.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01850', 4, 2718.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01850', 5, 3125.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01850', 6, 3533.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Lowell 01851
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '01851', 0, 1400.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01851', 1, 1560.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01851', 2, 2050.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01851', 3, 2470.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01851', 4, 2718.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01851', 5, 3125.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01851', 6, 3533.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Lowell 01852
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '01852', 0, 1400.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01852', 1, 1560.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01852', 2, 2050.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01852', 3, 2470.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01852', 4, 2718.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01852', 5, 3125.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01852', 6, 3533.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Lowell 01854
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '01854', 0, 1400.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01854', 1, 1560.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01854', 2, 2050.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01854', 3, 2470.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01854', 4, 2718.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01854', 5, 3125.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01854', 6, 3533.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Lynn 01901
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '01901', 0, 2102.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01901', 1, 2259.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01901', 2, 2686.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01901', 3, 3248.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01901', 4, 3578.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01901', 5, 4114.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01901', 6, 4650.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Lynn 01902
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '01902', 0, 2102.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01902', 1, 2259.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01902', 2, 2686.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01902', 3, 3248.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01902', 4, 3578.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01902', 5, 4114.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01902', 6, 4650.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Lynn 01904
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '01904', 0, 2102.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01904', 1, 2259.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01904', 2, 2686.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01904', 3, 3248.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01904', 4, 3578.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01904', 5, 4114.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01904', 6, 4650.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Lynn 01905
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '01905', 0, 2102.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01905', 1, 2259.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01905', 2, 2686.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01905', 3, 3248.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01905', 4, 3578.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01905', 5, 4114.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01905', 6, 4650.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Lynnfield 01940
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '01940', 0, 2510.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01940', 1, 2699.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01940', 2, 3213.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01940', 3, 3885.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01940', 4, 4284.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01940', 5, 4927.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01940', 6, 5570.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Malden 02148
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02148', 0, 2326.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02148', 1, 2499.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02148', 2, 2972.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02148', 3, 3594.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02148', 4, 3959.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02148', 5, 4552.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02148', 6, 5146.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Manchester 01944
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '01944', 0, 2369.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01944', 1, 2506.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01944', 2, 2969.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01944', 3, 3578.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01944', 4, 3936.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01944', 5, 4527.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01944', 6, 5117.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Mansfield 02048
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02048', 0, 1922.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02048', 1, 2079.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02048', 2, 2499.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02048', 3, 3035.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02048', 4, 3350.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02048', 5, 3852.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02048', 6, 4355.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Marblehead 01945
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '01945', 0, 2369.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01945', 1, 2506.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01945', 2, 2969.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01945', 3, 3578.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01945', 4, 3936.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01945', 5, 4527.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01945', 6, 5117.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Marion 02738
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02738', 0, 1922.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02738', 1, 2079.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02738', 2, 2499.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02738', 3, 3035.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02738', 4, 3350.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02738', 5, 3852.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02738', 6, 4355.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Marlborough 01752
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '01752', 0, 2102.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01752', 1, 2259.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01752', 2, 2686.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01752', 3, 3248.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01752', 4, 3578.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01752', 5, 4114.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01752', 6, 4650.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Marshfield 02050
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02050', 0, 2324.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02050', 1, 2497.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02050', 2, 2969.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02050', 3, 3590.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02050', 4, 3955.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02050', 5, 4547.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02050', 6, 5140.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Mattapoisett 02739
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '02739', 0, 1586.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02739', 1, 1691.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02739', 2, 2226.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02739', 3, 2825.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02739', 4, 3161.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02739', 5, 3635.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '02739', 6, 4109.00, 'Boston Housing Authority Payment Standard', '2025-07-01');

-- Maynard 01754
INSERT INTO expected_rent (id, zip_code, bedrooms, expected_rent, source, effective_date) VALUES
(gen_random_uuid(), '01754', 0, 2102.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01754', 1, 2259.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01754', 2, 2686.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01754', 3, 3248.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01754', 4, 3578.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01754', 5, 4114.00, 'Boston Housing Authority Payment Standard', '2025-07-01'),
(gen_random_uuid(), '01754', 6, 4650.00, 'Boston Housing Authority Payment Standard', '2025-07-01');
