%dw 2.0
import * from dw::core::Arrays
output application/json
---
((payload as Array map(item, index) ->  ("medications" : item ++ {"type" : "medications"})if(item.userid ~= vars.userID))filter $ != {}).*medications