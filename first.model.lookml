- connection: nfldb

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards
- persist_for: 1 hour

- explore: agg_play
  joins:
    - join: drive
      foreign_key: play_id

    - join: play
      sql_on: ${agg_play.gsis_id} = ${play.gsis_id} and ${agg_play.play_id} = ${play.play_id} and ${agg_play.drive_id} = ${play.drive_id}
      
    - join: game
      foreign_key: gsis_ids
      
   


- explore: drive
  joins:
    - join: game
      foreign_key: gsis_id
    
    - join: team
      sql_on: ${drive.pos_team} = ${team.team_id} 
      
    - join: play
      sql_on: ${drive.gsis_id} = ${play.gsis_id} and ${drive.drive_id} = ${play.drive_id}

- explore: game
  joins:
    - join: drive
      sql_on: ${game.gsis_id} = ${drive.gsis_id}

    - join: play
      foreign_key: gsis_id
      
    - join: play_player
      foreign_key: gsis_id
      
    - join: player
      sql_on: ${play_player.player_id} = ${player.player_id}
      

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
  joins:
    - join: player
      sql_on: ${team.team_id} = ${player.team} 

  

