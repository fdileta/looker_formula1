view: dim_constructors {
  sql_table_name: "DBT_HIMANSHUGOEL"."DIM_CONSTRUCTORS"
    ;;
  drill_fields: [dim_constructor_id]

  dimension: dim_constructor_id {
    primary_key: yes
    type: string
    sql: ${TABLE}."DIM_CONSTRUCTOR_ID" ;;
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

  dimension: constructor_ref {
    type: string
    sql: ${TABLE}."CONSTRUCTOR_REF" ;;
  }

  measure: count {
    type: count
    drill_fields: [dim_constructor_id, constructor_name]
  }
}
