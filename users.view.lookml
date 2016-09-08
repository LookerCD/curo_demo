- view: users
  sql_table_name: demo_db.users
  fields:

  - dimension: id
    label: 'User ID'
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: age
    label: 'User Age'
    type: number
    sql: ${TABLE}.age
    
  - dimension: age_tier
    label: 'User Age Tier'
    type: tier
    tiers: [0,10,20,30,40,50,60,70]
    style: integer
    sql: ${age}

  - dimension: city
    label: 'User City'
    type: string
    sql: ${TABLE}.city

  - dimension: country
    label: 'User Country'
    type: string
    sql: ${TABLE}.country

  - dimension_group: created
    label: 'Users Created'
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: email
    label: 'User Email'
    type: string
    sql: ${TABLE}.email

  - dimension: first_name
    type: string
    hidden: true
    sql: ${TABLE}.first_name

  - dimension: last_name
    type: string
    hidden: true
    sql: ${TABLE}.last_name
    
  - dimension: user_name
    sql: ${first_name} || ' ' || ${last_name}

  - dimension: gender
    label: 'User Gender'
    type: string
    sql: ${TABLE}.gender



  - dimension: state
    label: 'User State'
    type: string
    sql: ${TABLE}.state

  - dimension: zip
    label: 'User Post Code'
    type: number
    sql: ${TABLE}.zip

  - measure: count
    label: 'Users Count'
    type: count
    drill_fields: detail*
    
  - measure: average_age
    type: avg
    sql: ${age}


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - id
    - last_name
    - first_name
    - events.count
    - orders.count
    - user_data.count

