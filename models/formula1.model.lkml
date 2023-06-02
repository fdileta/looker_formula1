connection: "snowflake_bitgo"

# include all the views
include: "/views/**/*.view"

datagroup: bitgo_poc_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: bitgo_poc_default_datagroup

explore: dim_circuits {}

explore: dim_constructors {}

explore: dim_drivers {}

explore: dim_races {}

explore: dim_seasons {}

explore: dim_status {}

explore: fct_constructor_results {}

explore: fct_constructor_standings {}

explore: fct_driver_standings {}

explore: fct_lap_times {}

explore: fct_pit_stops {}

explore: fct_qualifying {}

explore: fct_results {}

explore: fct_results_agg {}

explore: fct_sprint_results {}
