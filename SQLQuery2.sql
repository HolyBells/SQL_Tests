SELECT [Client number], COUNT(TXN_sts), AVG(Miles_sum)
FROM Member AS t1
	INNER JOIN TXNs AS t2 ON t1.[Client id] = t2.[Client id]
	INNER JOIN Products AS t3 ON t2.[Product id] = t3.[Product id]
WHERE YEAR(Txn_date) = '2021'
	AND [Client mile balance_after txn] > 40000
	AND TXN_sts = 'Processed '
	AND t3.Product_nm = 'Ticket'
GROUP BY [Client number]
