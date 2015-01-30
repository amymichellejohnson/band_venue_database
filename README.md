BAND and VENUE DATABASE
==========

Creates a web app using Ruby to store at what venues bands have played. Allows user to enter in bands and venues and to use a checklist to choose where the bands have played form a list of venues. App uses the sinatra, sinatra-activerecord, and rake gems to manage the database connection and creation.

Database Setup
--------------
Install your gems:
```sh
$ gem install sinatra-activerecord
$ gem install rake
$ gem install pg
```
Run PostGres in a separate terminal window:
```sh
$ postgres
```
In another terminal window:
```sh
$ rake db:create
$ rake db:migrate
$ rake db:test:prepare
```

App Setup
----------

Assuming you have ruby installed. In the terminal:
```sh
$ gem install bundler
$ bundle
$ ruby app.rb
```

Go to http://localhost:4567 in your browser

Tests
-----

Testing the ruby methods can be done via rspec.

```sh
$ gem install rspec
$ rspec
```
Motivation
---------

This app was created to practice creating databases with active-record, to work with the many:many data relationship, and to practice callbacks and validations.

Known Bugs
----------
No known errors.

License
-------

MIT License, copyright 2015. Created by Amy Michelle Johnson.
