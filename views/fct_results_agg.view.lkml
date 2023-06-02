view: fct_results_agg {
  sql_table_name: "DBT_HIMANSHUGOEL"."FCT_RESULTS_AGG"
    ;;

  dimension: altitude {
    type: number
    sql: ${TABLE}."ALTITUDE" ;;
  }

  dimension: circuit_country {
    type: string
    sql: ${TABLE}."CIRCUIT_COUNTRY" ;;
  }

  dimension: circuit_id {
    type: number
    sql: ${TABLE}."CIRCUIT_ID" ;;
  }

  dimension: circuit_location {
    type: string
    sql: ${TABLE}."CIRCUIT_LOCATION" ;;
  }

  dimension: circuit_ref {
    type: string
    sql: ${TABLE}."CIRCUIT_REF" ;;
  }

  dimension: constructor_id {
    type: number
    sql: ${TABLE}."CONSTRUCTOR_ID" ;;
  }

  dimension: constructor_name {
    type: string
    sql: ${TABLE}."CONSTRUCTOR_NAME" ;;
  }

  dimension: constructor_nationality {
    type: string
    sql: ${TABLE}."CONSTRUCTOR_NATIONALITY" ;;
  }

  dimension: dnf_flag {
    type: number
    sql: ${TABLE}."DNF_FLAG" ;;
  }

  dimension: driver {
    type: string
    sql: ${TABLE}."DRIVER" ;;
  }

  dimension: driver_id {
    type: number
    sql: ${TABLE}."DRIVER_ID" ;;
  }

  dimension: driver_nationality {
    type: string
    sql: ${TABLE}."DRIVER_NATIONALITY" ;;
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

  dimension: drivers_age_years {
    type: number
    sql: ${TABLE}."DRIVERS_AGE_YEARS" ;;
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

  dimension: latitude {
    type: number
    sql: ${TABLE}."LATITUDE" ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}."LONGITUDE" ;;
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

  dimension_group: race_date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."RACE_DATE" ;;
  }

  dimension: race_id {
    type: number
    sql: ${TABLE}."RACE_ID" ;;
  }

  dimension: race_name {
    type: string
    sql: ${TABLE}."RACE_NAME" ;;
  }

  dimension: race_round {
    type: number
    sql: ${TABLE}."RACE_ROUND" ;;
  }

  dimension: race_time {
    type: string
    sql: ${TABLE}."RACE_TIME" ;;
  }

  dimension: race_year {
    type: number
    sql: ${TABLE}."RACE_YEAR" ;;
  }

  dimension: result_id {
    type: number
    sql: ${TABLE}."RESULT_ID" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."STATUS" ;;
  }

  dimension: status_id {
    type: number
    sql: ${TABLE}."STATUS_ID" ;;
  }

  dimension: total_pit_stops_per_race {
    type: number
    sql: ${TABLE}."TOTAL_PIT_STOPS_PER_RACE" ;;
  }

  measure: count {
    type: count
    drill_fields: [race_name, constructor_name]
  }
}
