view: dim_races {
  sql_table_name: "DBT_HIMANSHUGOEL"."DIM_RACES"
    ;;

  dimension: circuit_id {
    type: number
    sql: ${TABLE}."CIRCUIT_ID" ;;
  }

  dimension: fp1_date {
    type: string
    sql: ${TABLE}."FP1_DATE" ;;
  }

  dimension: fp1_time {
    type: string
    sql: ${TABLE}."FP1_TIME" ;;
  }

  dimension: fp2_date {
    type: string
    sql: ${TABLE}."FP2_DATE" ;;
  }

  dimension: fp2_time {
    type: string
    sql: ${TABLE}."FP2_TIME" ;;
  }

  dimension: fp3_date {
    type: string
    sql: ${TABLE}."FP3_DATE" ;;
  }

  dimension: fp3_time {
    type: string
    sql: ${TABLE}."FP3_TIME" ;;
  }

  dimension: quali_date {
    type: string
    sql: ${TABLE}."QUALI_DATE" ;;
  }

  dimension: quali_time {
    type: string
    sql: ${TABLE}."QUALI_TIME" ;;
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

  dimension: sprint_date {
    type: string
    sql: ${TABLE}."SPRINT_DATE" ;;
  }

  dimension: sprint_time {
    type: string
    sql: ${TABLE}."SPRINT_TIME" ;;
  }

  measure: count {
    type: count
    drill_fields: [race_name]
  }
}
