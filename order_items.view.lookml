- view: order_items
  sql_table_name: demo_db.order_items
  fields:

  - dimension: id
    primary_key: true
    type: number
    hidden: true
    sql: ${TABLE}.id

  - dimension: inventory_item_id
    group_label: 'Order Items'
    type: number
    hidden: true
    sql: ${TABLE}.inventory_item_id

  - dimension: order_id
    type: number
    hidden: true
    sql: ${TABLE}.order_id

  - dimension_group: returned
    label: 'Order Items Returned'
    type: time
    hidden: true
    timeframes: [time, date, week, month]
    sql: ${TABLE}.returned_at

  - dimension: sale_price
    group_label: 'Order Items'
    type: number
    sql: ${TABLE}.sale_price

  - measure: count
    label: 'Order Items Count'
    type: count
    drill_fields: [id, orders.id, inventory_items.id]

