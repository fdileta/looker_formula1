view: dim_seasons {
  sql_table_name: "DBT_HIMANSHUGOEL"."DIM_SEASONS"
    ;;

  dimension: season_url {
    type: string
    sql: ${TABLE}."SEASON_URL" ;;
  }

  dimension: season_year {
    type: number
    sql: ${TABLE}."SEASON_YEAR" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
