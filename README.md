# Stak
Full-stack scaffolding CLI tool that allows a developer to get a RUNNING app with the exact frontend, backend, and database tooling they desire, that also runs in a unified environment. The learning curve is about 1 minute, and can save weeks of headaches by giving developers something that works from the start at a FULL-STACK level.

## Usage
```
jgolden5 ~ $ cd superCoolApp
jgolden5 ~/superCoolApp $ stak create

Which of the following will you use for your database?
1) MongoDB
2) MySQL
3) PostgreSQL
(response): 3

Great, and which backend will you use with your PostgreSQL database?
1) Java
2) Go
3) Node
(response): 1

Awesome, and finally, which frontend will you use with your Java backend and PostgreSQL database?
1) Angular.js
2) React.js
3) Vanilla (JS/CSS/HTML only)
4) Vue.js
(response): 3

Fantastic, building your full-stack app with Vanilla frontend, Java backend, and PostgreSQL database...
Your full-stack app is complete. Use `stak run -a` to run the entire app. See `stack -h` for more options
```

## MVP: Allow every combination of db, backend, and frontend options for the PoC tech stack (listed below) to have a basic functionality that RUNS and is FUNCTIONAL with some basic functionality defined in the steps below
### Prove:
* backend compiles
* database connects
* frontend loads
### Steps:
1. click frontend button
2. send HTTP GET request to backend
3. backend API returns something uber simple from the database
4. simple data gets printed to the screen on the frontend
5. ta-da! Full-stack app that runs. Let's start here then go from there

### Database Options
* MongoDB
* MySQL
* PostgreSQL
### Backend Options
* Java
* Node.js
* Python
### Frontend Options
* Angular
* React
* Vanilla (HTML/CSS/JS)

### Combinations (This will probably be the hard part)
```
1.  Mongo      + Java   + Angular
2.  Mongo      + Java   + React
3.  Mongo      + Java   + Vanilla
4.  Mongo      + Node   + Angular
5.  Mongo      + Python + Angular
6.  Mongo      + Node   + React
7.  Mongo      + Python + React
8.  Mongo      + Node   + Vanilla
9.  Mongo      + Python + Vanilla
10. MySQL      + Java   + Angular
11. MySQL      + Java   + React
12. MySQL      + Java   + Vanilla
13. MySQL      + Node   + Angular
14. MySQL      + Python + Angular
15. MySQL      + Node   + React
16. MySQL      + Python + React
17. MySQL      + Node   + Vanilla
18. MySQL      + Python + Vanilla
19. PostgreSQL + Java   + Angular
20. PostgreSQL + Java   + React
21. PostgreSQL + Java   + Vanilla
22. PostgreSQL + Node   + Angular
23. PostgreSQL + Python + Angular
24. PostgreSQL + Node   + React
25. PostgreSQL + Python + React
26. PostgreSQL + Node   + Vanilla
27. PostgreSQL + Python + Vanilla
```
