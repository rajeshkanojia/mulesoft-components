%dw 2.0
output application/json
---
payload 
++ {"name" : vars.userDetails.name default "" as String}
++ {"email" : vars.userDetails.email default "" as String}
++ {"amount" : payload.amount default "0" as String}
++ {"date" : payload.date as String}
