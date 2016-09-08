- view: inventory_items
  sql_table_name: demo_db.inventory_items
  fields:

  - dimension: id
    primary_key: true
    hidden: true
    type: number
    sql: ${TABLE}.id

  - dimension: cost
    group_label: 'Product Information'
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

  - dimension_group: inventory_items_sold
    group_label: 'Product Information'
    type: time
    hidden: true
    timeframes: [time, date, week, month]
    sql: ${TABLE}.sold_at

  - measure: count
    group_label: 'Product Information'
    type: count
    hidden: true
    drill_fields: [id, products.item_name, products.id, order_items.count, t1.count]

