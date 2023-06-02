view: fct_driver_standings {
  sql_table_name: "DBT_HIMANSHUGOEL"."FCT_DRIVER_STANDINGS"
    ;;

  dimension: driver_id {
    type: number
    sql: ${TABLE}."DRIVER_ID" ;;
  }

  dimension: driver_points {
    type: number
    sql: ${TABLE}."DRIVER_POINTS" ;;
  }

  dimension: driver_position {
    type: number
    sql: ${TABLE}."DRIVER_POSITION" ;;
  }

  dimension: driver_standings_id {
    type: number
    sql: ${TABLE}."DRIVER_STANDINGS_ID" ;;
  }

  dimension: driver_wins {
    type: number
    sql: ${TABLE}."DRIVER_WINS" ;;
  }

  dimension: position_text {
    type: string
    sql: ${TABLE}."POSITION_TEXT" ;;
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
