-- @author: krakowiakpawel9@gmail.com
-- @site: e-smartdata.org

CREATE TABLE DQL.01_tab (
  id STRING NOT NULL,
  age INT64,
  name STRING
);

-- 4 różne wiersze
INSERT INTO DQL.01_tab VALUES ('001', 22, 'Mark');
INSERT INTO DQL.01_tab VALUES ('002', 27, 'Paul');
INSERT INTO DQL.01_tab VALUES ('003', 30, 'Rose');
INSERT INTO DQL.01_tab VALUES ('004', 24, 'John');

CREATE TABLE DQL.02_tab (
  id STRING NOT NULL,
  age INT64,
  name STRING
);

-- jeden duplikat
INSERT INTO DQL.02_tab VALUES ('001', 22, 'Mark');
INSERT INTO DQL.02_tab VALUES ('001', 22, 'Mark');
INSERT INTO DQL.02_tab VALUES ('002', 27, 'Paul');
INSERT INTO DQL.02_tab VALUES ('005', 31, 'Tom');

SELECT * FROM DQL.01_tab;
SELECT * FROM DQL.02_tab;

SELECT * FROM DQL.01_tab
UNION ALL
SELECT * FROM DQL.02_tab;

SELECT * FROM DQL.01_tab
UNION DISTINCT
SELECT * FROM DQL.02_tab;
