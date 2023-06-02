view: fct_pit_stops {
  sql_table_name: "DBT_HIMANSHUGOEL"."FCT_PIT_STOPS"
    ;;

  dimension: driver_id {
    type: number
    sql: ${TABLE}."DRIVER_ID" ;;
  }

  dimension: lap {
    type: number
    sql: ${TABLE}."LAP" ;;
  }

  dimension_group: pit_stop_duration {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."PIT_STOP_DURATION" ;;
  }

  dimension: pit_stop_duration_seconds {
    type: string
    sql: ${TABLE}."PIT_STOP_DURATION_SECONDS" ;;
  }

  dimension: pit_stop_milliseconds {
    type: number
    sql: ${TABLE}."PIT_STOP_MILLISECONDS" ;;
  }

  dimension: pitstop_id {
    type: string
    sql: ${TABLE}."PITSTOP_ID" ;;
  }

  dimension: pitstop_time {
    type: string
    sql: ${TABLE}."PITSTOP_TIME" ;;
  }

  dimension: race_id {
    type: number
    sql: ${TABLE}."RACE_ID" ;;
  }

  dimension: stop_number {
    type: number
    sql: ${TABLE}."STOP_NUMBER" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
