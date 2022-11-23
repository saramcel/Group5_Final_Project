--Create the table schemas
CREATE TABLE AgeRisk (
    AgeCategory VARCHAR  NOT NULL,
    AgeRiskBin VARCHAR  NOT NULL,
	PRIMARY KEY (AgeCategory)
);

CREATE TABLE SleepRecommendation (
    SleepTime INT  NOT NULL,
    RecSleepBin VARCHAR  NOT NULL,
	PRIMARY KEY (SleepTime)
);

CREATE TABLE DiabetesBins (
    Diabetic VARCHAR  NOT NULL,
    DiabetesBin VARCHAR  NOT NULL,
	PRIMARY KEY (Diabetic) 
);

CREATE TABLE HeartDisease (
    HeartDisease BOOL   NOT NULL,
    BMI REAL   NOT NULL,
    Smoking BOOL   NOT NULL,
    AlcoholDrinking BOOL   NOT NULL,
    Stroke BOOL   NOT NULL,
    PhysicalHealth INT   NOT NULL,
    MentalHealth INT   NOT NULL,
    DiffWalking BOOL   NOT NULL,
    Sex VARCHAR   NOT NULL,
    AgeCategory VARCHAR   NOT NULL,
    Race VARCHAR   NOT NULL,
    Diabetic VARCHAR   NOT NULL,
    PhysicalActivity BOOL   NOT NULL,
    GenHealth VARCHAR   NOT NULL,
    SleepTime INT   NOT NULL,
    Asthma BOOL   NOT NULL,
    KidneyDisease BOOL   NOT NULL,
    SkinCancer BOOL   NOT NULL,
	ID_G5 SERIAL,
	PRIMARY KEY (ID_G5),
	UNIQUE(ID_G5),
FOREIGN KEY(AgeCategory) REFERENCES AgeRisk(AgeCategory) ON DELETE CASCADE,
FOREIGN KEY(SleepTime) REFERENCES SleepRecommendation (SleepTime) ON DELETE CASCADE,
FOREIGN KEY(Diabetic) REFERENCES DiabetesBins (Diabetic) ON DELETE CASCADE
);

--Check the tables once they have had their data imported
SELECT * FROM AgeRisk;
SELECT * FROM SleepRecommendation;
SELECT * FROM DiabetesBins;
SELECT * FROM HeartDisease;

--Make the joins
SELECT HD.*, AR.AgeRiskBin, DBB.DiabetesBin, SR.RecSleepBin
FROM HeartDisease as HD
INNER JOIN AgeRisk as AR ON HD.AgeCategory=AR.AgeCategory
INNER JOIN DiabetesBins as DBB ON HD.Diabetic=DBB.Diabetic
INNER JOIN SleepRecommendation as SR ON HD.SleepTime=SR.SleepTime;