- view: products
  sql_table_name: demo_db.products
  fields:

  - dimension: id
    primary_key: true
    type: number
    hidden: true
    sql: ${TABLE}.id

  - dimension: brand
    group_label: 'Product Information'
    type: string
    sql: ${TABLE}.brand

  - dimension: category
    group_label: 'Product Information'
    type: string
    sql: ${TABLE}.category

  - dimension: department
    group_label: 'Product Information'
    type: string
    sql: ${TABLE}.department

  - dimension: item_name
    group_label: 'Product Information'
    type: string
    sql: ${TABLE}.item_name

  - dimension: rank
    type: number
    hidden: true
    sql: ${TABLE}.rank

  - dimension: retail_price
    group_label: 'Product Information'
    type: number
    sql: ${TABLE}.retail_price

  - dimension: sku
    group_label: 'Product Information'
    type: string
    sql: ${TABLE}.sku

  - measure: count
    label: 'Products Count'
    type: count
    drill_fields: [id, item_name, inventory_items.count]

