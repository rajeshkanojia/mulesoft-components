%dw 2.0
import * from dw::core::Arrays
output application/json
---
((payload as Array map(item, index) ->  ("drinks" : item ++ {"type" : "drinks"})if(item.userid ~= vars.userID))filter $ != {}).*drinks