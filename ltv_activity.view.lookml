- view: ltv_activity
  sql_table_name: dwimp.LTV_ACTIVITY
  fields:

  - dimension: consumer_id
    type: int
    sql: ${TABLE}.CONSUMER_ID

  - dimension_group: visit
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.VISIT_DATE

  - dimension: visit_number
    type: int
    sql: ${TABLE}.VISIT_NUMBER
    
  - dimension: days_since_registration
    type: int
    sql: ${TABLE}.DAYS_SINCE_REGISTRATION
    
  - dimension: days_since_last_session
    type: int
    sql: ${TABLE}.days_since_last_session
    
  - dimension: visit_value
    type: number
    sql: ${TABLE}.VISIT_VALUE
    
  - dimension: visit_cost
    type: number
    sql: ${TABLE}.VISIT_COST

  - measure: count
    type: count
    drill_fields: []
    
  - measure: total_value
    type: sum
    sql: ${visit_value}
    format: "$%.2f"
    
  - measure: average_value
    type: avg
    sql: ${visit_value}
    format: "$%.2f"
    
  - measure: total_cost
    type: sum
    sql: ${visit_cost}
    format: "$%.2f"
    
  - measure: average_cost
    type: avg
    sql: ${visit_cost}
    format: "$%.2f"