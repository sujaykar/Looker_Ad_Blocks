connection: "redshift"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

datagroup: marketing_adword_fb_insights_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: marketing_adword_fb_insights_default_datagroup
