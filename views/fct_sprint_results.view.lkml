view: fct_sprint_results {
  sql_table_name: "DBT_HIMANSHUGOEL"."FCT_SPRINT_RESULTS"
    ;;

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

  dimension: fastest_lap {
    type: string
    sql: ${TABLE}."FASTEST_LAP" ;;
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

  dimension: result_id {
    type: number
    sql: ${TABLE}."RESULT_ID" ;;
  }

  dimension: sprint_time {
    type: string
    sql: ${TABLE}."SPRINT_TIME" ;;
  }

  dimension: status_id {
    type: number
    sql: ${TABLE}."STATUS_ID" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
