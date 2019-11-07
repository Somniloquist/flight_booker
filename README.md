# Flight Booker
A mock flight booking app to practice advanced form building and nested attributes.

## Prerequisites
- ruby 2.6.3
- rails 5.2.3

## Gettings started
To get started, clone the repo and then install the needed gems:
```
bundle install --without production
```
migrate the database:
```
rails db:migrate
```
Reset the database. Seeding the db before reseting will result in 'no such table' error due to the way I set up migrations:
```
rails db:reset
```
Seed the database with test data
```
rails db:seed
```
start the server:
```
rails server
```

---
_This project is part of [The Odin Project](https://www.theodinproject.com/) curriculum. [Project link](https://www.theodinproject.com/courses/ruby-on-rails/lessons/building-advanced-forms)_
