view: dim_drivers {
  sql_table_name: "DBT_HIMANSHUGOEL"."DIM_DRIVERS"
    ;;

  dimension_group: date_of_birth {
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
    sql: ${TABLE}."DATE_OF_BIRTH" ;;
  }

  dimension: driver_code {
    type: string
    sql: ${TABLE}."DRIVER_CODE" ;;
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
    type: string
    sql: ${TABLE}."DRIVER_NUMBER" ;;
  }

  dimension: driver_ref {
    type: string
    sql: ${TABLE}."DRIVER_REF" ;;
  }

  dimension: forename {
    type: string
    sql: ${TABLE}."FORENAME" ;;
  }

  dimension: surname {
    type: string
    sql: ${TABLE}."SURNAME" ;;
  }

  measure: count {
    type: count
    drill_fields: [forename, surname]
  }
}
