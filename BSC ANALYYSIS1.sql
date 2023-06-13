SELECT * FROM eq15;
use bsc;
ALTER TABLE eq150523equity
RENAME TO eq15;
-- a. Automate downloading of bhav copy files (equity) from BSE India Website for month of May 2023 (https://www.bseindia.com/markets/marketinfo/BhavCopy.aspx)
-- b. Upload the files into SQL database in one table (all files of equity for May 2023)
-- c. Run query on the table to compute the stock wise average (open, high, low and closing) price for the month of May 2023
-- d. Suggest how you can reduce the time take to get this queries reponse time


select * from eq15;

SELECT
  SC_NAME,
  AVG(Open) AS AvgOpenPrice,
  AVG(High) AS AvgHighPrice,
  AVG(Low) AS AvgLowPrice,
  AVG(Close) AS AvgClosePrice
FROM
  eq15
GROUP BY
  SC_NAME;