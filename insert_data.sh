#! /bin/bash

# Check if the first argument is "test" to determine the database connection
if [[ $1 == "test" ]]; then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Truncate the tables (you might want to remove this if you don't want to delete all data)
echo "Truncating tables..."
$PSQL "TRUNCATE TABLE games, teams"

# Read data from games.csv and insert into the database
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNERGOALS OPPONENTGOALS; do
  # Skip the header row in the CSV file
  if [[ $YEAR != "year" ]]; then

    # Get the team_id of the winner and opponent from the teams table
    WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
    OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")

    # If the opponent doesn't exist in the teams table, insert it
    if [[ -z $OPPONENT_ID ]]; then
      INSERT_TEAM_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
      if [[ $INSERT_TEAM_RESULT == "INSERT 0 1" ]]; then
        echo "Inserted into teams, $OPPONENT"
      fi
    fi

    # If the winner doesn't exist in the teams table, insert it
    if [[ -z $WINNER_ID ]]; then
      INSERT_TEAM_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
      if [[ $INSERT_TEAM_RESULT == "INSERT 0 1" ]]; then
        echo "Inserted into teams, $WINNER"
      fi
    fi

    # Get the team_id again after potential insertion
    WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
    OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")

    # Insert the game data into the games table
    INSERT_DATA_RESULT=$($PSQL "INSERT INTO games(year,round,winner_id,opponent_id,winner_goals,opponent_goals) VALUES('$YEAR','$ROUND','$WINNER_ID','$OPPONENT_ID','$WINNERGOALS','$OPPONENTGOALS')")
    if [[ $INSERT_DATA_RESULT == "INSERT 0 1" ]]; then
      echo "Inserted into games, $WINNER vs $OPPONENT in $YEAR"
    fi
  fi
done
