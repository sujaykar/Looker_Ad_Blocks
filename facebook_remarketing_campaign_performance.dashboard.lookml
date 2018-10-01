- dashboard: facebook_remarketing_campaign_performance
  title: Facebook Remarketing Campaign Performance
  layout: newspaper
  elements:
  - title: Total Clicks (copy)
    name: Total Clicks (copy)
    model: facebook_ads
    explore: facebook_insights
    type: single_value
    fields:
    - facebook_insights.average_frequency
    limit: 500
    column_limit: 50
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    single_value_title: Average Frequency
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    listen:
      Ad Account: facebook_ad_accounts.name
      Campaign Name: facebook_campaigns.name
      Ad Sets: facebook_ad_sets.name
    row: 2
    col: 8
    width: 4
    height: 2
  - title: Total Spend
    name: Total Spend
    model: facebook_ads
    explore: facebook_insights
    type: single_value
    fields:
    - facebook_insights.spend
    limit: 500
    column_limit: 50
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    single_value_title: Spend
    listen:
      Ad Account: facebook_ad_accounts.name
      Campaign Name: facebook_campaigns.name
      Ad Sets: facebook_ad_sets.name
    row: 0
    col: 0
    width: 4
    height: 2
  - title: Total Clicks
    name: Total Clicks
    model: facebook_ads
    explore: facebook_insights
    type: single_value
    fields:
    - facebook_insights.link_clicks
    limit: 500
    column_limit: 50
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    single_value_title: Link Clicks
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    listen:
      Ad Account: facebook_ad_accounts.name
      Campaign Name: facebook_campaigns.name
      Ad Sets: facebook_ad_sets.name
    row: 2
    col: 0
    width: 4
    height: 2
  - title: Cost per Click (copy 2)
    name: Cost per Click (copy 2)
    model: facebook_ads
    explore: facebook_insights
    type: single_value
    fields:
    - facebook_insights.CTR
    limit: 500
    column_limit: 50
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    single_value_title: CTR
    listen:
      Ad Account: facebook_ad_accounts.name
      Campaign Name: facebook_campaigns.name
      Ad Sets: facebook_ad_sets.name
    row: 0
    col: 12
    width: 6
    height: 2
  - title: Total Impressions
    name: Total Impressions
    model: facebook_ads
    explore: facebook_insights
    type: single_value
    fields:
    - facebook_insights.impressions
    limit: 500
    column_limit: 50
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    single_value_title: Impressions
    listen:
      Ad Account: facebook_ad_accounts.name
      Campaign Name: facebook_campaigns.name
      Ad Sets: facebook_ad_sets.name
    row: 0
    col: 4
    width: 4
    height: 2
  - title: Cost per Click
    name: Cost per Click
    model: facebook_ads
    explore: facebook_insights
    type: single_value
    fields:
    - facebook_insights.cost_per_click
    limit: 500
    column_limit: 50
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    single_value_title: CPC
    listen:
      Ad Account: facebook_ad_accounts.name
      Campaign Name: facebook_campaigns.name
      Ad Sets: facebook_ad_sets.name
    row: 2
    col: 4
    width: 4
    height: 2
  - title: Cost per Click (copy)
    name: Cost per Click (copy)
    model: facebook_ads
    explore: facebook_insights
    type: single_value
    fields:
    - facebook_insights.reach
    limit: 500
    column_limit: 50
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    single_value_title: Reach
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    listen:
      Ad Account: facebook_ad_accounts.name
      Campaign Name: facebook_campaigns.name
      Ad Sets: facebook_ad_sets.name
    row: 0
    col: 8
    width: 4
    height: 2
  - title: Cost per Click (copy 3)
    name: Cost per Click (copy 3)
    model: facebook_ads
    explore: facebook_insights
    type: single_value
    fields:
    - facebook_insights.unique_clicks
    limit: 500
    column_limit: 50
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    single_value_title: Unique Clicks
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    listen:
      Ad Account: facebook_ad_accounts.name
      Campaign Name: facebook_campaigns.name
      Ad Sets: facebook_ad_sets.name
    row: 2
    col: 14
    width: 6
    height: 2
  - title: Campaign Overview
    name: Campaign Overview
    model: facebook_ads
    explore: facebook_insights
    type: looker_line
    fields:
    - facebook_insights.spend
    - facebook_insights.date_start_date
    - facebook_insights.impressions
    - facebook_insights.cost_per_click
    - facebook_insights.reach
    - facebook_insights.CTR
    - facebook_insights.unique_clicks
    - facebook_insights.average_frequency
    filters:
      facebook_insights.date_start_date: 30 days
      facebook_insights.spend: NOT NULL
    sorts:
    - facebook_insights.date_start_date
    limit: 5000
    column_limit: 50
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    point_style: none
    series_types: {}
    limit_displayed_rows: false
    hidden_series: []
    y_axes:
    - label:
      orientation: left
      series:
      - id: facebook_insights.CPA
        name: Cpa
        axisId: facebook_insights.CPA
      showLabels: true
      showValues: true
      maxValue:
      minValue:
      valueFormat: ''
      unpinAxis: false
      tickDensity: default
      tickDensityCustom:
      type: linear
    - label:
      orientation: right
      series:
      - id: facebook_insights.spend
        name: Spend
        axisId: facebook_insights.spend
      showLabels: true
      showValues: true
      maxValue:
      minValue:
      valueFormat: ''
      unpinAxis: false
      tickDensity: default
      tickDensityCustom:
      type: linear
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    x_axis_label: Date Start
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    x_axis_label_rotation: -36
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    listen:
      Ad Account: facebook_ad_accounts.name
      Campaign Name: facebook_campaigns.name
      Ad Sets: facebook_ad_sets.name
    row: 16
    col: 0
    width: 18
    height: 8
  - title: Spend
    name: Spend
    model: facebook_ads
    explore: facebook_insights
    type: looker_column
    fields:
    - facebook_insights.spend
    - facebook_insights.date_start_date
    filters:
      facebook_insights.date_start_date: 30 days
      facebook_insights.spend: NOT NULL
    sorts:
    - facebook_insights.date_start_date
    limit: 5000
    column_limit: 50
    stacking: normal
    show_value_labels: false
    label_density: 25
    legend_position: center
    hide_legend: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    point_style: none
    series_types: {}
    limit_displayed_rows: false
    hidden_series: []
    y_axes:
    - label:
      orientation: left
      series:
      - id: facebook_insights.CPA
        name: Cpa
        axisId: facebook_insights.CPA
      showLabels: true
      showValues: true
      maxValue:
      minValue:
      valueFormat: ''
      unpinAxis: false
      tickDensity: default
      tickDensityCustom:
      type: linear
    - label:
      orientation: right
      series:
      - id: facebook_insights.spend
        name: Spend
        axisId: facebook_insights.spend
      showLabels: true
      showValues: true
      maxValue:
      minValue:
      valueFormat: ''
      unpinAxis: false
      tickDensity: default
      tickDensityCustom:
      type: linear
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    x_axis_label: Date Start
    show_x_axis_ticks: true
    x_axis_scale: ordinal
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    x_axis_label_rotation: -36
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    listen:
      Ad Account: facebook_ad_accounts.name
      Campaign Name: facebook_campaigns.name
      Ad Sets: facebook_ad_sets.name
    row: 4
    col: 0
    width: 7
    height: 6
  - title: Impressions
    name: Impressions
    model: facebook_ads
    explore: facebook_insights
    type: looker_column
    fields:
    - facebook_insights.date_start_date
    - facebook_insights.impressions
    filters:
      facebook_insights.date_start_date: 30 days
      facebook_insights.spend: NOT NULL
    sorts:
    - facebook_insights.date_start_date
    limit: 5000
    column_limit: 50
    stacking: normal
    colors:
    - "#8dd3c7"
    - "#ffed6f"
    - "#bebada"
    - "#fb8072"
    - "#80b1d3"
    - "#fdb462"
    - "#b3de69"
    - "#fccde5"
    - "#d9d9d9"
    - "#bc80bd"
    - "#ccebc5"
    - "#a3a3ff"
    show_value_labels: false
    label_density: 25
    legend_position: center
    hide_legend: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    point_style: none
    series_colors: {}
    series_types: {}
    limit_displayed_rows: false
    hidden_series: []
    y_axes:
    - label:
      orientation: left
      series:
      - id: facebook_insights.CPA
        name: Cpa
        axisId: facebook_insights.CPA
      showLabels: true
      showValues: true
      maxValue:
      minValue:
      valueFormat: ''
      unpinAxis: false
      tickDensity: default
      tickDensityCustom:
      type: linear
    - label:
      orientation: right
      series:
      - id: facebook_insights.spend
        name: Spend
        axisId: facebook_insights.spend
      showLabels: true
      showValues: true
      maxValue:
      minValue:
      valueFormat: ''
      unpinAxis: false
      tickDensity: default
      tickDensityCustom:
      type: linear
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    x_axis_label: Date Start
    show_x_axis_ticks: true
    x_axis_scale: ordinal
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    x_axis_label_rotation: -36
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    listen:
      Ad Account: facebook_ad_accounts.name
      Campaign Name: facebook_campaigns.name
      Ad Sets: facebook_ad_sets.name
    row: 10
    col: 0
    width: 7
    height: 6
  - title: Spend (copy)
    name: Spend (copy)
    model: facebook_ads
    explore: facebook_insights
    type: looker_column
    fields:
    - facebook_insights.spend
    - facebook_insights.date_start_date
    - facebook_ad_sets.name
    filters:
      facebook_insights.date_start_date: 30 days
      facebook_insights.spend: NOT NULL
    sorts:
    - facebook_insights.date_start_date
    limit: 5000
    column_limit: 50
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    hide_legend: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    point_style: none
    series_types: {}
    limit_displayed_rows: false
    hidden_series: []
    y_axes:
    - label:
      orientation: left
      series:
      - id: facebook_insights.CPA
        name: Cpa
        axisId: facebook_insights.CPA
      showLabels: true
      showValues: true
      maxValue:
      minValue:
      valueFormat: ''
      unpinAxis: false
      tickDensity: default
      tickDensityCustom:
      type: linear
    - label:
      orientation: right
      series:
      - id: facebook_insights.spend
        name: Spend
        axisId: facebook_insights.spend
      showLabels: true
      showValues: true
      maxValue:
      minValue:
      valueFormat: ''
      unpinAxis: false
      tickDensity: default
      tickDensityCustom:
      type: linear
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    x_axis_label: Date Start
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    x_axis_label_rotation: -36
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    listen:
      Ad Account: facebook_ad_accounts.name
      Campaign Name: facebook_campaigns.name
      Ad Sets: facebook_ad_sets.name
    row: 4
    col: 7
    width: 7
    height: 6
  filters:
  - name: Ad Account
    title: Ad Account
    type: field_filter
    default_value: Remarketing - FabFitFun
    allow_multiple_values: true
    required: false
    model: facebook_ads
    explore: facebook_ads
    listens_to_filters: []
    field: facebook_ad_accounts.name
  - name: Campaign Name
    title: Campaign Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: facebook_ads
    explore: facebook_ads
    listens_to_filters:
    - Ad Account
    field: facebook_campaigns.name
  - name: Ad Sets
    title: Ad Sets
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: facebook_ads
    explore: facebook_ads
    listens_to_filters:
    - Ad Account
    - Campaign Name
    field: facebook_ad_sets.name
