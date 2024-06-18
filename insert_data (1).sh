#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
echo $($PSQL "TRUNCATE teams, games")
cat  games.csv | while IFS=',' read YEAR  ROUND  WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS  
do
  if [[ $WINNER != 'winner' ]]
  then
  NAME=$($PSQL "SELECT name FROM teams WHERE name = '$WINNER'")
  if [[ -z $NAME ]]
  then
  INSERT_WINNER_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
  if [[ $INSERT_WINNER_RESULT == "INSERT 0 1" ]]
      then
        echo Inserted into teams, $WINNER
      fi
  fi
  fi
  if [[ $OPPONENT != 'opponent' ]]
  then
  FAME=$($PSQL "SELECT name FROM teams WHERE name = '$OPPONENT'")
  if [[ -z $FAME ]]
  then
  INSERT_OPPONENT=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
  if [[ $INSERT_OPPONENT == "INSERT 0 1" ]]
      then
        echo Inserted into teams, $OPPONENT
      fi
  fi
  fi
done

cat games.csv | while IFS="," read YEAR  ROUND  WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
if [[ $YEAR != year ]]
then
WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
INSERT_YEAR=$($PSQL "INSERT INTO games(year, round, winner_goals, opponent_goals, winner_id, opponent_id) VALUES($YEAR, '$ROUND', $WINNER_GOALS, $OPPONENT_GOALS, $WINNER_ID, $OPPONENT_ID)")
if [[ $INSERT_OPPONENT == "INSERT 0 1" ]]
      then
        echo Inserted into games, $YEAR $ROUND $WINNER_GOALS $OPPONENT_GOALS
      fi
fi
done