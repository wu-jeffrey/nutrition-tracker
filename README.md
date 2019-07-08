# README

Macronutrient and calorie tracker to help me get familiar with Rails
---
See here: https://serene-retreat-25036.herokuapp.com/

## Versions
* Ruby 2.3.3
* Rails 4.1.16
* Heroku-16 stack

## Setup
1. Clone repo
2. Install Dependencies 
  `bundle install`
3. Create DB
  `rake db:create db:migrate`

## Development
1. Start local rails server (default port 3000)
  `rails s` (optional specify port using `-p` flag, e.g. `rails s -p 3001` will use port 3001

## Deployment
1. Install Heroku-cli and login
2. Add heroku remote to repo 
   `heroku git:remote -a serene-retreat-25036`
3. Deploy changes
   'git push heroku master`
