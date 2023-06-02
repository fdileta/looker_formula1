view: fct_qualifying {
  sql_table_name: "DBT_HIMANSHUGOEL"."FCT_QUALIFYING"
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

  dimension_group: q1 {
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
    sql: ${TABLE}."Q1_TIME" ;;
  }

  dimension_group: q2 {
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
    sql: ${TABLE}."Q2_TIME" ;;
  }

  dimension_group: q3 {
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
    sql: ${TABLE}."Q3_TIME" ;;
  }

  dimension: qualifying_id {
    type: number
    sql: ${TABLE}."QUALIFYING_ID" ;;
  }

  dimension: qualifying_position {
    type: number
    sql: ${TABLE}."QUALIFYING_POSITION" ;;
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
