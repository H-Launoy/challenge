%dw 2.0
output application/json
---
/* 
Here you have to define the tables used for all the employees. If the table is used at least for only one employee, you have to keep it in the final mapping
*/
payload 
    map ((item, index) -> item mapObject ((value, key, index) -> "table": key))
    reduce ((item, acc) -> acc ++ item)
    pluck $ 
    distinctBy $