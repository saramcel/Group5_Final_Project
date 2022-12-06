DROP TABLE "HeartDiseaseDB1";

CREATE TABLE "HeartDiseaseDB1" (
    "HeartDisease" BOOL NOT NULL,
    "BMI" REAL   NOT NULL,
    "Smoking" BOOL   NOT NULL,
    "AlcoholDrinking" BOOL   NOT NULL,
    "Stroke" BOOL   NOT NULL,
    "PhysicalHealth" INT   NOT NULL,
    "MentalHealth" INT   NOT NULL,
    "DiffWalking" BOOL   NOT NULL,
    "Sex" VARCHAR   NOT NULL,
    "AgeCategory" VARCHAR   NOT NULL,
    "Race" VARCHAR   NOT NULL,
    "Diabetic" VARCHAR   NOT NULL,
    "PhysicalActivity" BOOL   NOT NULL,
    "GenHealth" VARCHAR   NOT NULL,
    "SleepTime" INT   NOT NULL,
    "Asthma" BOOL   NOT NULL,
    "KidneyDisease" BOOL   NOT NULL,
    "SkinCancer" BOOL   NOT NULL
);

SELECT * FROM "HeartDiseaseDB1";

