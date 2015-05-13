- view: team
  fields:

  - dimension: team_id
    primary_key: true
    sql: ${TABLE}.team_id

  - dimension: city
    sql: ${TABLE}.city

  - dimension: name
    sql: ${TABLE}.name

  - measure: count
    type: count
    drill_fields: [team_id, name]

