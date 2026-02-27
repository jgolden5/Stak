#!/bin/bash

stak() {
  if [[ "$1" == 'create' ]]; then
    create_stak
  else
    echo "command \"$1\" not recognized"
  fi
}

create_stak() {
  echo "Which of the following will you use for your database?"
  echo "1) MongoDB"
  echo "2) MySQL"
  echo "3) PostgreSQL"

  read -n1 -p "(response): " db_selection
  echo

  db_choice=
  case $db_selection in
    1)
      db_choice="MongoDB"
      ;;
    2)
      db_choice="MySQL"
      ;;
    3)
      db_choice="PostgreSQL"
      ;;
  esac

  echo "Great, and which backend will you use with your $db_choice database?"
  echo "1) Java"
  echo "2) Go"
  echo "3) Node"

  read -n1 -p "(response): " backend_selection
  echo

  backend_choice=
  case $backend_selection in
    1)
      backend_choice="Java"
      ;;
    2)
      backend_choice="Go"
      ;;
    3)
      backend_choice="Node"
      ;;
  esac

  echo "Awesome, and finally, which frontend will you use with your $backend_choice backend and $db_choice database?"
  echo "1) Angular.js"
  echo "2) React.js"
  echo "3) Vanilla (JS/CSS/HTML only)"

  read -n1 -p "(response): " frontend_selection
  echo

  frontend_choice=
  case $frontend_selection in
    1)
      frontend_choice="Angular"
      ;;
    2)
      frontend_choice="React"
      ;;
    3)
      frontend_choice="Vanilla"
      ;;
  esac

  echo "Fantastic, building your full-stack app with $frontend_choice frontend, $backend_choice backend, and $db_choice database..."
  frontend_scaffolding
  echo "Your full-stack app is complete. Use 'stak run -a' to run the entire app. See 'stak -h' for more options"
}

frontend_scaffolding() {
  case $frontend_choice in
    "Vanilla")
      mkdir frontend/
      echo "
      <html>
      <body>
      <button id="messageButton">Get Message</button>
      <p id="message"></p>
      <script src="app.js"></script>
      </body>
      </html>" > frontend/index.html

      echo "
      document.getElementById(\"messageButton\").addEventListener(\"click\", function() {
        document.getElementById(\"message\").innerHTML = \"Button was pressed!\"
      });" > frontend/app.js

      touch frontend/app.js frontend/index.html
      ;;
    *)
      echo "frontend choice was not recognized"
      ;;
  esac
}
