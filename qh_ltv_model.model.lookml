# LTV Model
- connection: qh_vertica

- scoping: true                  # for backward compatibility
- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

- explore: ltv_base

- explore: ltv_activity
  joins:
    -  join: ltv_base
       foreign_key: consumer_id