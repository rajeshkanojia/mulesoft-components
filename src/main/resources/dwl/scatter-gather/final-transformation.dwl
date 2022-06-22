%dw 2.0
output application/json
---
{
	"name" : payload[0].payload.name as String,
	"email" : payload[0].payload.email as String,
	"phone" : payload[0].payload.phone as String,
	"transaction-details" : payload[1].payload map((item, index) -> {
		"item" : item.item as String,
		"amount" : item.Amount as String,
		"date" : item.Date as String,
	}),
	"songs" : payload[2].payload map((item, index)->{
		"song" : item.Song as String,
		"date" : item.Date as String,
	}),
	"movies" : payload[3].payload map((item, index)->{
		"title" : item.title as String,
		"date" : item.date as String,
	}),
	"medications" : payload[4].payload map((item, index)->{
		"medication" : item.medication as String,
		"date" : item.date as String,
	}),
	"drinks" : payload[5].payload map((item, index)->{
		"drink" : item.drinks as String,
		"date" : item.date as String,
	}),
	"books" : payload[6].payload map((item, index)->{
		"book" : item.book as String,
		"date" : item.date as String,
	})	
	
}
