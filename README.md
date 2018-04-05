# README

* This application uses Ruby version : 2.5.0, Rails version : 5.1.6, and Database: MySQL : 5.7.21. It demonstrates basic CRUD operations on a resource named 'Terminal'.

* Steps to get the application up and running (This works on MacOs 10.13 High Sierra)
1. Clone this repo
2. cd into this repo
3. bundle install  (installs all dependencies from Gemfile)
4. rake db:migrate RAILS_ENV=development
5. rake db:seed (optional - seeds the database with predefined values from file /db/seeds.rb)
6. rails server (This will start your WEBrick web server at port 3000. visit http://127.0.0.1:3000)

* How to run the test suite


* Application design, assumptions and constraints
1. Terminal database schema is simple - and has only one table with the following columns: id, name, description, and attrs (attributes). Name and attrs are required parameters, and name has constraint of minimum length 2 and maximum length 15.

2. By default, every Rails application and hence this one too has three environments: development, test, and production. The database for each one of them is configured in config/database.yml.

3. Each method defined in the Terminal controller has a corresponding erb file, with the same name as the method, to display the data that the method is collecting. (app/views/terminals)

4. /config/routes.db file contains -> resources :terminals

This generates seven RESTful routes in the application.


| No. | HTTP Verb | URL | Controller | Action | Used for |
| --- | ------------- | ------------- | ------------- | ------------- | ------------- |
| 1. | GET  | /terminals | Terminal | index | display a list of all terminals  |
| 2. | GET  | /terminals/new | Terminal | new | return an HTML form for creating a new terminal  |
| 3. | POST | /terminals | Terminal  | create | create a new terminal  |
| 4. | GET  | /terminals/1 | Terminal | show | display a specific terminal  |
| 5. | GET  | /terminals/1/edit | Terminal | edit | return an HTML form for editing a terminal  |
| 6. | PUT/PATCH  | /terminals/1 | Terminal | update | update a specific terminal  |
| 7. | DELETE  | /terminals/1 | Terminal | destroy | delete a specific terminal  |
