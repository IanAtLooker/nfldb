- connection: weather

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

- explore: test

- explore: weather_dump
  access_filter_fields: [weather_dump.feelslike_f]
