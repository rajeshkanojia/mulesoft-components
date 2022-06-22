%dw 2.0
import * from dw::core::Arrays
output application/json
---
((payload as Array map(item, index) ->  ("books" : item ++ {"type" : "books"})if(item.userid ~= vars.userID))filter $ != {}).*books