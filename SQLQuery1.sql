SELECT [Client number]
FROM Member AS t1
	INNER JOIN TXNs AS t2 ON t1.[Client id] = t2.[Client id]
	INNER JOIN Products AS t3 ON t2.[Product id] = t3.[Product id]
WHERE Txn_type IS NULL 
	AND YEAR(Txn_date) = '2021' 
	AND Product_nm = 'Ticket' 
	AND [Client mile balance_after txn] > 50000