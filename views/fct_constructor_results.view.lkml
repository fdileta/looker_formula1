view: fct_constructor_results {
  sql_table_name: "DBT_HIMANSHUGOEL"."FCT_CONSTRUCTOR_RESULTS"
    ;;

  dimension: constructor_id {
    type: number
    sql: ${TABLE}."CONSTRUCTOR_ID" ;;
  }

  dimension: constructor_points {
    type: number
    sql: ${TABLE}."CONSTRUCTOR_POINTS" ;;
  }

  dimension: constructor_results_id {
    type: number
    sql: ${TABLE}."CONSTRUCTOR_RESULTS_ID" ;;
  }

  dimension: race_id {
    type: number
    sql: ${TABLE}."RACE_ID" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."STATUS" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
