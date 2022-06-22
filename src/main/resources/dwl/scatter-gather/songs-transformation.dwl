%dw 2.0
import * from dw::core::Arrays
output application/json
---
((payload as Array map(item, index) ->  ("songs" : item ++ {"type" : "songs"})if(item.userid ~= vars.userID))filter $ != {}).*songs