%dw 2.0
var salesData = readUrl("classpath://sample-data/sales-data.csv", "application/csv")
output application/json
---
//(salesData groupBy )[0]

 
(salesData groupBy ($.InvoiceDate splitBy(" ") filter(item, index) -> item != "")[0])pluck(item, key, index) -> { 
		"Date" : item.InvoiceDate as String,
		"sales" : item map{ 
			"code" : $.StockCode as String,
			"title" : $.Description as String,
			"invoice" : $.InvoiceNo as String,
			"date" : ($.InvoiceDate splitBy(" ") filter(item, index) -> item != "")[0],
			"quantity" : $.Quantity as String,
			"unitPrice" : $.UnitPrice as String,
			"customerID" : $.CustomerID as String,
			"country" : $.Country  as String					
		}
	} 
