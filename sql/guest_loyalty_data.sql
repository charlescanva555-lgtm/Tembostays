CREATE TABLE IF NOT EXISTS guest_loyalty_data (
  id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  profile_id TEXT UNIQUE NOT NULL,
  loyalty_points INT DEFAULT 0,
  total_co2_saved FLOAT DEFAULT 0.0,
  loyalty_tier TEXT DEFAULT 'Seedling' CHECK (loyalty_tier IN ('Seedling', 'Acacia', 'Baobab', 'Elephant Elite')),
  referral_code TEXT UNIQUE,
  created_at TIMESTAMPTZ DEFAULT now()
);

INSERT INTO guest_loyalty_data (profile_id, loyalty_points, loyalty_tier)
VALUES ('sarah_2026_id', 850, 'Baobab')
ON CONFLICT (profile_id) DO NOTHING;
