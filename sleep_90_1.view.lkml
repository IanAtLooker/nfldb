view: sleep_90_1 {
  derived_table: {
    sql_trigger_value: select current_date ;;

    sql: select pg_sleep(90)::varchar
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: pg_sleep {
    type: string
    sql: ${TABLE}.pg_sleep ;;
  }

  set: detail {
    fields: [pg_sleep]
  }
}
