ALTER TABLE participants
    DROP CONSTRAINT IF EXISTS fk_trip_id;

ALTER TABLE participants
    ADD CONSTRAINT fk_trip_id
    FOREIGN KEY (trip_id) REFERENCES trips(id) ON DELETE CASCADE;
