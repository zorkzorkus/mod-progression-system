-- Phase out emblem vendors
UPDATE creature SET phaseMask = 2 WHERE id IN (33963, 37941, 35495);
