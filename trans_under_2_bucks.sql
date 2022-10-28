SELECT 
	 ch.name cardholder_name
	,t.card credit_card_number
	,count(t.amount < 2) transactions_under_2_dollars
FROM 
	transaction as t
INNER JOIN credit_card as cc
ON t.card = cc.card
INNER JOIN card_holder as ch
ON cc.cardholder_id = ch.id
GROUP BY
	 cardholder_name
	,credit_card_number
;