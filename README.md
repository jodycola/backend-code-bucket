# Code-Bucket 
## Ruby on Rails

1. First `cd` into the directory containing the ruby files
2. Next run the server with the `rails s` command in the terminal
3. Last run `npm start` on the terminal for front-end part of this application


## Objective
Code-Bucket is an front-end web development environment built with Ruby on Rails and React with Hooks that allows users to experiment and practice different front-end web development techniques.

Features

* Use the **three** editors ( HTML, CSS, JavaScript ) to build entire projects and track the results immediately.
* Save project progress with a name and picture of it in its current state
* Load projects and pick up right where you left off.
* Toggle "Light" and "Dark" mode

## Structure

The Ruby on Rails back-end supports three models complete with MVC and serializers to direct the data flow clean and efficiently.

Users

The Users model stores the data related to the User. Their personal information and list of projects can be all accessed from here. The Users controller is responsible for finding a particular User and accurately managing the current state of the User.

Projects

The projects model stores data for each project. The controller relies on the id of itself as well as the Users id to properly display the projects that User has created or made progress on. The projects controller allows the user to save/update and load projects.

Collections

The collections model is where all the projects live. It would be used in the case of organzing multiple User Projects and serve as a way to connect a User to his/her Projects.
