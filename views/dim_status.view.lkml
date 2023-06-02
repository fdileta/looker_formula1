view: dim_status {
  sql_table_name: "DBT_HIMANSHUGOEL"."DIM_STATUS"
    ;;

  dimension: status {
    type: string
    sql: ${TABLE}."STATUS" ;;
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
