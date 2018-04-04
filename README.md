# README

* This application uses Ruby version : 2.5.0, Rails version : 5.1.6, and Database: MySQL : 5.7.21 demonstrating basic CRUD operations on a resource named 'Terminal'.

* Steps to get the application up and running
1. Clone this repo
2. cd into this repo
3. bundle install  (installs the dependencies)
4. rake db:seed (optional - seeds the database with predefined values from file /db/seeds.rb)
5. rails server (This will start your WEBrick web server at port 3000. visit http://127.0.0.1:3000)

* How to run the test suite


* Application design, assumptions and constraints
1. Terminal database schema is simple - and has only one table with the following columns: id, name, description, and attrs (attributes). Name and attrs are required parameters, and name has constraint of minimum length 2 and maximum length 15.

2. /config/databse.yml file contains the database config params.

3. Each method defined in the Terminal controller has a corresponding erb file, with the same name as the method, to display the data that the method is collecting. (app/views/terminals)

4. /config/routes.db file contains -> resources :terminals

This generates seven RESTful routes in the application.

No. | HTTP Verb | URL | Controller | Action | Used for |
--| ------------- | ------------- | ------------- | ------------- | ------------- |
1. | GET  | /terminals | Terminal | index | Content Cell  |
2. | GET  | /terminals/new | Terminal | new | Content Cell  |
3. | POST | /terminals | Terminal  | create | Content Cell  |
4. | GET  | /terminals/1 | Terminal | show | Content Cell  |
5. | GET  | /terminals/1/edit | Terminal | edit | Content Cell  |
6. | PUT/PATCH  | /terminals/1 | Terminal | update | Content Cell  |
7. | DELETE  | /terminals/1 | Terminal | destroy | Content Cell  |
