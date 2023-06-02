view: fct_constructor_standings {
  sql_table_name: "DBT_HIMANSHUGOEL"."FCT_CONSTRUCTOR_STANDINGS"
    ;;

  dimension: constructor_id {
    type: number
    sql: ${TABLE}."CONSTRUCTOR_ID" ;;
  }

  dimension: constructor_position {
    type: number
    sql: ${TABLE}."CONSTRUCTOR_POSITION" ;;
  }

  dimension: constructor_standings_id {
    type: number
    sql: ${TABLE}."CONSTRUCTOR_STANDINGS_ID" ;;
  }

  dimension: points {
    type: number
    sql: ${TABLE}."POINTS" ;;
  }

  dimension: position_text {
    type: string
    sql: ${TABLE}."POSITION_TEXT" ;;
  }

  dimension: race_id {
    type: number
    sql: ${TABLE}."RACE_ID" ;;
  }

  dimension: wins {
    type: number
    sql: ${TABLE}."WINS" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
