- view: orders
  sql_table_name: demo_db.orders
  fields:

  - dimension: id
    label: 'Order ID'
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension_group: created
    label: 'Orders Created'
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: status
    label: 'Order Status'
    type: string
    sql: ${TABLE}.status

  - dimension: user_id
    type: number
    hidden: true
    sql: ${TABLE}.user_id

  - measure: count
    label: 'Orders Count'
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - id
    - users.last_name
    - users.first_name
    - users.id
    - order_items.count
    - t1.count

