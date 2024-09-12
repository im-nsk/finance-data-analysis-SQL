

CREATE TABLE finance_data(
gender VARCHAR(7),
age INT,
Investment_Avenues VARCHAR(3),
Mutual_Funds INT,
Equity_Market INT,
Debentures INT,
Government_Bonds INT,
Fixed_Deposits INT,
PPF	INT,
Gold INT,
Stock_Marktet VARCHAR(5),
Factor VARCHAR(20),
Objective VARCHAR(25),
Purpose VARCHAR(35),
Duration VARCHAR(30),
Invest_Monitor VARCHAR(10),
Expect	VARCHAR(10),
Avenue VARCHAR(35),
"What are your savings objectives?" VARCHAR(50),
Reason_Equity VARCHAR(25),	
Reason_Mutual VARCHAR(25),	
Reason_Bonds VARCHAR(25),
Reason_FD VARCHAR(25),
"Source" VARCHAR(30)
)

COPY finance_data
FROM 'E:\DE_Project\dataset\Finance_sector\Finance_data.csv'
DELIMITER ','
CSV HEADER;

select * from finance_data;





