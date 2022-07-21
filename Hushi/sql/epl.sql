CREATE TABLE Stats (
	ID int NOT NULL,
	Div CHAR(10),
	Date DATE,
	HomeTeam CHAR(16),
	AwayTeam CHAR(16),
	FTHG INT,
	FTAG INT,
	FTR CHAR(2),
	HTHG INT,
	HTAG INT,
	HTR CHAR(2),
	Referee CHAR(13),
	HS INT,
	ASs INT,
	HST INT,
	AST INT,
	HF INT,
	AF INT,
	HC INT,
	AC INT,
	HY INT,
	AY INT,
	HR INT,
	AR INT,
	PRIMARY KEY (ID)
);

CREATE Table Betting (
	ID int NOT NULL,
	DIV CHAR(10),
	B365H DECIMAL,
	B365D DECIMAL,
	B365A DECIMAL,
	VCH DECIMAL,
	VCD DECIMAL,
	VCA DECIMAL,
	PRIMARY KEY (ID)
);













)