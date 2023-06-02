view: fct_lap_times {
  sql_table_name: "DBT_HIMANSHUGOEL"."FCT_LAP_TIMES"
    ;;

  dimension: driver_id {
    type: number
    sql: ${TABLE}."DRIVER_ID" ;;
  }

  dimension: driver_position {
    type: number
    sql: ${TABLE}."DRIVER_POSITION" ;;
  }

  dimension: lap {
    type: number
    sql: ${TABLE}."LAP" ;;
  }

  dimension: lap_time_formatted {
    type: string
    sql: ${TABLE}."LAP_TIME_FORMATTED" ;;
  }

  dimension: lap_time_milliseconds {
    type: number
    sql: ${TABLE}."LAP_TIME_MILLISECONDS" ;;
  }

  dimension: lap_times_id {
    type: string
    sql: ${TABLE}."LAP_TIMES_ID" ;;
  }

  dimension_group: official_laptime {
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
    sql: ${TABLE}."OFFICIAL_LAPTIME" ;;
  }

  dimension: race_id {
    type: number
    sql: ${TABLE}."RACE_ID" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
