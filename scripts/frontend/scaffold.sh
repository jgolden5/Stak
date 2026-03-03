frontend_choice="$1"

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
