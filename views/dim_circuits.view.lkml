view: dim_circuits {
  sql_table_name: "DBT_HIMANSHUGOEL"."DIM_CIRCUITS"
    ;;
  drill_fields: [dim_circuit_id]

  dimension: dim_circuit_id {
    primary_key: yes
    type: string
    sql: ${TABLE}."DIM_CIRCUIT_ID" ;;
  }

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

  dimension: circuit_name {
    type: string
    sql: ${TABLE}."CIRCUIT_NAME" ;;
  }

  dimension: circuit_ref {
    type: string
    sql: ${TABLE}."CIRCUIT_REF" ;;
  }

  dimension: circuit_url {
    type: string
    sql: ${TABLE}."CIRCUIT_URL" ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}."LATITUDE" ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}."LONGITUDE" ;;
  }

  measure: count {
    type: count
    drill_fields: [dim_circuit_id, circuit_name]
  }
}
