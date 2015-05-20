- connection: nfldb

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

- explore: agg_play
  joins:
    - join: drive
      foreign_key: play_id

    - join: play
      sql_on: ${agg_play.gsis_id} = ${play.gsis_id} and ${agg_play.play_id} = ${play.play_id} and ${agg_play.drive_id} = ${play.drive_id}
      
    - join: game
      foreign_key: gsis_id
      
   


- explore: drive

- explore: game
  joins:
    - join: drive
      sql_on: ${game.gsis_id} = ${drive.gsis_id}

    - join: play
      foreign_key: gsis_id
      

- explore: meta

- explore: play
  joins:
    - join: drive
      foreign_key: drive_id
      
    - join: play_player
      foreign_key: player_id


- explore: play_player
  label: Player Stats
  joins:
    - join: drive
      foreign_key: drive_id

    - join: play
      foreign_key: play_id

    - join: player
      foreign_key: player_id

    - join: game
      foreign_key: gsis_id


- explore: player

- explore: team

  

