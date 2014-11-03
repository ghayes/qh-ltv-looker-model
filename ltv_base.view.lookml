- view: ltv_base
  sql_table_name: dwimp.LTV_BASE
  fields:

  - dimension: consumer_id
    primary_key: true
    type: int
    sql: ${TABLE}.CONSUMER_ID

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATED_DATE

  - dimension: email_domain
    sql: ${TABLE}.EMAIL_DOMAIN
    
  - dimension: newsletter_subscriber
    type: yesno
    sql: ${TABLE}.NL_SUBSCRIBER = 1
    
  - dimension: qh_rewards_subscriber
    type: yesno
    sql: ${TABLE}.QHR_SUBSCRIBER = 1
    
  - dimension: traffic_type
    sql: ${TABLE}.SOURCE_TRAFFIC_TYPE
    
  - dimension: partner
    sql: ${TABLE}.SOURCE_PARTNER
    
  - dimension: ref_code
    sql: ${TABLE}.SOURCE_REF_CODE
    
  - dimension: age_groups
    type: tier
    sql: ${TABLE}.CONSUMER_AGE
    tiers: [0,18,25,35,45,55,65]
    
  - dimension: gender
    sql: ${TABLE}.CONSUMER_GENDER

  - measure: count
    type: count
    drill_fields: []