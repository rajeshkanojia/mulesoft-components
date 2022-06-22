%dw 2.0
import * from dw::core::Arrays
output application/json
---
((payload as Array map(item, index) -> 
	("transaction" : item ++ {"type" : "transaction"})if(item.userid ~= vars.userID) 
) filter $ != {}).*transaction