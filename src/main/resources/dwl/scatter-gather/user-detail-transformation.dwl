%dw 2.0
import * from dw::core::Arrays
output application/json
---
(payload as Array firstWith ((item, index) -> item.id ~= vars.userID)) as Object