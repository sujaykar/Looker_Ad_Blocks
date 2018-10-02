view: facebook_insights {
  sql_table_name: facebookads.insights ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: ad_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.ad_id ;;
  }

  measure: call_to_action_clicks {
    type: sum
    sql: ${TABLE}.call_to_action_clicks ;;
    drill_fields: [campaigns.name, ads.name, call_to_action_clicks]
  }

  measure: clicks {
    type: sum
    sql: ${TABLE}.clicks ;;
    drill_fields: [campaigns.name, ads.name, clicks]
  }

  dimension_group: date_start {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.date_start ;;
  }

  dimension_group: date_stop {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.date_stop ;;
  }

  measure: deeplink_clicks {
    type: sum
    sql: ${TABLE}.deeplink_clicks ;;
    drill_fields: [campaigns.name, ads.name, deeplink_clicks]
  }

  dimension: frequency {
    type: number
    sql: ${TABLE}.frequency ;;
  }

  measure: average_frequency {
    type: average
    sql: ${frequency} ;;
    value_format_name: decimal_1
    drill_fields: [campaigns.name, ads.name, average_frequency]
  }

  measure: impressions {
    type: sum
    sql: ${TABLE}.impressions ;;
    drill_fields: [campaigns.name, ads.name, impressions]
  }

  measure: inline_post_engagements {
    type: sum
    sql: ${TABLE}.inline_post_engagements ;;
  }

  measure: link_clicks {
    type: sum
    sql: ${TABLE}.link_clicks ;;
    drill_fields: [campaigns.name, ads.name, link_clicks]
  }

  measure: newsfeed_clicks {
    type: sum
    sql: ${TABLE}.newsfeed_clicks ;;
    drill_fields: [campaigns.name, ads.name, newsfeed_clicks]
  }

  measure: newsfeed_impressions {
    type: sum
    sql: ${TABLE}.newsfeed_impressions ;;
    drill_fields: [campaigns.name, ads.name, newsfeed_impressions]
  }

  measure: New_Subscriptions {
    type: sum
    sql: ${TABLE}.actions_default_offsite_conversion_custom_1884496891815231 ;;
    drill_fields: [campaigns.name, ads.name, New_Subscriptions ]
  }

  measure: Total_Conversions {
    type: number
    sql: sum(case
          when ${facebook_ad_accounts.name} = 'Remarketing - FabFitFun' and ${facebook_campaigns.name} = 'Lift (Preview) - Select - Spring Edit 2018'
            then ${TABLE}.actions_default_offsite_conversion_custom_175465869773472 -- Added Edit to Cart - Standard
          when ${facebook_ad_accounts.name} = 'Remarketing - FabFitFun' and ${facebook_campaigns.name} in ('Upgrades - Non-Select - Spring Edit 2018','Upgrades - Select - Spring 2018')
            then ${TABLE}.actions_default_offsite_conversion_custom_326762647666474 -- Upgraded to Select
          when ${facebook_ad_accounts.name} = 'Remarketing - FabFitFun' and ${facebook_campaigns.name} = 'Reactivations - Spring 2018'
            then ${TABLE}.actions_default_offsite_conversion_custom_665711980253841 -- Reactivated
          when ${facebook_ad_accounts.name} = 'Remarketing - FabFitFun' and ${facebook_campaigns.name} = 'New Year, New You Capsule Collection - Dec/Jan 2017'
            then ${TABLE}.actions_default_offsite_conversion_custom_808225602693187 -- Shop Purchase
          when ${facebook_ad_accounts.name} = 'Remarketing - FabFitFun' and ${facebook_campaigns.name} like 'SP - 2018 - E-Gift Cards - Prospecting - Mother%'
            then ${TABLE}.actions_default_offsite_conversion_custom_428874907488437 -- Gift Card Purchase
          --else ${TABLE}.actions_default_offsite_conversion_custom_1235449819798490 -- New Sub
          else ${TABLE}.actions_default_offsite_conversion_custom_1884496891815231 -- New Sub All
            end
            ) ;;
    drill_fields: [campaigns.name, ads.name, Total_Conversions ]
  }

  measure: Total_Upgraded_to_Select {
    type: sum
    sql: ${TABLE}.actions_default_offsite_conversion_custom_326762647666474 ;;
    drill_fields: [campaigns.name, ads.name, Total_Upgraded_to_Select ]
  }

  measure: Cost_Per_Upgraded_to_Select {
    type: sum
    sql: ${TABLE}.actions_default_offsite_conversion_custom_326762647666474/NULLIF(${TABLE}.spend,0) ;;
    value_format_name: usd
    drill_fields: [campaigns.name, ads.name, Total_Upgraded_to_Select ]
  }

  measure: Total_Added_Edit_to_Cart_Standard {
    type: sum
    sql: ${TABLE}.actions_default_offsite_conversion_custom_175465869773472 ;;
    drill_fields: [campaigns.name, ads.name, Total_Added_Edit_to_Cart_Standard ]
  }

  measure: Cost_Per_Added_Edit_to_Cart_Standard {
    type: sum
    sql: ${TABLE}.actions_default_offsite_conversion_custom_175465869773472/NULLIF(${TABLE}.spend,0) ;;
    value_format_name: usd
    drill_fields: [campaigns.name, ads.name, Total_Added_Edit_to_Cart_Standard ]
  }

  measure: Total_Reactivated {
    type: sum
    sql: ${TABLE}.actions_default_offsite_conversion_custom_665711980253841 ;;
    drill_fields: [campaigns.name, ads.name, Total_Reactivated ]
  }

  measure: Cost_Per_Reactivated {
    type: sum
    sql: ${TABLE}.actions_default_offsite_conversion_custom_665711980253841/NULLIF(${TABLE}.spend,0) ;;
    value_format_name: usd
    drill_fields: [campaigns.name, ads.name, Total_Added_Edit_to_Cart_Standard ]
  }


  measure: reach {
    type: sum
    sql: ${TABLE}.reach ;;
    drill_fields: [campaigns.name, ads.name, reach]
  }

  dimension_group: received {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.received_at ;;
  }

  measure: social_clicks {
    type: sum
    sql: ${TABLE}.social_clicks ;;
    drill_fields: [campaigns.name, ads.name, social_clicks]
  }

  measure: social_impressions {
    type: sum
    sql: ${TABLE}.social_impressions ;;
    drill_fields: [campaigns.name, ads.name, social_impressions]
  }

  measure: social_spend {
    type: sum
    sql: ${TABLE}.social_spend ;;
  }

  measure: spend {
    type: sum
    sql: ${TABLE}.spend ;;
    value_format_name: usd
    drill_fields: [campaigns.name, ads.name, spend]
  }

  measure: unique_clicks {
    type: sum
    sql: ${TABLE}.unique_clicks ;;
    drill_fields: [campaigns.name, ads.name, unique_clicks]
  }

  measure: unique_impressions {
    type: sum
    sql: ${TABLE}.unique_impressions ;;
    drill_fields: [campaigns.name, ads.name, unique_impressions]
  }

  measure: unique_social_clicks {
    type: sum
    sql: ${TABLE}.unique_social_clicks ;;
    drill_fields: [campaigns.name, ads.name, unique_social_clicks]
  }

  dimension_group: uuid_ts {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.uuid_ts ;;
  }

  measure: website_clicks {
    type: sum
    sql: ${TABLE}.website_clicks ;;
    drill_fields: [campaigns.name, ads.name, website_clicks]
  }

  measure: cost_per_click {
    label: "CPC"
    type: number
    sql: ${spend}/NULLIF(${clicks},0) ;;
    value_format_name: usd
    drill_fields: [campaigns.name, ads.name, cost_per_click]
  }

  measure: CPA {
    label: "CPA"
    type: number
    sql: ${spend}/NULLIF(${New_Subscriptions},0);;
    value_format_name: usd
    drill_fields: [campaigns.name, ads.name, CPA]
  }

  measure: CPM {
    label: "CPM"
    type: number
    sql: ${spend}/NULLIF(${impressions},0)*1000;;
    value_format_name: usd
    drill_fields: [campaigns.name, ads.name, CPM]
  }

  measure: cost_per_conversion {
    label: "Cost per Conversion"
    type: number
    sql: ${spend}/NULLIF(sum(case
          when ${facebook_ad_accounts.name} = 'Remarketing - FabFitFun' and ${facebook_campaigns.name} = 'Lift (Preview) - Select - Spring Edit 2018'
            then ${TABLE}.actions_default_offsite_conversion_custom_175465869773472 -- Added Edit to Cart - Standard
          when ${facebook_ad_accounts.name} = 'Remarketing - FabFitFun' and ${facebook_campaigns.name} in ('Upgrades - Non-Select - Spring Edit 2018','Upgrades - Select - Spring 2018')
            then ${TABLE}.actions_default_offsite_conversion_custom_326762647666474 -- Upgraded to Select
          when ${facebook_ad_accounts.name} = 'Remarketing - FabFitFun' and ${facebook_campaigns.name} = 'Reactivations - Spring 2018'
            then ${TABLE}.actions_default_offsite_conversion_custom_665711980253841 -- Reactivated
          when ${facebook_ad_accounts.name} = 'Remarketing - FabFitFun' and ${facebook_campaigns.name} = 'New Year, New You Capsule Collection - Dec/Jan 2017'
            then ${TABLE}.actions_default_offsite_conversion_custom_808225602693187 -- Shop Purchase
          when ${facebook_ad_accounts.name} = 'Remarketing - FabFitFun' and ${facebook_campaigns.name} like 'SP - 2018 - E-Gift Cards - Prospecting - Mother%'
            then ${TABLE}.actions_default_offsite_conversion_custom_428874907488437 -- Gift Card Purchase
          --else ${TABLE}.actions_default_offsite_conversion_custom_1235449819798490 -- New Sub
          else ${TABLE}.actions_default_offsite_conversion_custom_1884496891815231 -- New Sub All
            end
            )
          ,0);;
    value_format_name: usd
    drill_fields: [campaigns.name, ads.name, cost_per_conversion]
  }

  measure: CTC {
    label: "CTC"
    type: number
    sql: NULLIF(sum(case
          when ${facebook_ad_accounts.name} = 'Remarketing - FabFitFun' and ${facebook_campaigns.name} = 'Lift (Preview) - Select - Spring Edit 2018'
            then ${TABLE}.actions_default_offsite_conversion_custom_175465869773472 -- Added Edit to Cart - Standard
          when ${facebook_ad_accounts.name} = 'Remarketing - FabFitFun' and ${facebook_campaigns.name} in ('Upgrades - Non-Select - Spring Edit 2018','Upgrades - Select - Spring 2018')
            then ${TABLE}.actions_default_offsite_conversion_custom_326762647666474 -- Upgraded to Select
          when ${facebook_ad_accounts.name} = 'Remarketing - FabFitFun' and ${facebook_campaigns.name} = 'Reactivations - Spring 2018'
            then ${TABLE}.actions_default_offsite_conversion_custom_665711980253841 -- Reactivated
          when ${facebook_ad_accounts.name} = 'Remarketing - FabFitFun' and ${facebook_campaigns.name} = 'New Year, New You Capsule Collection - Dec/Jan 2017'
            then ${TABLE}.actions_default_offsite_conversion_custom_808225602693187 -- Shop Purchase
          when ${facebook_ad_accounts.name} = 'Remarketing - FabFitFun' and ${facebook_campaigns.name} like 'SP - 2018 - E-Gift Cards - Prospecting - Mother%'
            then ${TABLE}.actions_default_offsite_conversion_custom_428874907488437 -- Gift Card Purchase
          --else ${TABLE}.actions_default_offsite_conversion_custom_1235449819798490 -- New Sub
          else ${TABLE}.actions_default_offsite_conversion_custom_1884496891815231 -- New Sub All
            end
            )
          ,0)/${clicks};;
    value_format_name: percent_1
    drill_fields: [campaigns.name, ads.name, CTC]
  }

  measure: ITC {
    label: "ITC"
    type: number
    sql: NULLIF(sum(case
          when ${facebook_ad_accounts.name} = 'Remarketing - FabFitFun' and ${facebook_campaigns.name} = 'Lift (Preview) - Select - Spring Edit 2018'
            then ${TABLE}.actions_default_offsite_conversion_custom_175465869773472 -- Added Edit to Cart - Standard
          when ${facebook_ad_accounts.name} = 'Remarketing - FabFitFun' and ${facebook_campaigns.name} in ('Upgrades - Non-Select - Spring Edit 2018','Upgrades - Select - Spring 2018')
            then ${TABLE}.actions_default_offsite_conversion_custom_326762647666474 -- Upgraded to Select
          when ${facebook_ad_accounts.name} = 'Remarketing - FabFitFun' and ${facebook_campaigns.name} = 'Reactivations - Spring 2018'
            then ${TABLE}.actions_default_offsite_conversion_custom_665711980253841 -- Reactivated
          when ${facebook_ad_accounts.name} = 'Remarketing - FabFitFun' and ${facebook_campaigns.name} = 'New Year, New You Capsule Collection - Dec/Jan 2017'
            then ${TABLE}.actions_default_offsite_conversion_custom_808225602693187 -- Shop Purchase
          when ${facebook_ad_accounts.name} = 'Remarketing - FabFitFun' and ${facebook_campaigns.name} like 'SP - 2018 - E-Gift Cards - Prospecting - Mother%'
            then ${TABLE}.actions_default_offsite_conversion_custom_428874907488437 -- Gift Card Purchase
          --else ${TABLE}.actions_default_offsite_conversion_custom_1235449819798490 -- New Sub
          else ${TABLE}.actions_default_offsite_conversion_custom_1884496891815231 -- New Sub All
            end
            )
          ,0)/${impressions}*1000;;
    value_format_name: percent_1
    drill_fields: [campaigns.name, ads.name, CTC]
  }

  measure: CTR {
    label: "CTR"
    type: number
    sql: ${clicks}/NULLIF(${impressions},0) ;;
    value_format_name: percent_1
    drill_fields: [campaigns.name, ads.name, CTR]
  }
}
