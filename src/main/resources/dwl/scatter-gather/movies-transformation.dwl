%dw 2.0
import * from dw::core::Arrays
output application/json
---
((payload as Array map(item, index) ->  ("movies" : item ++ {"type" : "movies"})if(item.userid ~= vars.userID))filter $ != {}).*movies