- view: users
  sql_table_name: demo_db.users
  fields:

  - dimension: id
    group_label: 'Users'
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: age
    group_label: 'Users'
    type: number
    sql: ${TABLE}.age
    
  - dimension: age_tier
    group_label: 'Users'
    type: tier
    tiers: [0,10,20,30,40,50,60,70]
    style: integer
    sql: ${age}

  - dimension: city
    group_label: 'Users'
    type: string
    sql: ${TABLE}.city

  - dimension: country
    group_label: 'Users'
    type: string
    sql: ${TABLE}.country

  - dimension_group: created
    label: 'Users Created'
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: email
    group_label: 'Users'
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
    
  - dimension: name
    group_label: 'Users'
    sql: ${first_name} || ' ' || ${last_name}

  - dimension: gender
    group_label: 'Users'
    type: string
    sql: ${TABLE}.gender



  - dimension: state
    group_label: 'Users'
    type: string
    sql: ${TABLE}.state

  - dimension: zip
    group_label: 'Users'
    type: number
    sql: ${TABLE}.zip

  - measure: count
    label: 'Users Count'
    type: count
    drill_fields: detail*
    
  - measure: average_age
    type: avg
    sql: ${age}
    drill_fields: 


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - name
    - gender
    - email

