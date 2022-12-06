-- sometimes we need to destroy the tables and start again
SELECT 
    pg_terminate_backend(pid) 
FROM 
    pg_stat_activity 
WHERE 
    -- don't kill my own connection!
    pid <> pg_backend_pid()
    -- don't kill the connections to other databases
    AND datname = 'heart_disease'
    ;
	
DROP TABLE "AgeRisk" CASCADE;
DROP TABLE "DiabetesBins" CASCADE;
DROP TABLE "SleepRecommendation" CASCADE;
DROP TABLE "HeartDisease" CASCADE;