%dw 2.0
output application/json
---
{
	"msg" : "Hello " ++ payload.name ++ ", Your transaction for amount \$" ++ payload.amount ++ " on " ++ payload.date ++ " is processed successfully."
}