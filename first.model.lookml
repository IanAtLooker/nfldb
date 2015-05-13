- connection: nfldb

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

- explore: agg_play
  joins:
    - join: drive
      foreign_key: drive_id

    - join: play
      foreign_key: play_id


- explore: drive

- explore: game

- explore: meta

- explore: play
  joins:
    - join: drive
      foreign_key: drive_id


- explore: play_player
  joins:
    - join: drive
      foreign_key: drive_id

    - join: play
      foreign_key: play_id

    - join: player
      foreign_key: player_id


- explore: player

- explore: team

