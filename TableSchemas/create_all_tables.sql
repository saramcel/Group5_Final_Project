CREATE TABLE "Age Risk" (
    "AgeCategory" VARCHAR   NOT NULL,
    "Age Risk" VARCHAR   NOT NULL,
	PRIMARY KEY ("AgeCategory")
);

CREATE TABLE "Sleep Recommendation" (
    "SleepTime" INT   NOT NULL,
    "Recommended Sleep" VARCHAR   NOT NULL,
	PRIMARY KEY ("SleepTime")
);

CREATE TABLE "Diabetes Bins" (
    "Diabetic" VARCHAR   NOT NULL,
    "Diabetes Bin" VARCHAR   NOT NULL,
	PRIMARY KEY ("Diabetic") 
);

DROP TABLE "HeartDisease";

CREATE TABLE "HeartDisease" (
    "HeartDisease" BOOL   NOT NULL,
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
    "SkinCancer" BOOL   NOT NULL,
	"ID_G5" SERIAL,
	PRIMARY KEY ("ID_G5"),
	UNIQUE("ID_G5"),
FOREIGN KEY("AgeCategory") REFERENCES "Age Risk"("AgeCategory") ON DELETE CASCADE,
FOREIGN KEY("SleepTime") REFERENCES "Sleep Recommendation" ("SleepTime") ON DELETE CASCADE,
FOREIGN KEY("Diabetic") REFERENCES "Diabetes Bins" ("Diabetic") ON DELETE CASCADE
);

SELECT * FROM "HeartDisease";