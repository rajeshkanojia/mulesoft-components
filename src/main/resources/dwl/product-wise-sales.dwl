%dw 2.0
var salesData = readUrl("classpath://sample-data/sales-data.csv", "application/csv")
output application/json
---
// I am checking the comment section
(salesData groupBy $.StockCode)pluck(item, key, index) -> { 
		"code" : item.StockCode[0] as String,
		"title" : item.Description[0] as String,
		"sales" : item map{ 
			"invoice" : $.InvoiceNo as String,
			"date" : $.InvoiceDate as String,
			"quantity" : $.Quantity as String,
			"unitPrice" : $.UnitPrice as String,
			"customerID" : $.CustomerID as String,
			"country" : $.Country  as String					
		}
	} 
