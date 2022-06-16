%dw 2.0
var salesData = readUrl("classpath://sample-data/sales-data.csv", "application/csv")
output application/json
---
(salesData groupBy $.CustomerID)pluck(item, key, index) -> { 
		"customerID" : item.CustomerID[0] as String,
		"sales" : item map{ 
			"code" : $.StockCode as String,
			"title" : $.Description as String,
			"invoice" : $.InvoiceNo as String,
			"date" : $.InvoiceDate as String,
			"quantity" : $.Quantity as String,
			"unitPrice" : $.UnitPrice as String,
//			"customerID" : $.CustomerID as String,
			"country" : $.Country  as String					
		}
	} 
