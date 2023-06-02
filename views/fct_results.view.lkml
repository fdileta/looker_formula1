view: fct_results {
  sql_table_name: "DBT_HIMANSHUGOEL"."FCT_RESULTS"
    ;;
  drill_fields: [fct_result_id]

  dimension: fct_result_id {
    primary_key: yes
    type: string
    sql: ${TABLE}."FCT_RESULT_ID" ;;
  }

  dimension: constructor_id {
    type: number
    sql: ${TABLE}."CONSTRUCTOR_ID" ;;
  }

  dimension: driver_id {
    type: number
    sql: ${TABLE}."DRIVER_ID" ;;
  }

  dimension: driver_number {
    type: number
    sql: ${TABLE}."DRIVER_NUMBER" ;;
  }

  dimension: driver_position {
    type: number
    sql: ${TABLE}."DRIVER_POSITION" ;;
  }

  dimension: driver_rank {
    type: number
    sql: ${TABLE}."DRIVER_RANK" ;;
  }

  dimension: fastest_lap {
    type: number
    sql: ${TABLE}."FASTEST_LAP" ;;
  }

  dimension: fastest_lap_speed {
    type: number
    sql: ${TABLE}."FASTEST_LAP_SPEED" ;;
  }

  dimension_group: fastest_lap {
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
    sql: ${TABLE}."FASTEST_LAP_TIME" ;;
  }

  dimension: grid {
    type: number
    value_format_name: id
    sql: ${TABLE}."GRID" ;;
  }

  dimension: laps {
    type: number
    sql: ${TABLE}."LAPS" ;;
  }

  dimension: milliseconds {
    type: number
    sql: ${TABLE}."MILLISECONDS" ;;
  }

  dimension: points {
    type: number
    sql: ${TABLE}."POINTS" ;;
  }

  dimension: position_order {
    type: number
    sql: ${TABLE}."POSITION_ORDER" ;;
  }

  dimension: position_text {
    type: string
    sql: ${TABLE}."POSITION_TEXT" ;;
  }

  dimension: race_id {
    type: number
    sql: ${TABLE}."RACE_ID" ;;
  }

  dimension: race_time {
    type: string
    sql: ${TABLE}."RACE_TIME" ;;
  }

  dimension: result_id {
    type: number
    sql: ${TABLE}."RESULT_ID" ;;
  }

  dimension: status_id {
    type: number
    sql: ${TABLE}."STATUS_ID" ;;
  }

  measure: count {
    type: count
    drill_fields: [fct_result_id]
  }
}
