- view: inventory_items
  sql_table_name: demo_db.inventory_items
  fields:

  - dimension: id
    primary_key: true
    hidden: true
    type: number
    sql: ${TABLE}.id

  - dimension: cost
    type: number
    sql: ${TABLE}.cost

  - dimension_group: created
    label: 'Inventory Items Created'
    type: time
    hidden: true
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: product_id
    type: number
    hidden: true
    sql: ${TABLE}.product_id

  - dimension_group: sold
    label: 'Inventory Items Sold'
    type: time
    hidden: true
    timeframes: [time, date, week, month]
    sql: ${TABLE}.sold_at

  - measure: count
    label: 'Inventory Items Count'
    type: count
    hidden: true
    drill_fields: [id, products.item_name, products.id, order_items.count, t1.count]

