- view: player
  fields:

  - dimension: player_id
    primary_key: true
    sql: ${TABLE}.player_id

  - dimension: birthdate
    sql: ${TABLE}.birthdate

  - dimension: college
    sql: ${TABLE}.college

  - dimension: first_name
    sql: ${TABLE}.first_name

  - dimension: full_name
    sql: ${TABLE}.full_name

  - dimension: gsis_name
    sql: ${TABLE}.gsis_name

  - dimension: height
    type: number
    sql: ${TABLE}.height

  - dimension: last_name
    sql: ${TABLE}.last_name

  - dimension: position
    sql: ${TABLE}.position

  - dimension: profile_id
    type: int
    sql: ${TABLE}.profile_id

  - dimension: profile_url
    sql: ${TABLE}.profile_url

  - dimension: status
    sql: ${TABLE}.status

  - dimension: team
    sql: ${TABLE}.team

  - dimension: uniform_number
    type: number
    sql: ${TABLE}.uniform_number

  - dimension: weight
    type: number
    sql: ${TABLE}.weight

  - dimension: years_pro
    type: number
    sql: ${TABLE}.years_pro

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - player_id
    - gsis_name
    - full_name
    - first_name
    - last_name
    - play_player.count

